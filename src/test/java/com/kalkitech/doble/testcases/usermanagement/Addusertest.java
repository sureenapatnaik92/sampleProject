/*package com.kalkitech.doble.testcases.usermanagement;

import java.util.ArrayList;

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


public class Addusertest {

	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);

		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(2, 0);
		String password = ExcelLib.getCellData(2, 1);
		Login.LoginTest(Username, password);

	}

	// LO_052-This method is to verify if User tab is available
	@Test(priority = 0)

	public void usertabAvailableTest() throws Exception {

		System.out.println("To check user tab available or not in add user page");
		Boolean actual_status = AddUser.UsertabAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_055 This method is to verify if User list table is available
	@Test(priority = 1)
	public void userlistAvailableTest() throws Exception {

		System.out.println("To check if user list available or not");
		Boolean actual_status = AddUser.UserlistAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	// LO_054-This method is to verify if only administrator can view “Users” tab
	@Test
	public void viewusertabTest() throws Exception {
		System.out.println("To check if view user page is available or not");
		//WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		Thread.sleep(2000);
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Boolean actual_status = AddUser.Viewusertab(Username, password);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	//LO_010 This method is to verify if Add User btn is available
	@Test(priority = 2)
	public void AdduserbtnAvailableTest() throws Exception {
		System.out.println("To check add user btn available or not");
		Boolean actual_status = AddUser.AdduserbtnAvailable();
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	//LO_011 This method is to verify Checking if add user page is available
	@Test(priority = 3)
	public void adduserPageAvailableTest() throws Exception {
		System.out.println("To check add user page availabe or not");
		Boolean actual_status = AddUser.adduserPageAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//L)_013- This method is to verify Checking if all fields are available in add user
	// page
	@Test(priority = 4)
	public void adduserPageFieldsCheckTest() throws Exception {
		System.out.println("To check add user page fields or columns availabe or not");
		Boolean actual_status = AddUser.adduserPageFieldsCheck();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_014- This method is to verify if firstname takes only string
	@Test(priority = 5)
	public void firstnameTypeTest() throws Exception {
		System.out.println("To check the type of users first name");
		Boolean actual_status = AddUser.firstnameType();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_015- This method is to verify if lastname takes only string
	@Test(priority = 6)
	public void lastnameTypeTest() throws Exception {
		System.out.println("To check the type of users last name");
		Boolean actual_status = AddUser.lastnameType();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_017- This method is to check if errormsg is displayed on different password and
	// confirm password
	@Test(priority = 8)
	public void errorCheckOnPasswordMismatchTest() throws Exception {
		System.out.println("To check error if pwd mismatch");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add("Incorrect");
		userdetails.add(email);
		Boolean actual_status = AddUser.errorCheckOnPasswordMismatch(userdetails);
		Thread.sleep(2000);
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_019- This method is to check if errormsg is displayed on weak password
	@Test(priority = 7)
	public void errorCheckOnWeakPasswordTest() throws Exception {

		System.out.println("To check error message on having weak pwd");
		Boolean actual_status = AddUser.errorCheckOnWeakPassword();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_021,016 This method is to check if user is added
	@Test(priority = 9)
	public void addUserTest() throws Exception {
		System.out.println("To test add user in add user page by admin");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email);
		AddUser.addUser(userdetails);
		Thread.sleep(3000);
		Boolean actual_status = RemoveUser.CheckUser(firstname);
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_020 This method is to check if add button is available in add user page
	@Test(priority = 10)
	public void addBtnInAddUserPageTest() throws Exception {
		System.out.println("To check add user btn in add user page");
		Boolean actual_status = AddUser.addBtnInAddUserPage();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_022 This method is to check close button is available in add user page
	@Test(priority = 11)
	public void closeBtnInAddUserPageTest() throws Exception {
		System.out.println("To check close btn in add user page ");
		Boolean actual_status = AddUser.closeBtnInAddUserPage();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//LO_024 This method is to check if user is able to login or not after adding by admin
	@Test(priority = 13)
	public void addUserLoginTest() throws Exception {
		System.out.println("To check login after adding a user");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		Boolean actual_status1 = RemoveUser.CheckUser(firstname);
		Thread.sleep(3000);
		if (actual_status1.equals(true)) {
			RemoveUser.removeUser(username);
		}
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email);
		AddUser.addUser(userdetails);
		Thread.sleep(3000);
		Boolean actual_status = RemoveUser.CheckUser(firstname);
		Thread.sleep(3000);
		if (actual_status.equals(true)) {
			Login.logout();
			Thread.sleep(3000);
			Login.LoginTest(username, password);
		}
		Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("userhome"));
	}
	//LO_023 This method is to check if user is not added on close btn
	@Test(priority = 14)
	public void userNotAddedOnCloseTest() throws Exception {
		System.out.println("To check  user muct not add after closing the close btn");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(3, 0);
		String username = ExcelLib.getCellData(3, 1);
		String password = ExcelLib.getCellData(3, 2);
		String email = ExcelLib.getCellData(3, 3);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email);
		Boolean actual_status = RemoveUser.CheckUser(firstname);
		if (actual_status) {
			Boolean stat = AddUser.userNotAddedOnClose(userdetails);
			Boolean expected_status = true;
			Assert.assertEquals(stat, expected_status);
		}
	}

	@AfterMethod

	public void tearDown(ITestResult result) {

		// Here will compare if test is failing then only it will enter into if
		// condition
		if (ITestResult.FAILURE == result.getStatus()) {
			try {
				String testName = result.getMethod().getConstructorOrMethod().getName();

				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			} catch (Exception e) {

				Reporter.log("Exception while taking screenshot " + e.getMessage());
			}

		}

		Reporter.log("test ends");
		Browsers.driver.quit();

	}
}*/