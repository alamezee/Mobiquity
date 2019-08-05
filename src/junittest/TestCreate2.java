package junittest;

import com.comviva.model.Emp;

public class TestCreate2 
{

	public static Emp testName()
	{
	Emp employee = new Emp();
	employee.setName("Srikar");
	return employee;
	
	}
	public static Emp testEmail()
	{
	Emp employee = new Emp();
	employee.setEmail("srikar@gmail.com");
	return employee;
	}
	public static Emp testMobile()
	{
		Emp employee = new Emp();
	employee.setMobile("7864344490");
	return employee;
	}
	public static Emp testPassword()
	{
		Emp employee = new Emp();
	employee.setNewpassword("srikar509");
	return employee;
	}
}
