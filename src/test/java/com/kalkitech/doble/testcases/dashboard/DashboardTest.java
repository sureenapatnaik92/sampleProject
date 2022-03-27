/*package com.kalkitech.doble.testcases.dashboard;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.dashboard.Dashboard;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class DashboardTest {
	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);
	}

	// LO_100 -Checking if IED status table is available
	@Test(priority = 1)
	public void iedStatusTableAvailableTest() throws Exception {
		System.out.print("To check status table in dashboard");
		Boolean actual_status = Dashboard.iedStatusAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:IED status table is not available");
	}

	// LO_101-Checking if columns are displayed or not
	@Test(priority = 2)
	public void iedStatusTableColumnTest() throws Exception {
		System.out.print("To check columns in IED status table");
		Boolean actual_status = Dashboard.columnCheckInIEDTable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:IED status column is not available");
	}

	// LO_104- checking with invalid ip
	@Test(priority = 3)
	public void invalidIPInIEDTableTest() throws Exception {
		System.out.print("To put invalid IP and test");
		Boolean actual_status = Dashboard.invalidIPIEDTable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Invalid IP got entered");
	}

	@AfterMethod
	public void tearDown(ITestResult result) {
		// In case of a test failure
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
}
*/