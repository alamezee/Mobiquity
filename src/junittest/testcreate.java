package junittest;

import com.comviva.dao.*; 
import com.comviva.model.*;
public class testcreate 
{

	public static Emp testName()
	{
	Emp employee = new Emp();
	employee.setName("Vivek");
	return employee;
	
	}
	public static Emp testEmail()
	{
	Emp employee = new Emp();
	employee.setEmail("letsgo@gmail.com");
	return employee;
	}
	public static Emp testMobile()
	{
		Emp employee = new Emp();
	employee.setMobile("7548624569");
	return employee;
	}
	public static Emp testPassword()
	{
		Emp employee = new Emp();
	employee.setNewpassword("411005");
	return employee;
	}
	
}
