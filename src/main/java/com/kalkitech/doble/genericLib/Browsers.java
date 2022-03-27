package com.kalkitech.doble.genericLib;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;


public class Browsers {
	
	public static WebDriver driver;		// Variable(driver) initialization

	//@Parameters("browser")
	public static WebDriver fn_LaunchBrowser(String browsername)	// Launch browser
	{
		/*
		 * ChromeOptions options = new ChromeOptions();
		 * options.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);
		 * options.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
		 * System.setProperty("webdriver.chrome.driver",
		 * "src/main/resources/Browsers/chromedriver.exe"); driver = new
		 * ChromeDriver(options);
		 */
		
		   		System.setProperty("webdriver.chrome.driver", "src/main/resources/Browsers/chromedriver.exe");
		driver= new ChromeDriver();		
		return driver;
	}	
}
