/*package com.kalkitech.doble.mandatorytestcases;

import static org.testng.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.dashboard.Dashboard;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.classes.stationmessages.SVMessages;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.Demo3;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class MandatoryTestsUser {

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

	// LO_073-checking if IED status table is available
	@Test(priority = 1)
	public void iedStatusTableAvailableTest() throws Exception {

		System.out.print("to test if ied status table available in dashboard");
		Boolean actual_status = Dashboard.iedStatusAvailable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:IED status table not available");
	}

	// LO_102,101-checking if columns are displayed or not
	@Test(priority = 2)
	public void iedStatusTableColumnTest() throws Exception {

		System.out.print("to test if ied status table column available in dashboard");
		Boolean actual_status = Dashboard.columnCheckInIEDTable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:IED status columns are not available");
	}

	// SM_018-check columns dataset items,data type are available in Station
	// messages
	@Test(priority = 3)
	public void columnsInGSEMessagesTest() throws Exception {
		System.out.print("check columns are available in gse page");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("Ch1Line1", "CID");
		Thread.sleep(3000);
		Boolean actual_status = GooseMessages_old.gooseMessageSubTableColumns();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Columns are not there in Goose Message");
	}

	// SM_071-Verify that SV messages contains parameters
	// like IED Name,LD Name,SV ID,Data set Name,SV CB Ref,APP ID,Destination
	// Address, VLAN ID,VLAN Priority,Sample Rate/s ,Synch, No. Of ASDU
	@Test(priority = 4)
	public void columnsInSVMessagesTest() throws Exception {
		System.out.print("to test if columns are proper in SV table");
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_2ASDU_3streams_4800smp", "icd");
		Thread.sleep(2000);
		Boolean actual_status = SVMessages.svColumnsTest();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Columns are not there in SV Message");
	}

	// PS_006
	@Test(priority = 6)
	public void openProjectTest() throws Exception {
		System.out.print("to test if open project in project list works");
		Boolean actual_status = Dashboard.checkProjectExists("abcdef");
		// if not available create project
		if (actual_status == false) {
			Dashboard.createProject("abcdef");
		}
		Boolean status = Dashboard.openProjectSkipMatches("abcdef");
		Boolean expected_status = true;
		Assert.assertEquals(status, expected_status,"Error:Cannot open the project");

	}

	// PS_009-Verify that user can download projects from project list
	@Test(priority = 7)
	public void downloadProject() throws Exception {
		System.out.print("download project from project list");
		Boolean actual_status = Dashboard.checkProjectExists("abcdef");
		if (actual_status == false) {
			Dashboard.createProject("abcdef");
		}
		Boolean status = Dashboard.downloadProject("abcdef");
		Boolean expected_status = true;
		Assert.assertEquals(status, expected_status,"Error:Cannot download the project");
	}

	// PS_021-Verify user can delete all projects from project list
	@Test(priority = 8)
	public void deleteProjects() throws Exception {

		System.out.print("to test delete project from project list");
		Boolean expected_status = false;
		List<String> projects = new ArrayList<>();
		projects.add("hellohii");
		projects.add("abcdef");
		Boolean actual_status = Dashboard.checkMultipleProjectExists(projects);
		if (actual_status == false) {
			Dashboard.createProject("abcdef");
			Dashboard.createProject("hellohii");
		}
		Dashboard.deleteProjects(projects);
		Boolean status = Dashboard.checkMultipleProjectExists(projects);
		expected_status = false;
		Assert.assertEquals(status, expected_status,"Error:Cannot delete the project");

	}

	// PS_001-User can select the SCL or SV Files configuration for project creation
	@Test(priority = 9)
	public void selectSCLFiles() throws Exception {

		System.out.print("Select SCL files to create project");
		Boolean actual_status = Dashboard.checkProjectExists("abcde1");
		if (actual_status) {
			Project_old.deleteProjectInProjectTable("abcde1");
		}
		SCLFileLoading_old.sclFileWithSVLoad(); // load some files
		Thread.sleep(3000);
		Boolean actual_status2 = Dashboard.selectSCLorSV(); // select files to create proj
		if (actual_status2) {
			Reporter.log("Created project with Goose or SV files");
		} else
			Reporter.log("Error:Cannot create project with Goose or SV files");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status2, expected_status);
	}

	// LO_103-Verify that user can edit IP address in IED Status table
	@Test(priority = 11)
	public void editIPInIEDTable() throws Exception {

		System.out.print("to edit ip in IED status table");
		Boolean actual_status = Dashboard.editIPIEDTable();
		if (actual_status) {
			Reporter.log("IP is edited in IED status table");
		} else
			Reporter.log("Error:No Ip to edit");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	// LO_102-IED Status table should display status of all IEDs.
	@Test(priority = 10)
	public void checkStatusforAllIEDs() throws Exception {

		System.out.print("to check status whetr offline or online for IEDs");
		SCLFileLoading_old.loadSVFileInFileSystem("Ch1Line1", "cid");
		Thread.sleep(3000);
		Boolean actual_status = Dashboard.checkStatusforAllIEDs();
		if (actual_status) {
			Reporter.log("IP is edited in IED status table");
		} else
			Reporter.log("Error:No Ip to edit");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	// SM_101
	@Test(priority = 14)
	public void SCLFileWithSV4800() throws Exception {
		System.out.print("To load SCL file have sample rate 4800");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_2ASDU_3streams_4800smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessageSR4800();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheets("SR_4800_expected", "SR_4800_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("SV with 4800 sample rate got loaded and compared");
		} else
			Reporter.log("Error:Cannot load sample rate 4800 and comparison failed");
		Thread.sleep(2000);
		Login.logoutUser();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_102
	@Test(priority = 15)
	public void SCLFileWithSV12800() throws Exception {
		System.out.print("To load SCL file have sample rate 12800");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_8ASDU_3streams_12800smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessageSR12800();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheets("SR_12800_expected", "SR_12800_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("SV with 12800 sample rate got loaded and compared");
		} else
			Reporter.log("Error:Cannot load sample rate 12800 and comparison failed");
		Thread.sleep(2000);
		Login.logoutUser();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_103
	@Test(priority = 16)
	public void SCLFileWithSV14400() throws Exception {
		System.out.print("To load SCL file have sample rate 14400");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_6ASDU_3streams_14400smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessageSR14400();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheets("SR_14400_expected", "SR_14400_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("SV with 14400 sample rate got loaded and compared");
		} else
			Reporter.log("Error:Cannot load sample rate 14400 and comparison failed");
		Thread.sleep(2000);
		Login.logoutUser();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_104
	@Test(priority = 17)
	public void SCLFileWithSV96000() throws Exception {
		System.out.print("To load SCL file have sample rate 96000");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_1ASDU_3streams_96000smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessageSR96000();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheets("SR_96000_expected", "SR_96000_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("SV with 96000 sample rate got loaded and compared");
		} else
			Reporter.log("Error:Cannot load sv with sample rate 96000 and comparison failed");
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_100
	@Test(priority = 18)
	public void SCLFile1StreamWithSV4800() throws Exception {
		System.out.print("To load SCL file have sample rate 4800");
		Thread.sleep(3000);
		SCLFileLoading_old.loadSVFileInFileSystem("sv_ch_8 ch_2ASDU_1streams_4800smp", "icd");
		Thread.sleep(3000);
		SVMessages.svMessage1StreamSR4800();
		Thread.sleep(3000);
		Boolean actual_status = Demo3.compareXLSheets("SR_1Stream_4800_expected", "SR_1Stream_4800_Actual");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("SV with 48000 sample rate got loaded and compared");
		} else
			Reporter.log("Error:Cannot load sv with sample rate 48000 and comparison failed");
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}

	// SM_061-Verify GOOSE message with multiple IEDs
	@Test(priority = 18)
	public void gseMultipleIEDs() throws Exception {
		System.out.print("To load SCL file having multiple ieds");
		Thread.sleep(3000);
		Boolean actual_status = SCLFileLoading_old.loadGSEFileWithMultipleIED("BCU_402T", "scd");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("GOOSE file have more than 1 IED");
		} else
			Reporter.log("Error:Goose file donnot have more than 1 IED");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);

	}

	// SM_088-Verify SV message for SCL file with single IED
	@Test(priority = 19)
	public void loadsingleIedTest() throws Exception {
		System.out.print("To load SCL file have single IEd");
		Thread.sleep(3000);
		Boolean actual_status = SCLFileLoading_old.loadGSEFileWithSingleIED("TR3000", "icd");
		Thread.sleep(3000);
		if (actual_status) {
			Reporter.log("Goose file with single IED got loaded");
		} else
			Reporter.log("Error:Cannot load Goose file with single IED");
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
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