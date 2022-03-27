/*package com.kalkitech.doble.S1TestCases;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.dashboard.Dashboard;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class S1TestUser {
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

	//LO_074- Verify that dashboard contains all links to different pages and
	// functionalities on left side.
	@Test(priority = 1)
	public void dashboardPages() throws Exception {
		Boolean actual_status = Dashboard.menuOptions();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status, "Error : dashboard does not contain all links to different pages and functionalities on left side");
	}

	// Verify that all above filter options work properly
	@Test(priority = 2)
	public void uplaodFilesByType() throws Exception {
		Boolean stat = SCLFileLoading_old.uploadFileByType();
		Boolean expected_status = true;
		Assert.assertEquals(stat, expected_status, "Error : filter options not working properly");
	}

	//SL_020 Verify that user can select and deselect the "Select All" check box
	@Test(priority = 3)
	public void selectDeselectIEDs() throws Exception {
		Boolean actual = SCLFileLoading_old.selectDeselectIEDs();
		Boolean expected_status = true;
		Assert.assertEquals(actual, expected_status, "Error : user unable to select and deselect the 'Select All' check box");
	}
	// Select only one IED from IED listing window. Ensure that GSE message is
	// displayed for only this IED
	@Test(priority = 4)
	public void selectOneIED() throws Exception {
		Boolean actual = SCLFileLoading_old.selectOneIED();
		Boolean expected_status = true;
		Assert.assertEquals(actual, expected_status, "Error : GSE message not displayed for the selected IED");
	}

	// SL_061 Select multiple IEDs from IED listing window. Ensure that GSE message is
	// displayed for the selected IEDs
	@Test(priority = 5)
	public void selectIEDforGoose() throws Exception {
		Boolean actual = SCLFileLoading_old.selectIEDforGoose();
		Boolean expected_status = true;
		Assert.assertEquals(actual, expected_status, "Error : GSE message not displayed when multiple IEDs are selected");
	}

	//SL_078 Verify that user can identify SISCO parsing errors with respect to IED
	@Test(priority = 6)
	public void siscoErrorFile() throws Exception {
		Boolean actual = SCLFileLoading_old.siscoError();
		Boolean expected_status = true;
		Assert.assertEquals(actual, expected_status, "Error : user unable to identify SISCO parsing errors with respect to IED");
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
		;

	}

}
*/