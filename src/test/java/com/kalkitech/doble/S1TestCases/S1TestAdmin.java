/*package com.kalkitech.doble.S1TestCases;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.usermanagement.AddUser;
import com.kalkitech.doble.classes.usermanagement.RemoveUser;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class S1TestAdmin {


	@BeforeMethod
	public static void beforeTest() throws Exception
	{
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(2, 0);
		String password = ExcelLib.getCellData(2, 1);
		Login.LoginTest(Username, password);
	}

	//LO_111-Verify that admin is navigated to dashboard on login
	@Test(priority = 1)
	public void adminLoginTest() throws Exception
	{
		System.out.println("LO_111-Verify that admin is navigated to dashboard on login");
		Boolean actual_status = Login.adminLogin();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status, "Error : Admin unable to login");
	}

	//LO_025-Verify that user with same firstname and lastname but different email Id can be created.
	@Test(priority = 2)
	public void sameNameEmail() throws Exception
	{
		System.out.println("LO_025-Verify that user with same firstname and lastname but different email Id can be created.");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username= ExcelLib.getCellData(1, 1);
		System.out.println(username);
		String password = ExcelLib.getCellData(1, 2);
		String email1 = ExcelLib.getCellData(1, 3);
		RemoveUser.removeUser(username);
		Boolean actual_status = RemoveUser.CheckUser(username);
		String email2 = ExcelLib.getCellData(1, 4);
		String username2 = ExcelLib.getCellData(1, 5);
		System.out.print(email2+""+username2);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email1);
		if(actual_status==false)
		{
			AddUser.addUser(userdetails);//add user before checking
		}
		ArrayList<String> userdetails1 = new ArrayList<String>();
		userdetails1.add(firstname);
		userdetails1.add(username2);
		userdetails1.add(password);
		userdetails1.add(email2);
		Boolean status=AddUser.sameNameEmailCreation(userdetails1);
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(status, expected_status, "Error: user with same firstname and lastname but different email Id could not be created");
	}
	//LO_028-Verify that only administrator can view  “Delete user profile”
	@Test(priority = 3)
	public void deleteProf() throws Exception
	{
		System.out.println("LO_028-Verify that only administrator can view  “Delete user profile”");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username= ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email1 = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email1);
		Boolean actual_status = RemoveUser.CheckUser(username);
		if(actual_status)
		{
			RemoveUser.removeUser(username);
		}
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status, "Error : Unable to verify only administrator can view Delete user profile option");

	}
	//LO_041-Verify that user is blocked when status is changed to "disable" by admin
	@Test(priority = 4)
	public static void changeStatus() throws Exception
	{
		System.out.println("LO_041-Verify that user is blocked when status is changed to \"disable\" by admin");
		Boolean rolestat=false;
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username= ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email1 = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email1);
		Boolean actual_status = RemoveUser.CheckUser(username);
		if(actual_status)
		{
			rolestat=AddUser.addRole(userdetails);
		}
		else
		{
			AddUser.addUser(userdetails);
			rolestat=AddUser.addRole(userdetails);
		}
		if(rolestat)
		{
			ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
			String Username = ExcelLib.getCellData(1, 1);
			String password1 = ExcelLib.getCellData(1, 2);
			Login.LoginTest(Username, password1);
			Thread.sleep(2000);
			String bodyText = Browsers.driver.findElement(By.xpath("//*[@id=\"loginInfo\"]/div[3]/div")).getText();
			Assert.assertTrue( bodyText.contains("Invalid username and password.") , "Error : user not blocked when status is changed to disable by admin");
		}
	}
	//  LO_060-Verify that Logout button is present on top right corner.
	@Test(priority = 5)
	public void logoutBtnAvailableTest() throws Exception
	{
		Boolean actual_status = Login.logoutBtnAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status, "Error : Logout button not present on top right corner");
	}
	//LO_061-Verify that user can reset the password
	@Test(priority = 6)
	public void changeAccountPass() throws Exception
	{
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(4, 0);
		String username = ExcelLib.getCellData(4, 1);
		String password = ExcelLib.getCellData(4, 2);
		String email1 = ExcelLib.getCellData(4, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email1);
		Boolean actual_status = RemoveUser.CheckUser(username);
		if (actual_status) {
			RemoveUser.removeUser(username);
		}
		AddUser.addUser(userdetails);
		Thread.sleep(2000);
		Login.logout();
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String username1= ExcelLib.getCellData(6, 0);
		String password1 = ExcelLib.getCellData(6, 1);
		Login.LoginTest(username1, password1);
		Boolean actual_status1 = AddUser.changePwd(password1);
		if(actual_status1)
		{

			ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "change_password");
			String Username2 = ExcelLib.getCellData(2, 0);
			String password2 = ExcelLib.getCellData(2, 1);
			Login.LoginTest(Username2, password2);
			Thread.sleep(2000);

		}
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status1, expected_status, "Error : user unable to reset the password");
	}


	//LO_115-Verify that admin dashboard have activity history of users logged in to the software
	@Test(priority = 8)
	public void loginEventTest() throws Exception
	{
		Boolean actual_status = Login.loginAuditEvent();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status, "Error : admin dashboard does not contain activity history of users logged in to the software");
	}

	@AfterMethod
	public void tearDown(ITestResult result)
	{
		// Here will compare if test is failing then only it will enter into if condition
		if(ITestResult.FAILURE==result.getStatus())
		{
			try
			{
				String testName = result.getMethod().getConstructorOrMethod().getName();

				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			}
			catch (Exception e)
			{

				Reporter.log("Exception while taking screenshot "+e.getMessage());
			}
		}
		Reporter.log("test ends");
		Browsers.driver.quit();
	}

}*/