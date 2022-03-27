/*package com.kalkitech.doble.testcases.stationmessages;

import static org.testng.Assert.assertEquals;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.stationmessages.SVMessages;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.Demo3;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SVMessagesTest {

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

	// SM_003 To check Sv message table/page is available
	@Test
	public void svMessagePagesAvailableTest() throws Exception {
		System.out.println("To test SV message pages are availbe or not");
		SVMessages.svMessagePagesAvailable();
		Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("livestationmsgsample"));
	}

	// SM_118-Verify the Clear Data option cleans up all SV messages
	@Test
	public void svMessageClearDataTest() throws Exception {
		System.out.println("To clear data in SV message Table");
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");
		boolean actual_status = SVMessages.svMessageclearData();
		if (actual_status) {
			Reporter.log("clear all data from SV message");
		} else
			Reporter.log("Error: cannot clear all data from SV message");
		Thread.sleep(2000);
		boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_003To check whether sv Message is being loaded or not
	@Test
	public void svMessageloadVerificationTest() throws Exception {
		System.out.println("To load a SV message that if the message gets loaded or not");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");
		Thread.sleep(4000);
		SVMessages.svMessageData();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("sv_actual", "sv_expected");
		if (actual_status)
			Reporter.log("Epected result of all the columns with values of SV message are matched with actual result ");
		else
			Reporter.log(
					"Error:Epected result of all the columns with values of SV message did not match with actual result ");
		Thread.sleep(3000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_116-To check sample rate of a SCL file(compare expected sample rate with
	// sample rate obtained after automation check)
	@Test
	public void sampleRateCheckTest() throws Exception {
		System.out.println("To check if the Sample is column is available or not");
		Boolean expected_status = true;
		Boolean status = false;
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_8ASDU_3streams_12800smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessageSR12800();
		Boolean actual_status = Demo3.compareXLSheets("SR_12800_expected", "SR_12800_Actual");
		if (actual_status) {
			Reporter.log(
					"Epected result of all the columns with values of SV message with sample rate 128000 are matched with actual result ");
			status = true;
		} else {
			Reporter.log(
					"Error:Epected result of all the columns with values of SV message with sample rate 128000 did not match with actual result ");
			status = false;
		}
		Thread.sleep(2000);
		assertEquals(status, expected_status);
	}

	// SM_117-Check corresponding ASDU of a SCL File.
	@Test
	public void asduCheckTest() throws Exception {
		System.out.println("To check if the asdu column in station message SV");
		Boolean expected_status = true;
		Boolean status = false;
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		SVMessages.asduCheck();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("asdu_Expected", "asdu_Actual");
		if (actual_status) {
			status = true;
		} else {
			status = false;
		}
		assertEquals(status, expected_status);
	}

	// SM_151,152,153,154,156,157,158,159,160,161-Filter Sv message columns through
	// the filter box available
	@Test
	public void svFilterTest() throws Exception {
		System.out.println("To check filter in SV column");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		SVMessages.svMsgFilterIEDName();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("sv_ied_Expected", "sv_ied_Actual");
		if (actual_status) {
			SVMessages.svMsgLDName();
			Thread.sleep(3000);
			Boolean status1 = Demo3.compareXLSheetFilter("sv_ld_Expected", "sv_ld_Actual");
			if (status1) {
				SVMessages.svMsgDatasetRef();
				Thread.sleep(3000);
				Boolean status3 = Demo3.compareXLSheetFilter("sv_dataset_Expected", "sv_dataset_Actual");
				if (status3) {
					Boolean expected_status = true;
					assertEquals(status3, expected_status);

				}
			}
		}
		Thread.sleep(3000);
	}

	// Filter SV message through Filter tab available for each column
	@Test
	public void svFilterTestColumn() throws Exception {
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_1ASDU_3streams_96000smp", "icd");// loading a gse file
		Thread.sleep(3000);
		SVMessages.svMsgFilterIEDName();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheetFilter("sv_ied_Expected", "sv_ied_Actual");
		if (actual_status) {
			SVMessages.svMsgLDName();
			Thread.sleep(3000);
			Boolean status1 = Demo3.compareXLSheetFilter("sv_ld_Expected", "sv_ld_Actual");
			if (status1) {
				SVMessages.svMsgDatasetRef();
				Thread.sleep(3000);
				Boolean status3 = Demo3.compareXLSheetFilter("sv_dataset_Expected", "sv_dataset_Actual");
				if (status3) {
					Boolean expected_status = true;
					assertEquals(status3, expected_status);
				}
			}
		}
		Thread.sleep(3000);

	}

	// SM_163-edit current Scale factor field in SV message configuration tab
	@Test
	public void editCurrentSF() throws Exception {
		System.out.println("To edit current Scale Factor in configuration");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual = SVMessages.editCSF();
		if (actual)
			Reporter.log("Current scale factor is changed after edit");
		else
			Reporter.log("Error:Current scale factor did not change after edit");
		Boolean expected_status = true;
		assertEquals(actual, expected_status);
	}

	// SM_164-edit current offset value field in SV message configuration tab
	@Test
	public void editCurrentOF() throws Exception {
		System.out.println("To edit current Offset in configuration");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual = SVMessages.editCOF();
		if (actual)
			Reporter.log("Current offset value is changed after edit");
		else
			Reporter.log("Error:Current offset value did not change after edit");
		Boolean expected_status = true;
		assertEquals(actual, expected_status);

	}

	// SM_165-edit voltage Scale factor field in SV message configuration tab
	@Test
	public void editVoltageSF() throws Exception {
		System.out.println("To edit current voltage scale factor in configuration");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual = SVMessages.editVSF();
		if (actual)
			Reporter.log("Voltage scale factor is changed after edit");
		else
			Reporter.log("Error:Voltage scale factor did not change after edit");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual, expected_status);
	}

	// SM_166-edit voltage field in SV message configuration tab
	@Test
	public void editVoltageOF() throws Exception {
		System.out.println("To edit current voltage offset value in configuration");
		Thread.sleep(3000);
		//SCLFileLoading.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual = SVMessages.editVOF();
		if (actual)
			Reporter.log("Voltage Offset value is changed after edit");
		else
			Reporter.log("Error:Voltage Offset value did not change after edit");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual, expected_status);
	}

	// SM_119-Delete SV Message
	@Test
	public void deleteSVMsgTest() throws Exception {
		System.out.println("To delete SV message from SV table");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("SV_4 streams_1ASDU_8 channels_48000", "icd");// loading a gse file
		Thread.sleep(3000);
		Boolean actual_status = SVMessages.deleteData();
		if (actual_status)
			Reporter.log("SV message got deleted");
		else
			Reporter.log("Error:SV Message did not delete");
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);

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