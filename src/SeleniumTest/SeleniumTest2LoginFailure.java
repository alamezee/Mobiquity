package SeleniumTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumTest2LoginFailure 
{
 
	public static void main(String[] args) throws InterruptedException
	{
		System.setProperty("webdriver.chrome.driver","C:\\Users\\zeeshan.alam\\Desktop\\chromedriver\\chromedriver.exe");
		
		//create a new Chromedriver
		WebDriver driver=new ChromeDriver();
		
		//assign the url to the driver
		driver.get("http://localhost:8082/Inbox/");
		
		/* Web Element is created for each input and buttons 
		 and is tested if it proceeds  further as per requirements */
		
		WebElement link;
		link = driver.findElement(By.linkText("Click To Login"));
		link.click();
		Thread.sleep(500);
		WebElement UserName;
		UserName=driver.findElement(By.id("Username"));
		UserName.sendKeys("srikargona");
		Thread.sleep(500);
		WebElement Password;
		Password=driver.findElement(By.id("Password"));
		Password.sendKeys("srikar123");
		Thread.sleep(500);
		WebElement linksubmit;
		linksubmit = driver.findElement(By.xpath("//*[@id=\"command\"]/input"));
		linksubmit.click();
		
		/*we get the current url of the driver after 
		  the required operations 
		  are done and check with the expected url for validation
		*/
		String resulturl=driver.getCurrentUrl();
		String expectedurl="http://localhost:8082/Inbox/save/viewnotf";
		if(resulturl.equals(expectedurl))
		{
			System.out.println("Login is success");
		}
		else
		{
			System.out.println("Login is failure");
		}
		
		driver.quit();
	}
}
