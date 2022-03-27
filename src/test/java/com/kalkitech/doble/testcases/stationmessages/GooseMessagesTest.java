/*package com.kalkitech.doble.testcases.stationmessages;

import static org.testng.Assert.assertEquals;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.Demo3;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.SCLFileReading;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class GooseMessagesTest {

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

	// SM_001-the station message sub tables are available
	@Test
	public void stnMsgsSubPagesAvailableTest() throws Exception {
		Boolean actual_status = GooseMessages_old.stnMsgsSubPagesAvailable();
		if (actual_status) {
			Reporter.log("Station message sub tabs page available");
		} else
			Reporter.log("Error:Station message sub tabs not available");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// To check GSE table/GSE page is available test
	@Test
	public void gooseMessagePagesAvailableTest() throws Exception {
		GooseMessages_old.gooseMessagePagesAvailable();
		Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("livestationmsggoose"));
	}

	// SM_004- To check GSE Table has specified columns
	@Test
	public void gooseMessageTableColumnsTest() throws Exception {
		boolean actual_status = GooseMessages_old.gooseMessageTableColumns();
		if (actual_status) {
			Reporter.log("Goose message table is available");
		} else
			Reporter.log("Error:Goose message table is not available");
		Thread.sleep(2000);
		boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_021-to check whether GSE message are getting cleared or not
	@Test
	public void gooseMessageClearDataTest() throws Exception {
		SCLFileLoading_old.loadSVFileInFileSystem("Ch1Line1", "CID");// loading a gse file
		Thread.sleep(3000);
		boolean actual_status = GooseMessages_old.gooseMessageclearData();
		if (actual_status) {
			Reporter.log("All GSE packets got deleted");
		} else
			Reporter.log("Error:GSE packets did not get deleted properly");
		boolean expected_status = true;
		assertEquals(actual_status, expected_status);

	}

	// SM_025-to check whether GSE message is loading or not
	@Test
	public void gooseMessageloadVerificationTest() throws Exception {
		SCLFileReading.fileReadGSE("src\\main\\resources\\TestData\\TR3000.xml");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("TR3000", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareSheets("Sheet2", "Sheet3");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("The comparison data are similar for Sheet2 and Sheet3");
		} else
			Reporter.log("Error:The comparison data are not similar for Sheet2 and Sheet3");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// To count GSE message in Goose table
	@Test
	public void gooseMessagecountTest() throws Exception {
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("Ch1Line1", "CID");// loading a gse file
		Thread.sleep(3000);
		Boolean actual_status = GooseMessages_old.Goosecount();
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("GSE messages got loaded and the count is more than 1");
		} else
			Reporter.log("Error:GSE messages did not get loaded and the count is 0");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_139,140,141,142,143,144,145,146,147 to check GSE filter through filter
	// column
	@Test
	public void gooseFilterTest() throws Exception {
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("TR3000", "icd");// loading a gse file
		Thread.sleep(3000);
		GooseMessages_old.GooseMsgFilterIEDName();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("TR3000_ied_Expected", "TR3000_ied_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Thread.sleep(3000);
			GooseMessages_old.GooseMsgFilterLDName();
			Thread.sleep(3000);
			Boolean status = Demo3.compareXLSheetFilter("TR3000_ld_Expected", "TR3000_ld_Actual");
			Thread.sleep(3000);
			if (status) {
				Thread.sleep(3000);
				GooseMessages_old.GooseMsgFilterDataSetName();
				Thread.sleep(3000);
				Boolean status2 = Demo3.compareXLSheetFilter("TR3000_dataset_expected", "TR3000_dataset_Actual");
				Thread.sleep(3000);
				Boolean expected_status = true;
				assertEquals(status2, expected_status);
			}
		}

	}

	// To check GSE Filter through each column
	@Test
	public void gooseFilterTestColumn() throws Exception {
		Thread.sleep(3000);
		// SCLFileLoading.loadSVFileInFileSystem("TR3000","icd");//loading a gse file
		Thread.sleep(3000);
		// SCLFileLoading.loadSVFileInFileSystem("BCU_402T","scd");
		Thread.sleep(3000);
		GooseMessages_old.GooseMsgFilterIEDNameColumn();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("TR3000_ied_Expected", "TR3000_ied_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Thread.sleep(3000);
			GooseMessages_old.GooseMsgFilterLDName();
			Thread.sleep(3000);
			Boolean status = Demo3.compareXLSheetFilter("TR3000_ld_Expected", "TR3000_ld_Actual");
			Thread.sleep(3000);
			if (status) {
				Thread.sleep(3000);
				GooseMessages_old.GooseMsgFilterDataSetName();
				Thread.sleep(3000);
				Boolean status2 = Demo3.compareXLSheetFilter("TR3000_dataset_expected", "TR3000_dataset_Actual");
				Thread.sleep(3000);
				Boolean expected_status = true;
				assertEquals(status2, expected_status);
			}
		}

	}

	// SM_022-Verify the Delete option deletes the selected message from the table
	@Test
	public void GoosemessagedeleteTest() throws Exception // SM_022
	{
		SCLFileLoading_old.loadSVFileInFileSystem("TR3000", "icd");// loading a gse file
		Thread.sleep(3000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		// GSE message table element in Station message
		List<WebElement> rows = Browsers.driver
				.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]"));
		boolean status = false;
		if (rows.size() == 1) {
			status = true;
		}
		// delete element present in GSE message
		Browsers.driver
		.findElement(
				By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[17]/a/i"))
		.click();
		Thread.sleep(2000);
		// delete element modal window
		Browsers.driver.findElement(By.xpath("/html/body/div[5]/div/div/div[3]/a/button")).click();
		Thread.sleep(2000);
		rows = Browsers.driver
				.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]"));
		System.out.println("No of rows after delete : " + rows.size());
		boolean expected_status = true;
		if (rows.size() == 0) {
			expected_status = true;
		}
		if (!(status || expected_status)) {
			status = true;
		}
		Thread.sleep(2000);
		Login.logoutUser();
		assertEquals(status, expected_status);
	}

	// To check selct all functionality is working for IED selection
	@Test
	public void iedSelectAll() throws Exception {

		Thread.sleep(2000);
		Boolean actual = false;
		actual = SCLFileLoading_old.loadSCLFile("BCU_402T", "scd");// loading a gse file
		if (actual) {
			Reporter.log("All IEDs are selected");
		} else
			Reporter.log("Error:Cannot select the IED");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual, expected_status);

	}

	// SM_078-To check pagination is working properly in GSE message
	@Test
	public void gsePagination() throws Exception {
		System.out.println("To check if GSE pagination works or not");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("TR3000", "icd");// loading a gse file
		Boolean actual = GooseMessages_old.getPagination();
		if (actual) {
			Reporter.log("Gosse pagination is working in Goose messages");
		} else
			Reporter.log("Error:Gosse pagination is not working in Goose messages");
		Boolean expected_status = true;
		assertEquals(actual, expected_status);
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