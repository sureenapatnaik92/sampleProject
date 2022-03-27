/*package com.kalkitech.doble.mandatorytestcases;

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

public class MandatoryTestAdmin {

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

	@Test(priority = 3)
	public void pwdLengthTest() throws Exception {
		System.out.print("check length of password which cannot be more than 16 characters");
		Boolean actual_status = AddUser.errorOnPasswordLimit();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:User password is more than 16 characters");
	}

	// LO_045 check existing user name can be added again
	@Test(priority = 4)
	public void existingUserName() throws Exception {
		System.out.print("existing user cannot be added again");
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Add_User");
		String firstname = ExcelLib.getCellData(1, 0);
		String username = ExcelLib.getCellData(1, 1);
		String password = ExcelLib.getCellData(1, 2);
		String email = ExcelLib.getCellData(1, 4);
		Thread.sleep(2000);
		ArrayList<String> userdetails = new ArrayList<String>();
		userdetails.add(firstname);
		Thread.sleep(2000);
		userdetails.add(username);
		Thread.sleep(2000);
		userdetails.add(password);
		Thread.sleep(2000);
		userdetails.add(password);
		Thread.sleep(2000);
		userdetails.add(email);
		Thread.sleep(2000);
		Boolean actual_status = RemoveUser.CheckUser(username);
		System.out.println(actual_status);
		if (actual_status == false) {
			AddUser.addUser(userdetails);
		}
		Thread.sleep(2000);
		Boolean status = AddUser.errorOnAlreadyExistingUserName(userdetails);
		Boolean expected_status = true;
		Assert.assertEquals(status, expected_status, "Error:Error occurred while adding user again");
	}

	@Test(priority = 5)
	public void allPossiblePwdGeneration() throws Exception {
		System.out.print("check if pwd is generated with all charaters");
		Boolean expected_status = false;
		Boolean actual_status = false;
		String firstname = "Adam";
		String username = "adam123";
		String password = "Abcd@1234!";
		String cnfirmpwd = "Abcd@1234!";
		String email = "adam123@gmail.com";
		Boolean status = RemoveUser.CheckUser(username);
		ArrayList<String> userdetails = new ArrayList<String>();
		if (status == false) {
			userdetails.add(firstname);
			userdetails.add(username);
			userdetails.add(password);
			userdetails.add(cnfirmpwd);
			userdetails.add(email);
			actual_status = AddUser.allPossiblePassword(userdetails);
			expected_status = true;
		} else {
			expected_status = false;
		}
		Assert.assertEquals(actual_status,expected_status, "Error : Password could not be generated with all charaters");
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
				Reporter.log("Exception while taking screenshot " +e.getMessage());
			}
		}
		Reporter.log("test ends");
		Browsers.driver.quit();
	} 
}
*/