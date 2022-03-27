/*package com.kalkitech.doble.testcases.livedata;

import static org.testng.Assert.assertEquals;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.livedata.LiveData;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class LiveDataTest {

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

	// LD_003 -Verify that Live data page contains sub tabs
	@Test
	public void livedataSubTabsAvailableTest() throws Exception {
		System.out.println("To check live data sub tabs which are GSE and SV is available");
		Boolean actual_status = LiveData.livedataSubTabsAvailable();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// LD_006-Verify that user can navigate to different pages from the menus
	// section.
	@Test
	public void livedataPagesAvailableTest() throws Exception {
		System.out.println("To check live data pages are available or not (gse and sv page)");
		Boolean actual_status = LiveData.LiveDataPagesAvailable1();// .LiveDataPagesAvailable();;
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// LD_002-Verify that “Live data” page loads correctly
	@Test
	public void checklivedataPageLoadTest() throws Exception {
		System.out.println("To check if live data pages get loaded");
		Boolean actual_status = LiveData.checklivedataPageLoad();// .
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status,"Cannot load live data sub pages");
	}

	// LD_007 -Verify that “Live Data” page contains toggle button at right top
	// corner of the page.
	@Test
	public void TogglebtnAvailableTest() throws Exception {
		System.out.println("To check toggle button available in live data");
		Boolean actual_status = LiveData.togglebtnAvailable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Toggle button is not available");
	}

	//
	@Test
	public void gooseMessagePagesAvailableTest() throws Exception {
		System.out.println("To check GSE msge page is available in live data");
		LiveData.LiveDataPagesAvailable();
	}

	// LD_010
	@Test
	public void gooseMessageTableColumnsTest() throws Exception {
		System.out.println("To check GSE table is available in live data");
		boolean actual_status = LiveData.gooseMessageTableColumns();
		boolean expected_status = true;
		assertEquals(actual_status, expected_status,"Error:Goose table is not available");
	}

	// LD_008 -Verify that toggle button is by default in “Run mode”
	@Test
	public void defaultToggle() throws Exception {
		System.out.println("To check default toggle button is present or not with config mode");
		boolean actual_status = LiveData.defaultToggleAvailable();
		boolean expected_status = true;
		assertEquals(actual_status, expected_status,"Error:Default toggle is not in configure mode");

	}

	// LD_005-Verify that menus can be hidden by clicking on hide button.
	@Test
	public void hideMenus() throws Exception {
		System.out.println("To hide menus from sidebar menu list");
		boolean status = LiveData.menusHideAvailable();
		Thread.sleep(2000);
		boolean expected_status = true;
		assertEquals(status, expected_status,"Error:Menus cannot be hidden");
	}

	// LD_021
	@Test
	public void liveDataColumnTest() throws Exception {
		System.out.println("To check live data columns are proper and as expected");
		boolean actual_status = LiveData.liveDataMessageTableColumns();
		boolean expected_status = true;
		assertEquals(actual_status, expected_status,"Error:Columns are not there in Live Data");
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