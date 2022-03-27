package com.kalkitech.doble.genericLib;

import java.time.Duration;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebDriverUtils {

	//This method is for opening URL

	public static void fn_OpenURL(String url)
	{
		Browsers.driver.get(url);
		Browsers.driver.manage().window().maximize();
	}

	public static int smallWait =3;
	public static int mediumWait =5;
	public static int largeWait =10;

	//This method is for implicit wait

	public static void implicitlyWait()

	{                
		Browsers.driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));

	}

	public static int waitType(String time)
	{
		int expWait = 0;
		if(time.equals("smallWait"))
		{
			expWait = 3;
		}
		else if(time.equals("mediumWait"))
		{
			expWait = 5;
		}
		else if(time.equals("largeWait"))
		{
			expWait = 10;
		}
		return expWait;
	}


	// This method is for explicit wait
	public static WebElement explicitlyWait(String path , String time)
	{
	int waitTime = waitType(time);
	WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));

	WebElement element = wait.until(ExpectedConditions.elementToBeClickable(By.id(path)));
	return element;
	}


	
	public static WebElement findElementById(String Id , String time)
    {
		int waitTime = waitType(time);
		WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(Id)));
        return element;
    }
	
	public static WebElement findElementByLinkText(String LinkText , String time)
    {
		int waitTime = waitType(time);
		WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText(LinkText)));
        return element;
    }

	public static WebElement findElementByName(String name , String time)
    {
		int waitTime = waitType(time);
		WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.name(name)));
        return element;
    }


	public static WebElement findElementByXpath(String Xpath , String time)
    {
		int waitTime = waitType(time);
		WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(Xpath)));
        return element;
    }

	public static WebElement findElementByClass(String classname , String time)
    {
		int waitTime = waitType(time);
		WebDriverWait wait = new WebDriverWait(Browsers.driver, Duration.ofSeconds(waitTime));
        WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.className(classname)));
        return element;
    }

	/*
	//This method is for finding element using Id


	public static WebElement findElementById(String Id)
	{

		WebElement element= Browsers.driver.findElement(By.id(Id));
		return element;
	}



	public static WebElement findElementByLinkText(String LinkText)
	{

		WebElement element= Browsers.driver.findElement(By.linkText(LinkText));
		return element;
	}

	public static WebElement findElementByName(String name)
	{

		WebElement element = Browsers.driver.findElement(By.name(name));
		return element;
	}

	//This method is for finding element using Xpath
	public static WebElement findElementByXpath(String Xpath)
	{

		WebElement element= Browsers.driver.findElement(By.xpath(Xpath));
		if(element != null)
		{
			return element;
		}
		else
		{
			System.out.println("Element is null");
		}
		return element;
	}
	//This method is for finding element using Classname
	public static WebElement findElementByClass(String classname)
	{

		WebElement element= Browsers.driver.findElement(By.className(classname));
		return element;
	}
*/
	//This method is for Typing data in text boxes

	public static void Type(WebElement element, String text)
	{

		//explicitlyWait(element);
		element.sendKeys(text);
	}

	//This method is for getting text from Alert
	public static String Alert_getText()
	{
		Alert alert = Browsers.driver.switchTo().alert();
		String text = alert.getText();
		return text;
	}


	//This method is for Accepting  Alert
	public static void Alert_Accept()
	{
		Alert alert = Browsers.driver.switchTo().alert();
		alert.accept();
	}


	//This method is for Dismiss  Alert
	public static void Alert_Dismiss()
	{
		Browsers.driver.switchTo().alert().dismiss();
	}

	public static String mandatory_field_check(WebElement element)
	{

		String text = element.getText();
		int a = text.lastIndexOf("(");
		int b = text.lastIndexOf(")");
		String text2 = text.substring(a, b+1);
		return text2;
	}

	//Select with Visible text
	public static void selectByVisibleText(WebElement element,String text)
	{

		Select dropdown= new Select(element);
		dropdown.selectByVisibleText(text);

	}

	//Select with Index
	public static void selectByIndex(WebElement element,int text)
	{

		Select dropdown= new Select(element);
		dropdown.selectByIndex(text);
	}

	//Select with Index
	public static List<WebElement> selectAllOptions(WebElement element)
	{

		Select dropdown= new Select(element);
		List<WebElement> allOptions = dropdown.getOptions();
		return allOptions;
	}

	//Double click
	public static void doubleClickUsingActions(WebElement element)
	{

		Actions act= new Actions(Browsers.driver);
		act.doubleClick(element).build().perform();
	}


}
