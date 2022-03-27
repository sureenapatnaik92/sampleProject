/*package com.kalkitech.doble.testcases.project;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import com.kalkitech.doble.classes.project.Projects;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;


public class ProjectsTest {

	@BeforeMethod
	public void beforeTest() throws Exception
	{
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
	}
	
//	//PJT_000
//	@Test(priority = 1)
//	public void projectsOptionTest() throws Exception
//	{
//		System.out.println("PJT_000 : projectsOptionTest");
//		Boolean status = Projects.projectsOption();
//		Reporter.log("PJT_000 : projectsOptionTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//PJT_001
//	@Test(priority = 2)
//	public void projectsUIElementsTest() throws Exception
//	{
//		System.out.println("PJT_001 : projectsUIElementsTest");
//		Boolean status = Projects.projectsUIElements();
//		Reporter.log("PJT_001 : projectsUIElementsTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//PJT_002
//	@Test(priority = 3)
//	public void projectsDropdownMenuOptionsTest() throws Exception
//	{
//		System.out.println("PJT_002 : projectsDropdownMenuOptionsTest");
//		Boolean status = Projects.projectsDropdownMenuOptions();
//		Reporter.log("PJT_002 : projectsDropdownMenuOptionsTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//AutoIT not working
//	//PJT_003
	@Test(priority = 4)
	public void SearchBtnFunctionalityTest1() throws Exception
	{
		System.out.println("PJT_003 : SearchBtnFunctionalityTest1");
		Boolean status = Projects.SearchBtnFunctionality1();
		Reporter.log("PJT_003 : SearchBtnFunctionalityTest1 " + "status : "
				+ status.toString());	
		Assert.assertTrue(status);
	}
//	
//	//PJT_005
//	@Test(priority = 5)
//	public void SearchBtnFunctionalityTest2() throws Exception
//	{
//		System.out.println("PJT_005 : SearchBtnFunctionalityTest2");
//		Boolean status = Projects.SearchBtnFunctionality2();
//		Reporter.log("PJT_005 : SearchBtnFunctionalityTest2 " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//PJT_006
//	@Test(priority = 6)
//	public void AddNewOptionFunctionalityTest() throws Exception
//	{
//		System.out.println("PJT_006 : AddNewOptionFunctionalityTest");
//		Boolean status = Projects.AddNewOptionFunctionality();
//		Reporter.log("PJT_006 : AddNewOptionFunctionalityTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//		
//	//PJT_007
//	@Test(priority = 7)
//	public void UIElementsinNewProjectPageTest() throws Exception
//	{
//		System.out.println("PJT_007 : UIElementsinNewProjectPageTest");
//		Boolean status = Projects.UIElementsinNewProjectPage();
//		Reporter.log("PJT_007 : UIElementsinNewProjectPageTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//Unable to get the text from xpath for dropdown items
//	//PJT_008
//	@Test(priority = 7)
//	public void newProjectPageDropdownMenuOptionsTest() throws Exception
//	{
//		System.out.println("PJT_008 : newProjectPageDropdownMenuOptionsTest");
//		Boolean status = Projects.newProjectPageDropdownMenuOptions();
//		Reporter.log("PJT_008 : newProjectPageDropdownMenuOptionsTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
//	//PJT_018
//	@Test(priority = 7)
//	public void uploadProjectFunctionalityTest() throws Exception
//	{
//		System.out.println("PJT_018 : uploadProjectFunctionalityTest");
//		Boolean status = Projects.uploadProjectFunctionality();
//		Reporter.log("PJT_018 : uploadProjectFunctionalityTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
/*	//PJT_026
	@Test(priority = 8)
	public void ProjectListTableColumnsTest() throws Exception
	{
		System.out.println("PJT_026 : ProjectListTableColumnsTest");
		Boolean status = Projects.ProjectListTableColumns();
		Reporter.log("PJT_026 : ProjectListTableColumnsTest " + "status : "
				+ status.toString());	
		Assert.assertTrue(status);
	}
//	
//	//PJT_030
//	@Test(priority = 8)
//	public void ProjectListTableColumnsTest() throws Exception
//	{
//		System.out.println("PJT_030 : OptionsInDropdownForProjectsTest");
//		Boolean status = Projects.OptionsInDropdownForProjects();
//		Reporter.log("PJT_030 : OptionsInDropdownForProjectsTest " + "status : "
//				+ status.toString());	
//		Assert.assertTrue(status);
//	}
//	
	
	
	
	
	
	
	
	
	
	
//	//PS_005-This method is to verify column names in file system table
//	@Test (priority=1)
//	public void deleteIfProjectExists() throws Exception {
//		System.out.println("To delete project if the project exists in the list");
//		Thread.sleep(2000);
//		Project.project().click();
//		Thread.sleep(2000);
//		Boolean actual_status = Project.CheckFileInFileSystem("project1");
//		Boolean actual_status1 = false;
//		if (!actual_status) {
//			Project.UploadProject("project1");
//			actual_status1 = true;
//		}
//		if (actual_status) {
//			actual_status1 = false;
//			actual_status1 = Project.deleteProjectInProjectTable("project1");
//		}
//		Boolean expected_status = true;
//		Assert.assertEquals(actual_status1, expected_status,"Error:Cannot delete project");
//	}
//
//	@Test(priority=2)
//	public void columnCheckInfilesystemTableTest() throws Exception {
//		System.out.println("To check columns in SCL Files");
//		Boolean actual_status = Project.CheckFileInFileSystem("project1");
//		if (!actual_status) {
//			Project.UploadProject("project1");
//			actual_status = true;
//		}
//		Boolean expected_status = true;
//		Assert.assertEquals(actual_status, expected_status,"Error:Project file is present in project table");
//	}
//
//	//PS_021-Verify the Search option could filter the project names, and list projects with the searched string
//	@Test(priority=3)
//	public void searchProject() throws Exception {
//		System.out.println("To seach project from the search filter");
//		Boolean actual_status = Project.searchProject("project1");
//		Boolean expected_status = true;
//		Assert.assertEquals(actual_status, expected_status,"Error:project is not  in project table");
//	}
//
//	//
//	@Test(priority=4)
//	public void checkInFileSystemTest() throws Exception {
//
//		System.out.println("To check whethr a file is there in file system");
//		Boolean expected_status = true;
//		Boolean actual_status1 = Project.checkInDisplay("project1");
//		Assert.assertEquals(actual_status1, expected_status,"Error:project is not present in the table");
//	}
//
//	//PS_006
//	@Test(priority=5)
//	public void openProject() throws Exception {
//		System.out.println("To open project from project system list");
//		Boolean expected_status = true;
//		Boolean actual_status1 = Project.testOpenProject("project1");
//		Assert.assertEquals(actual_status1, expected_status,"Error:Cannot open project");
//	}
//
//	//PS_006
//	@Test
//	public void testSCLFileLoadedOpenProject() throws Exception {
//
//		System.out.println("To load SCL file, craete project and open that project");
//		Boolean expected_status = true;
//		Project.project().click();
//		Thread.sleep(2000);
//		Boolean actual_status = Project.CheckFileInFileSystem("project2");
//		if (!actual_status) {
//			Project.UploadProject("project2");
//		}
//		Project.testOpenProject("project2");
//		Boolean actual_status2 = Project.testSCLFileLoadedOpenProject("BCU_402T");
//		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot create project with SCL file");
//	}
//
//	//PS_008
//	@Test
//	public void testTriggerLoadedOpenProject() throws Exception {
//
//		System.out.println("To load a trigger and create a project and open that project");
//		Boolean expected_status = true;
//		Project.project().click();
//		Thread.sleep(2000);
//		Boolean actual_status = Project.CheckFileInFileSystem("project2");
//		if (!actual_status) {
//			Project.UploadProject("project2");
//		}
//		Project.testOpenProject("project2");
//		Boolean actual_status2 = Project.testTriggerLoadedOpenProject("test");
//		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot create project with trigger file");
//	}
//
//	//PS_007-
//	@Test
//	public void testLiveDataOpenProject() throws Exception {
//
//		System.out.println("To load a project with SCL files and trigger and open the project");
//		Boolean expected_status = true;
//		Project.project().click();
//		Thread.sleep(2000);
//		Boolean actual_status = Project.CheckFileInFileSystem("project2");
//		if (!actual_status) {
//			Project.UploadProject("project2");
//		}
//		Project.testOpenProject("project2");
//		Boolean actual_status2 = Project.checkLiveDataGraph("testconfig");
//		Assert.assertSame(actual_status2, expected_status, "Error:Cannot create project with Live data file");
//		System.out.println("Test 6 testLiveDataOpenProject" + actual_status2);
//	}
//
//	//PS_021-check delete project one by one
//	@Test
//	public void checkDeleteProject() throws Exception {
//		Boolean expected_status = true;
//		System.out.println("checking Delete Project ");
//		Boolean actual_status = Project.CheckFileInFileSystem("project1");
//		if (!actual_status) {
//			Project.UploadProject("project1");
//		}
//		Boolean actual_status2= Project.deleteProjectInProjectTable("project1");
//		Assert.assertEquals(actual_status2, expected_status,"Error:Cannot delete project");
//		System.out.println("Test 7 checking Delete Project ");
//	}
//
//	//PS_020-delete all projects throgh delete all option which deletes all project at once
//	@Test public void deleteAllProjects() throws  Exception {
//		Boolean actual_status = Project.deleteAllProject();
//		Boolean expected_status = true;
//		Assert.assertEquals(actual_status, expected_status);
//	}

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