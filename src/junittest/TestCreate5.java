package junittest;

import com.comviva.model.Emp;

public class TestCreate5 
{

	public static Emp testName()
	{
	Emp employee = new Emp();
	employee.setName("Joel");
	return employee;
	
	}
	public static Emp testEmail()
	{
	Emp employee = new Emp();
	employee.setEmail("joel@gmail.com");
	return employee;
	}
	public static Emp testMobile()
	{
		Emp employee = new Emp();
	employee.setMobile("6798667777");
	return employee;
	}
	public static Emp testPassword()
	{
		Emp employee = new Emp();
	employee.setNewpassword("joel378");
	return employee;
	}
}
