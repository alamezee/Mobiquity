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
  
  
@Controller  
public class EmpController {  
	//String pop="";
    @Autowired  
    EmpDao dao; 
        
    @RequestMapping("/empform")  
    public String showform(Model m){  
    	m.addAttribute("command", new Emp());
    	return "empform"; 
    }    
    
    @RequestMapping("/registernewform")  
    public String newform(Model m){  
    	m.addAttribute("command", new Emp());
    	return "registernewform"; 
    }
    @RequestMapping("/success")  
    public String success(Model m){  
    	m.addAttribute("command", new Emp());
    	return "success"; 
    }
    
    @RequestMapping(value="newreg",method = RequestMethod.POST)  
    public String newreg(@ModelAttribute("emp") Emp emp, Model m) throws Exception
    {
    	if(dao.find(emp.getName())==1) {
//    		String pop = "Username already exists";
    		int pop=1;
    		m.addAttribute("pop",pop);
    		return "redirect:/empform/registernewform";
    	}
    	else {
//    		String pop = "Success";
    		int pop=2;

    		m.addAttribute("pop",pop);
    		dao.newreg(emp);
        	return "redirect:/save/viewnotf";
    	}
    	
    }
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("emp") Emp emp, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
		
		 HttpSession session=request.getSession();
    	List<Emp> list=dao.getEmployees(emp); 
        if(list.isEmpty())
        {
        System.out.println("failure");
        //return redirect:/
        return "failure";//will redirect to viewemp request mapping  
        }
        else
        {
        System.out.println("success");
        return "redirect:/save/viewnotf";
        }
    } 
}  