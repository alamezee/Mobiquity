package com.comviva.controller;

import org.junit.Test; 
import static org.junit.Assert.*;

public class testCheck 
{

	@Test
	public void check()
	{
		assertEquals("Vivek",(testCreate.testName().getName()));
		assertEquals("letsgo@gmail.com",(testCreate.testEmail().getEmail()));
		assertEquals("7548624569",(testCreate.testMobile().getMobile()));
		assertEquals("411005",(testCreate.testPassword().getNewpassword()));
	}
}