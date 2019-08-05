package com.mobiquity.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.mobiquity.bean.*;

import com.comviva.dao.EmpDao;

/**
 * DAO Class for Notifications
 */

public class NotificationDao{
	EmpDao obj1= new EmpDao();
	static int x;
	
	JdbcTemplate template; //Mechanism to connect to the database and execute SQL queries.
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template; //sets the template for current object. 
	    }
	
	/**
	 * Gets Notications of a particular user from database
	 * @return List Collection of all Notifications
	 */
	
	
	public List<Notification> getNotification(){  
		
		
		x=obj1.adminid;
	    return template.query("select * from notifications  where checker_id="+x+"",new RowMapper<Notification>(){  
	        public Notification mapRow(ResultSet rs, int row) throws SQLException {  
	            Notification notf=new Notification();  
	            notf.setSender( rs.getString(2));
				notf.setSubject( rs.getString(3));
				notf.setContent( rs.getString(4));
				notf.setDate( rs.getDate(5));
				notf.setTime( rs.getTime(6));  
				notf.setRead(rs.getBoolean(7));
				notf.setSerial(rs.getInt(1));
				notf.setDelete(rs.getBoolean(8));
				notf.setArchive(rs.getBoolean(9));
	            return notf;  
	        }  
	    });  
	}
	
	
	/**
	 * Makes a notification with serial no. == s marked read
	 * @param s serial number of notification
	 */
	
	
	public void markasread(int s) {
		template.update("update notifications  set `read`=? where serial=?;",true,s);
	}
	
	
	/**
	 * Deletes a particular notification
	 * @param s
	 */
	
	
	public void delete(int s) {
		template.update("update notifications  set `delete`=? where serial=?;",true,s);
	}
	
	
	/**
	 * Archives a particular notification
	 * @param s
	 */
	
	public void archive(int s) {
		template.update("update notifications  set `archive`=? where serial=?;",true,s);
	}


	/**
	 * Functionality for searching user 
	 * @param s
	 * @return
	 */
	public User find(String s) {
		String sql="select * from mobiquityuserreg where name=?";  
	    return (User)template.queryForObject(sql, new Object[]{s},new UserMapper());
	    }

	/**
	 * Function to insert user after approval into database
	 * @param obj
	 * @return
	 */
	
	public int approve(User obj) {
		String name= obj.getUserName();
		String pass= obj.getPassword();
		String level = obj.getLevel();
		String sql="insert into admins(username, password,adminLevel) values('"+name+"','"+pass+"','"+level+"')";  	    
	    String sql1="update mobiquityuserreg set `approval`=? where name=?;";
	    template.update(sql1,true,obj.getUserName());
	    return template.update(sql);  
	}
	
	/**
	 * to get maker details
	 * @return
	 */

	public String getAdminDetail() {
		
		return obj1.maker;
	}

	/**
	 * to get Admin details of maker
	 * @return
	 */
	
public void setAdminDetail() {
		 obj1.maker=null;
	}

/**
 * to set maker details
 * @return
 */
}
