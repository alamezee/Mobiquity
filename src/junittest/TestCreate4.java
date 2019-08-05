package junittest;

import com.comviva.model.Emp;

public class TestCreate4 
{

	public static Emp testName()
	{
	Emp employee = new Emp();
	employee.setName("Zeeshan");
	return employee;
	
	}
	public static Emp testEmail()
	{
	Emp employee = new Emp();
	employee.setEmail("Zeeshan@gmail.com");
	return employee;
	}
	public static Emp testMobile()
	{
		Emp employee = new Emp();
	employee.setMobile("9870999997");
	return employee;
	}
	public static Emp testPassword()
	{
		Emp employee = new Emp();
	employee.setNewpassword("zeeshan356");
	return employee;
	}
}
