/*package com.kalkitech.doble.testcases.livedata;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.livedata.LiveData;
import com.kalkitech.doble.classes.livedata.LiveDataTabular;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class LiveDataTabularTest {

	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);
		Thread.sleep(4000);
		LiveData.LiveDataTab().click();
		Thread.sleep(4000);
		LiveData.LiveDataTabular().click();
	}
	
	//LD_011-Verify that user can change to “configuration” mode by toggling the toggle button
	@Test(priority=0)
	public void ConfigmodeTogglebtnTest() throws Exception
	{
		System.out.println("To configure toggle button in live data tabular");
		Boolean actual_status=LiveDataTabular.toggle();
		Thread.sleep(4000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Toggle button set to configured mode");

	}
	//LD_015
	@Test(priority=1)
	public void dataSelectorTest() throws Exception
	{
		System.out.println("to select Dataselector modal window in tabular");
		Boolean actual_status=LiveDataTabular.dataSelector();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:dataselector is not avaiable in Live data tabular");
	}
	
	//LD_018-Verify that when DA of already existing DO is added to the table, warning /error message pops up
	@Test(priority=2)
	public void addDAErrormessageTest() throws Exception
	{
		System.out.println("to check if error messages are appearing while configuring the DA in Live data tabular");
		//Project.clearData();
		Boolean actual_status=LiveDataTabular.addDAErrormessage();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:DA message cannot be added");
	}
	
	//LD_020-Verify the deleted DO/DA can be added again, and deleted/added multiple times
	@Test(priority=3)
	public void AdddeleteDOTest() throws Exception
	{
		System.out.println("To add DO in live data tabular and delete it");
		Boolean actual_status=LiveDataTabular.AdddeleteDO();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Cannot delete DO ");
	}
	
	//LD_018
	@Test(priority=4)
	public void AddDOTest() throws Exception
	{
		System.out.println("To add DO in live data tabular");
		Boolean actual_status=LiveDataTabular.AdddDO();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Cannot add DO");
	}
	
	//LD_027,031,033,035,037,039
	@Test(priority=5)
	public void hideGseColumnTest() throws Exception
	{
		System.out.println("To hide GSE Id column from live data through data selector");
		Boolean actual_status=LiveDataTabular.hideGseColumn();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Cannot hide Goose columns ");
	}
	
	//LD_029,032,034,036,038
	@Test(priority=6)
	public void showGseIdColumnTest() throws Exception
	{
		System.out.println("To show GSE Id column from live data through data selector");
		Boolean actual_status=LiveDataTabular.showGseColumn();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Goose columns are not shown");
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
}
*/