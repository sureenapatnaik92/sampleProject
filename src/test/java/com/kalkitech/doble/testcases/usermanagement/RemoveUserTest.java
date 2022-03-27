/*package com.kalkitech.doble.testcases.usermanagement;

import static org.testng.Assert.assertEquals;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class RemoveUserTest {


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
	//LO_029-Verify that deleted user cannot login
	@Test(priority = 2)
	public void removeUserloginCheckTest() throws Exception {
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Remove_User");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		com.kalkitech.doble.classes.usermanagement.RemoveUser.removeUserloginCheck(Username, password);
		String bodyText = Browsers.driver.findElement(By.xpath("//*[@id=\"loginInfo\"]/div[3]/div")).getText();
		Assert.assertTrue(bodyText.contains("Invalid username and password."));
	}

	//LO_027-This method is to check if user can be deleted
	@Test(priority = 1)
	public void removeUserTest() throws Exception {
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Remove_User");
		String Username = ExcelLib.getCellData(1, 0);
		com.kalkitech.doble.classes.usermanagement.RemoveUser.removeUser(Username);
		Boolean actual_status = com.kalkitech.doble.classes.usermanagement.RemoveUser.CheckUser(Username);
		Login.logout();
		Boolean expected_status = false;
		assertEquals(actual_status, expected_status);
	}

	//LO_026-This method is to check if Delete button is available for all users
	@Test(priority = 0)
	public void removeUserbuttonAvailableTest() throws Exception {
		Boolean actual_status = com.kalkitech.doble.classes.usermanagement.RemoveUser.removeUserbuttonAvailable();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//LO_030-to check delete functionality of single user
	@Test(priority = 3)
	public void addingDeletedUserTest() throws Exception {
		Boolean actual_status = null;
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String> ();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email);
		com.kalkitech.doble.classes.usermanagement.RemoveUser.removeUser(firstname);
		Boolean status = com.kalkitech.doble.classes.usermanagement.RemoveUser.CheckUser(firstname);
		if (status.equals(false)) {
			com.kalkitech.doble.classes.usermanagement.AddUser.addUser(userdetails);
			Thread.sleep(2000);
			actual_status = com.kalkitech.doble.classes.usermanagement.RemoveUser.CheckUser(firstname);
		}
		Login.logout();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//LO_031-to check select all functionality
	@Test(priority = 4)
	public void selectAllCheckBoxFunctionTest() throws Exception {
		Boolean actual_status = com.kalkitech.doble.classes.usermanagement.RemoveUser.selectAllCheckBoxFunction();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//LO_032-to check delete all functionality
	@Test(priority = 5)
	public void removeUserUsingDeleteAllTest() throws Exception {

		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String> ();
		userdetails.add(firstname);
		userdetails.add(username);
		userdetails.add(password);
		userdetails.add(email);
		Boolean test = com.kalkitech.doble.classes.usermanagement.RemoveUser.CheckUser(username);
		if (test.equals(false)) {

			com.kalkitech.doble.classes.usermanagement.AddUser.addUser(userdetails);
		}
		Thread.sleep(3000);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Remove_User");
		String Username = ExcelLib.getCellData(1, 0);
		//RemoveUser.removeUser(Username);
		com.kalkitech.doble.classes.usermanagement.RemoveUser.removeUserUsingDeleteAll(Username);
		Boolean actual_status = com.kalkitech.doble.classes.usermanagement.RemoveUser.CheckUser(Username);
		Login.logout();
		Boolean expected_status = false;
		assertEquals(actual_status, expected_status);
	}

	@AfterMethod
	public void tearDown(ITestResult result) {

		// Here will compare if test is failing then only it will enter into if condition
		if (ITestResult.FAILURE == result.getStatus()) {
			try {
				String testName = result.getMethod().getConstructorOrMethod().getName();

				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			} catch (Exception e) {

				Reporter.log("Exception while taking screenshot " + e.getMessage());
			}

		}

		Reporter.log("test ends");
		Browsers.driver.quit();;

	}

}*/