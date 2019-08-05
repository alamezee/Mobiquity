package junittest;

import org.junit.Test;

import static org.junit.Assert.*;

public class testCheck 
{

	@Test
	public void check1success()
	{
		assertEquals("Vivek",(testcreate.testName().getName()));
		assertEquals("letsgo@gmail.com",(testcreate.testEmail().getEmail()));
		assertEquals("7548624569",(testcreate.testMobile().getMobile()));
		assertEquals("411005",(testcreate.testPassword().getNewpassword()));
	}
	@Test
	public void check2failure()
	{
		assertEquals("Srikar",(TestCreate2.testName().getName()));
		assertEquals("srikar@gmail.com",(TestCreate2.testEmail().getEmail()));
		assertEquals("7864344490",(TestCreate2.testMobile().getMobile()));
		assertEquals("srikar509",(TestCreate2.testPassword().getNewpassword()));
	}
	@Test
	public void check3failure()
	{
		assertEquals("vinayak",(TestCreate3.testName().getName()));
		assertEquals("vinayak@gmail.com",(TestCreate3.testEmail().getEmail()));
		assertEquals("6765567888",(TestCreate3.testMobile().getMobile()));
		assertEquals("vinayak213",(TestCreate3.testPassword().getNewpassword()));
	}
	@Test
	public void check4failure()
	{
		assertEquals("Zeeshan",(TestCreate4.testName().getName()));
		assertEquals("Zeeshan@gmail.com",(TestCreate4.testEmail().getEmail()));
		assertEquals("9870999997",(TestCreate4.testMobile().getMobile()));
		assertEquals("zeeshan356",(TestCreate4.testPassword().getNewpassword()));
	}
	@Test
	public void check5failure()
	{
		assertEquals("Joel",(TestCreate2.testName().getName()));
		assertEquals("srikar@gmail.com",(TestCreate2.testEmail().getEmail()));
		assertEquals("7864344490",(TestCreate2.testMobile().getMobile()));
		assertEquals("joel509",(TestCreate2.testPassword().getNewpassword()));
	}
	
}
