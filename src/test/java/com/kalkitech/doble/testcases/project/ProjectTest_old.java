/*package com.kalkitech.doble.testcases.project;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;


public class ProjectTest_old {

	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser("CH");
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);
	}

	//PS_005-This method is to verify column names in file system table
	@Test (priority=1)
	public void deleteIfProjectExists() throws Exception {
		System.out.println("To delete project if the project exists in the list");
		Thread.sleep(2000);
		Project_old.project().click();
		Thread.sleep(2000);
		Boolean actual_status = Project_old.CheckFileInFileSystem("project1");
		Boolean actual_status1 = false;
		if (!actual_status) {
			Project_old.UploadProject("project1");
			actual_status1 = true;
		}
		if (actual_status) {
			actual_status1 = false;
			actual_status1 = Project_old.deleteProjectInProjectTable("project1");
		}
		Boolean expected_status = true;
		Assert.assertEquals(actual_status1, expected_status,"Error:Cannot delete project");
	}

	@Test(priority=2)
	public void columnCheckInfilesystemTableTest() throws Exception {
		System.out.println("To check columns in SCL Files");
		Boolean actual_status = Project_old.CheckFileInFileSystem("project1");
		if (!actual_status) {
			Project_old.UploadProject("project1");
			actual_status = true;
		}
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Project file is present in project table");
	}

	//PS_021-Verify the Search option could filter the project names, and list projects with the searched string
	@Test(priority=3)
	public void searchProject() throws Exception {
		System.out.println("To seach project from the search filter");
		Boolean actual_status = Project_old.searchProject("project1");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:project is not  in project table");
	}

	//
	@Test(priority=4)
	public void checkInFileSystemTest() throws Exception {

		System.out.println("To check whethr a file is there in file system");
		Boolean expected_status = true;
		Boolean actual_status1 = Project_old.checkInDisplay("project1");
		Assert.assertEquals(actual_status1, expected_status,"Error:project is not present in the table");
	}

	//PS_006
	@Test(priority=5)
	public void openProject() throws Exception {
		System.out.println("To open project from project system list");
		Boolean expected_status = true;
		Boolean actual_status1 = Project_old.testOpenProject("project1");
		Assert.assertEquals(actual_status1, expected_status,"Error:Cannot open project");
	}

	//PS_006
	@Test
	public void testSCLFileLoadedOpenProject() throws Exception {

		System.out.println("To load SCL file, craete project and open that project");
		Boolean expected_status = true;
		Project_old.project().click();
		Thread.sleep(2000);
		Boolean actual_status = Project_old.CheckFileInFileSystem("project2");
		if (!actual_status) {
			Project_old.UploadProject("project2");
		}
		Project_old.testOpenProject("project2");
		Boolean actual_status2 = Project_old.testSCLFileLoadedOpenProject("BCU_402T");
		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot create project with SCL file");
	}

	//PS_008
	@Test
	public void testTriggerLoadedOpenProject() throws Exception {

		System.out.println("To load a trigger and create a project and open that project");
		Boolean expected_status = true;
		Project_old.project().click();
		Thread.sleep(2000);
		Boolean actual_status = Project_old.CheckFileInFileSystem("project2");
		if (!actual_status) {
			Project_old.UploadProject("project2");
		}
		Project_old.testOpenProject("project2");
		Boolean actual_status2 = Project_old.testTriggerLoadedOpenProject("test");
		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot create project with trigger file");
	}

	//PS_007-
	@Test
	public void testLiveDataOpenProject() throws Exception {

		System.out.println("To load a project with SCL files and trigger and open the project");
		Boolean expected_status = true;
		Project_old.project().click();
		Thread.sleep(2000);
		Boolean actual_status = Project_old.CheckFileInFileSystem("project2");
		if (!actual_status) {
			Project_old.UploadProject("project2");
		}
		Project_old.testOpenProject("project2");
		Boolean actual_status2 = Project_old.checkLiveDataGraph("testconfig");
		Assert.assertSame(actual_status2, expected_status, "Error:Cannot create project with Live data file");
		System.out.println("Test 6 testLiveDataOpenProject" + actual_status2);
	}

	//PS_021-check delete project one by one
	@Test
	public void checkDeleteProject() throws Exception {
		Boolean expected_status = true;
		System.out.println("checking Delete Project ");
		Boolean actual_status = Project_old.CheckFileInFileSystem("project1");
		if (!actual_status) {
			Project_old.UploadProject("project1");
		}
		Boolean actual_status2= Project_old.deleteProjectInProjectTable("project1");
		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot delete project");
		System.out.println("Test 7 checking Delete Project ");
	}

	//PS_020-delete all projects throgh delete all option which deletes all project at once
	@Test public void deleteAllProjects() throws  Exception {
		Boolean actual_status = Project_old.deleteAllProject();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//PS_006-load SCL file for project creation
	//deleted as PS_006 was already implemented as	testSCLFileLoadedOpenProject()
	@AfterMethod
	public void tearDown(ITestResult result) {

		// Here will compare if test is failing then only it will enter into if
		// condition
		if (ITestResult.FAILURE == result.getStatus()) {
			try {
				String testName = result.getMethod().getConstructorOrMethod().getName();
				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			} catch(Exception e) {

				Reporter.log("Exception while taking screenshot " + e.getMessage());
			}
		}
		Reporter.log("test ends");
		Browsers.driver.quit();
	}
}*/