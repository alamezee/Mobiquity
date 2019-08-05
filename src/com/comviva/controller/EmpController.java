package com.comviva.controller;   
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import com.comviva.dao.EmpDao;
import com.comviva.model.Emp;
  


/**
 *  EmpController Class 
 *	contains the business logic of an application.
 */

@Controller  
public class EmpController {  
    @Autowired  
    EmpDao dao; 
        
    /**
     * It displays a form to input data, here "command" is a reserved request attribute  
     * which is used to display object data into form  
     */    
    
    @RequestMapping("/empform")  
    public String showform(Model m){  
    	m.addAttribute("command", new Emp());
    	return "empform"; 
    }    
    
    /**
     * It displays a form to register/create new user
     * @param m
     * @return
     */
    
    @RequestMapping("/registernewform")  
    public String newform(Model m){  
    	m.addAttribute("command", new Emp());
    	return "registernewform"; 
    }
    
    /**
     * It redirects to User's Norification Inbox after successful username 
     * and password validation and verifictaion.
     * @param m it puts request data into model object
     * @return 
     */
    
    @RequestMapping("/success")  
    public String success(Model m){  
    	m.addAttribute("command", new Emp());
    	return "success"; 
    }
    
    
    /**
     * It registers new Channel User into system database
     * @param emp It is the Model of User Information added in the form for insertion into database.
     * @return String path of JSP page to be loaded after success.
     * @throws Exception
     */
    
    
    @RequestMapping(value="newreg",method = RequestMethod.POST)  
    public String newreg(@ModelAttribute("emp") Emp emp, Model m) throws Exception
    {
    	int pp = dao.find(emp.getName());
    	if(pp==1) {
    		int pop=1;
    		m.addAttribute("pop",pop);
    		return "redirect:/empform/registernewform";
    	}
    	else {
    		dao.newreg(emp);
        	return "redirect:/save/viewnotf";
    	}
    	
    }

    /** 
     *  It saves object into database. The @ModelAttribute puts request data  
     *  into model object.RequestMethod.POST method is mentioned   
     *  because default request is GET
     */
    
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("emp") Emp emp, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
		
		 HttpSession session=request.getSession();
    	List<Emp> list=dao.getEmployees(emp); 
        if(list.isEmpty())
        {
        return "failure"; 
        }
        else
        {
        return "redirect:/save/viewnotf";
        }
    } 
}  