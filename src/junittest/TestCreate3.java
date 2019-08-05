package junittest;

import com.comviva.model.Emp;

public class TestCreate3 
{

	public static Emp testName()
	{
	Emp employee = new Emp();
	employee.setName("vinayak");
	return employee;
	
	}
	public static Emp testEmail()
	{
	Emp employee = new Emp();
	employee.setEmail("vinayak@gmail.com");
	return employee;
	}
	public static Emp testMobile()
	{
		Emp employee = new Emp();
	employee.setMobile("6765567888");
	return employee;
	}
	public static Emp testPassword()
	{
		Emp employee = new Emp();
	employee.setNewpassword("vinayak213");
	return employee;
	}
}
