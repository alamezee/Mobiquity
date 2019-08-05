package SeleniumTest;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumTest4NewUserFailure 
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
		UserName.sendKeys("srikar");
		Thread.sleep(500);
		WebElement Password;
		Password=driver.findElement(By.id("Password"));
		Password.sendKeys("srikar123");
		Thread.sleep(500);
		WebElement linksubmit;
		linksubmit = driver.findElement(By.xpath("//*[@id=\"command\"]/input"));
		linksubmit.click();
		
		
		WebElement linknewuser;
		linknewuser = driver.findElement(By.linkText("Create User"));
		linknewuser.click();
		Thread.sleep(500);
		WebElement Usernamenew;
		Usernamenew=driver.findElement(By.id("name"));
		Usernamenew.sendKeys("vinayak");
		Thread.sleep(500);
		WebElement Mobile;
		Mobile=driver.findElement(By.id("Mobile"));
		Mobile.sendKeys("1234567890");
		Thread.sleep(500);
		WebElement Email;
		Email=driver.findElement(By.id("Email"));
		Email.sendKeys("vivek@gmail.com");
		Thread.sleep(500);
		WebElement Passwordnew;
		Passwordnew=driver.findElement(By.id("newpassword"));
		Passwordnew.sendKeys("vivek123");
		Thread.sleep(500);
		WebElement adminlevel;
		adminlevel=driver.findElement(By.id("adminlevel"));
		adminlevel.sendKeys("Network Admin");
		Thread.sleep(500);
		WebElement linksubmitnew;
		linksubmitnew = driver.findElement(By.xpath("//*[@id=\"command\"]/input"));
		linksubmitnew.click();
		
		
		Alert alert = driver.switchTo().alert();		
		
        // Capturing alert message.    
        String alertMessage= driver.switchTo().alert().getText();		
        		
        // Displaying alert message		
        System.out.println(alertMessage);	
        Thread.sleep(5000);
        		
        // Accepting alert		
        alert.accept();	
		
		/*we get the current url of the driver after 
		  the required operations 
		  are done and check with the expected url for validation
		*/
		String resulturlnewuser=driver.getCurrentUrl();
		driver.close();
		String expectedurlnewuser="http://localhost:8082/Inbox/save/viewnotf";
		String unexpectedurlnewuser="http://localhost:8082/Inbox/empform/registernewform?pop=1";
		
		if(resulturlnewuser.equals(expectedurlnewuser))
		{
			System.out.println("New User Registration is success");
		}
		else if(resulturlnewuser.equals(unexpectedurlnewuser))
		{
			System.out.println("New User Registration is failure");
		}
	}
}
