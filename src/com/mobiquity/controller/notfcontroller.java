package com.mobiquity.controller;

import java.util.List; 
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;     
import com.mobiquity.bean.*;    
import com.mobiquity.dao.NotificationDao;   


/**
 * Controller Class for Notification
 * Contains Business logic of notifications
 */

@Controller    


public class notfcontroller {
	 @Autowired  //annotation for automatic mapping/wiring 
	 NotificationDao notf; //Object of Notification DAO
	 
	 
	 /**
	  * Gets list of all notification for a particular admin 
	  * @param m Model object to put request data in it
	  * @return JSP page for viewing notifications
	  */
	 
	 
	 @RequestMapping("/viewnotf")    
	    public String viewemp(Model m){    
	        List<Notification> list=notf.getNotification();
	        String admin=notf.getAdminDetail();
	        m.addAttribute("list",list);  
	        m.addAttribute("adminDetail",admin);
	        return "viewnotf";
	 }
	 
	 /**
	  * Mark notification as read 
	  * by changing read column in table 
	  * based on serial no. of notification
	  * RequestMapping maps the JSP page to this Controller's Function 
	  * @param serial
	  * @param m
	  * @return
	  */
	 
	 @RequestMapping("/logout")
	public String  logout(Model m) {
		notf.setAdminDetail();
		return "redirect: /Inbox/empform";
	}
	 /**
	  * Delete the notification
	  * from table using serial
	  * @param serial
	  * @param m
	  * @return
	  */

	
	 @RequestMapping(value="/read/{serial}")
	 public String markread(@PathVariable int serial, Model m) {
		 notf.markasread(serial);
		 return "viewnotf";
	 }
	 
	 /**
	  * Archives the notification
	  * @param serial
	  * @param m
	  * @return
	  */
	 
	 
	 @RequestMapping(value="/delete/{serial}")
	 public String delte(@PathVariable int serial, Model m) {
		 notf.delete(serial);
		 return "viewnotf";
	 }
	 @RequestMapping(value="/archive/{serial}")
	 public String archive(@PathVariable int serial, Model m) {
		 notf.archive(serial);
		 
		 return "viewnotf";
	 }
	 
	 /**
	  * Approve the New User/though notification
	  * @param serial
	  * @param m
	  * @return
	  */
	 
	 
	 @RequestMapping(value="/approve/{serial}")
	 public String approve(@PathVariable String serial, Model m) {
		User temp= notf.find(serial);
		int i=notf.approve(temp);
		 return "viewnotf";
	 }
	 
	 /**
	  * Lists All unread,archived,etc notifications
	  * @return
	  */
	 
	 @RequestMapping(value="/All")
	 public String All() {
		 return "redirect:./save";
	 }
	 
	 
	 /**
	  * Archives the notification for particular admin 
	  * @param m
	  * @return
	  */
	 
	 @RequestMapping(value="/archive")
	 public String Archive(Model m) {
		 List<Notification> list=notf.getNotification();    
	        m.addAttribute("list",list);
	        String admin=notf.getAdminDetail(); 
	        m.addAttribute("adminDetail",admin);
	        
		 return "archive";
	 }
	 

	 /**
	  * Shows Unread Notification for a particular user
	  * @param m
	  * @return
	  */
	 
	 @RequestMapping(value="/unread")
	 public String Unread(Model m) {
		 List<Notification> list=notf.getNotification();    
	        m.addAttribute("list",list);
	        String admin=notf.getAdminDetail();  
	        m.addAttribute("adminDetail",admin);
		 return "unread";
	 }

}
