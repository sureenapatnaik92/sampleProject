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
import com.kalkitech.doble.classes.usermanagement.EditUser;
import com.kalkitech.doble.classes.usermanagement.RemoveUser;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;


public class EditUserTest {

	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(2, 0);
		System.out.println(Username);
		String password = ExcelLib.getCellData(2, 1);
		Login.LoginTest(Username, password);

	}
	
	//LO_037-to check edit functionality by changing first name
	@Test(priority = 3)
	public void editUserTest() throws Exception {
		System.out.println("To check edit user works or not");
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
		Boolean actual_status1 = RemoveUser.CheckUser(username);
		if (actual_status1 == true) {
			RemoveUser.removeUser(username);
		}
		AddUser.addUser(userdetails);
		Thread.sleep(3000);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Edit_User");
		String changedname = ExcelLib.getCellData(1, 1);
		Boolean actual_status = EditUser.editUser(firstname, changedname);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	//LO_034-to check if edit button is present
	@Test(priority = 0)
	public void editUserBtnAvailableTest() throws Exception {
		System.out.println("To check edit user button in add user page");
		Boolean actual_status = EditUser.editUserBtnAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	//LO_035-to check if edit user page is present
	@Test(priority = 1)
	public void editUserpageAvailableTest() throws Exception {
		Boolean actual_status = EditUser.editUserpageAvailable();
		Thread.sleep(2000);
		Login.logout();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	// LO_36-to check if edit User functionality works or not
	@Test(priority = 3)
	public void editUserpageFieldscheckTest() throws Exception {
		Boolean actual_status = EditUser.editUserpageFieldscheck();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	// LO_038-To check whether password is getting changed and user is able to login with changed pwd
	@Test(priority = 4)
	public void changePasswordTest() throws Exception {
		System.out.println("To change pwd and check the change pwd works or not");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "change_password");
		String username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username1 = ExcelLib.getCellData(1, 1);
		String password1 = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 3);
		ArrayList<String> userdetails = new ArrayList<String> ();
		userdetails.add(firstname);
		userdetails.add(username1);
		userdetails.add(password1);
		userdetails.add(email);
		AddUser.addUser(userdetails);
		EditUser.changePassword(username, password);
		Thread.sleep(3000);
		Login.logout();
		Thread.sleep(3000);
		Login.LoginTest(username, password);
		Thread.sleep(2000);
		Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("userhome"));
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