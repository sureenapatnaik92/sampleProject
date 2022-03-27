/*package com.kalkitech.doble.classes.login;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Login extends BaseClass {

	public Login(WebDriver driver) {
		super(driver);

	}

	public static final String LOGINBTNXPATH="/html/body/div/div/div/div[2]/div/div/div/div/form/button";
	public static final String USERID="username";
	public static final String PASSWORD="password";
	public static final String DROPDOWNXPATHADMIN="/html/body/div[1]/header/nav/div/ul/li/a/span";
	public static final String LOGOUTBTNXPATHADMIN="/html/body/div[1]/header/nav/div/ul/li/ul/li[7]/a";
	public static final String DROPDOWNXPATH="/html/body/div[1]/header/nav/div/ul/li[4]/a/span";
	public static final String LOGOUTBTNXPATH="/html/body/div[1]/header/nav/div/ul/li[4]/ul/li[7]/a";
	public static final String ACCNTSETTNGBTNXPATH="/html/body/div/header/nav/div/ul/li[5]/a/span";
	public static final String ADMINDASHBOARDLINKTEXT="Dashboard";
	public static final String LOGINEVENTID="loginEvents";


	public static WebElement findById(String id) {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementById(id);
			Reporter.log("Webelement id found " +id);

		} catch (Exception e) {
			Reporter.log("Webelement id not found " +id);
			throw (e);
		}
		return element;
	}

	public static WebElement findByName(String name) {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByName(name);
			element.click();
			Reporter.log("Webelement name found " +name);
		} catch (Exception e) {
			Reporter.log("Webelement name not found " +name);
			throw (e);
		}

		return element;
	}


	public static WebElement findByXpath(String xpath) throws Exception {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByXpath(xpath);
			Reporter.log("Xpath found" +xpath);
		} catch (Exception e) {
			Reporter.log("Xpath not found" +xpath);
			throw (e);
		}
		return element;
	}

	public static WebElement findByLinkText(String text) throws Exception {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByLinkText(text);
			Reporter.log("Text found" +text);
		} catch (Exception e) {
			Reporter.log("Text not found" +text);
			throw (e);
		}
		return element;
	}

	public static void LoginTest(String userName, String passWord) throws Exception {
		WebDriverUtils.implicitlyWait();
		WebElement usernameElement = findById(USERID);
		WebDriverUtils.Type(usernameElement, userName);
		WebElement passwordElement = findByName(PASSWORD);
		WebDriverUtils.Type(passwordElement, passWord);
		WebElement LoginBtn = findByXpath(LOGINBTNXPATH);
		LoginBtn.click();

	}
	// This method is to verify if Username textbox is available in login page
	public static boolean usernameTextboxAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = findById(USERID).isDisplayed();
		return status;

	}

	// This method is to verify if login btn is available in login page
	public static boolean loginBtnAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = findByXpath(LOGINBTNXPATH).isDisplayed();
		return status;

	}

	//To check if the logout button available in the admin page
	public static boolean logoutBtnAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		findByXpath(DROPDOWNXPATHADMIN).click();;
		Thread.sleep(2000);
		Boolean status = findByXpath(LOGOUTBTNXPATHADMIN).isDisplayed();
		return status;

	}

	// This method is to verify if password textbox is available in login page
	public static boolean passwordTextboxAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = findByName(PASSWORD).isDisplayed();
		return status;

	}

	// Checking if username textbox is enabled
	public static boolean usernameTextboxEnabled() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = findById(USERID).isEnabled();
		return status;

	}

	// Checking if password textbox is enabled
	public static boolean passwordTextboxEnabled() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = findById(USERID).isEnabled();
		return status;

	}
	//To check logout is working or not
	public static void logout() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		findByXpath(DROPDOWNXPATHADMIN).click();
		Thread.sleep(2000);
		findByXpath(LOGOUTBTNXPATHADMIN).click();

	}
	//To check logout is working or not
	public static void logoutUser() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		findByXpath(DROPDOWNXPATH).click();
		Thread.sleep(2000);
		findByXpath(LOGOUTBTNXPATH).click();

	}
	//To check admin is able to login
	public static boolean adminLogin() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean actual_status = findByLinkText(ADMINDASHBOARDLINKTEXT).isDisplayed();
		if(actual_status.equals(true))
		{
			Reporter.log("Admin is able to login");
		}
		else
		{
			Reporter.log("Error : Admin unable to login");
		}
		return actual_status;

	}
	//To check if login audit event is present in the admin page
	public static boolean loginAuditEvent() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean actual_status = findById(LOGINEVENTID).isDisplayed();
		if(actual_status.equals(true))
		{
			Reporter.log("login audit event is present in the admin page");
		}
		else
		{
			Reporter.log("Error : login audit event not present in the admin page");
		}
		return actual_status;

	}

}*/
