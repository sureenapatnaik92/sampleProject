/*package com.kalkitech.doble.testcases.livedata;


import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.livedata.LiveData;
import com.kalkitech.doble.classes.livedata.LiveDataGraph;
import com.kalkitech.doble.classes.livedata.LiveDataTabular;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class LiveDataGraphTest {

	@BeforeMethod
	public void beforeTest() throws Exception {
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.liveDataGraph().click();
	}
	
	//LD_110-Verify that user is able to navigate to Live data-Graphical page.
	@Test(priority = 0)
	public static void LiveDataGraphPageAvailable() throws Exception {
		System.out.print("To check live data table /page  graph available");
		Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("livedata-graph-configured"));
	}

	//LD_118
	@Test(priority = 1)
	public void dataSelectorGraphicalTest() throws Exception {
		System.out.println("Select data selector in live data graphical");
		Boolean actual_status = LiveDataGraph.dataSelector();
		Thread.sleep(2000);
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:data selector in graph is not avaiable");

	}

	//LD_018-Verify that when DA of already existing DO is added to the table, warning /error message pops up
	@Test(priority = 2)
	public void addDAErrormessageTest() throws Exception {
		System.out.println("error message coming on adding DA");
		Boolean actual_status = LiveDataGraph.addDAErrormessage();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:error message did not appear while adding DA");

	}

	//LD_020-Verify the deleted DO/DA can be added again, and deleted/added multiple times
	@Test(priority = 3)
	public void AdddeleteDOTest() throws Exception {
		System.out.println("Add DO and delete DO from live data");
		Boolean actual_status = LiveDataGraph.AdddeleteDO();
		Thread.sleep(2000);
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Cannot delete DO");

	}

	//LD_007-Verify that “Live Data” page contains toggle button at right top corner of the page.
	@Test(priority = 4)
	public void TogglebtnAvailableTest() throws Exception {
		System.out.print("To check toggle button in live data table");
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean actual_status = LiveDataGraph.TogglebtnAvailable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Toggle Button is not available");
	}

	// Checking if check boxes are available to select data items
	@Test(priority = 5)
	public void checkBoxesForDataTest() throws Exception {

		System.out.print("To check if the checkboxes are available to select data in project list");
		Project_old.clearData();
		Project_old.UploadProject("projecttestlive");
		Project_old.testOpenProject("projecttestlive");
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.liveDataGraph().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean actual_status = LiveDataGraph.checkBoxesForData();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Checkboxes are not avaiable for data test");
	}

	@Test(priority = 6)
	public void DeleteDatabtnAvailableTest() throws Exception {
		System.out.print("To check if delete button present for all the files in Live Data");
		Boolean expected_status = true;
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean actual_status = LiveDataGraph.DeleteDatabtnAvailable();
		Assert.assertEquals(actual_status, expected_status,"Error:Delete button is not available");
	}


	//LD_008
	@Test(priority = 7)
	public void RunmodeTogglebtnTest() throws Exception {
		System.out.print("To check if toggle button is in run mode working properly or not");
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean actual_status = LiveDataGraph.toggle();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Run mode toggle is not available");
	}
	
	//LD_236-Verify individual item is deleted with Delete button (Tabular)
	@Test(priority = 8)
	public void DeleteDataTest() throws Exception {
		System.out.println("Delete data from live data individually through checkbox");
		Project_old.clearData();
		Project_old.UploadProject("projecttestlive");
		Project_old.testOpenProject("projecttestlive");
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.liveDataGraph().click();
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean expected_status = true;
		Boolean actual_status1 = LiveDataGraph.DeleteData("GOOSE");
		Thread.sleep(2000);
		Assert.assertEquals(actual_status1, expected_status,"Error:Goose messages cannot be deleted");
	}
	
	//LD_027,031,033,035,037,039,118,120,122,124,126,128,
	@Test(priority = 9)
	public void hidegseColumnTest() throws Exception {
		System.out.println("to hide gse columns from data picker in live data ");
		Boolean actual_status = LiveDataGraph.hideGseColumn();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Goose column cannot be hidden");
	}
	
	//LD_029,032,034,036,038,119,121,123,125,127,129,032,034,036,038,119,121,123,125,127,129
	@Test(priority = 10)
	public void showGseColumnTest() throws Exception {
		System.out.println("to select gse columns from dataselector and show it in the table ");
		Boolean actual_status = LiveDataGraph.showGseColumn();
		Thread.sleep(2000);
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Goose columns are not shown");
	}
	
	//LD_130,132,134,136,138,140,142,144
	@Test(priority = 11)
	public void hidesvColumnTest() throws Exception {
		System.out.println("to hide SV columns from data picker in live data ");
		Boolean actual_status = LiveDataGraph.hidesvColumn();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:SV Columns cannot be hidden");
	}
	
	//LD_131,133,135,137,139,141,143,145,147
	@Test(priority = 12)
	public void showsvColumnTest() throws Exception {
		System.out.println("to select SV columns from dataselector and show it in the table ");
		Boolean actual_status = LiveDataGraph.showsvColumn();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:SV columns cannot be shown");
	}
	
	//LD_242-Verify that the delete button works for a selected configuration (Graph)
	@Test(priority = 13)
	public void DeleteConfigTest() throws Exception {
		System.out.print("To delete configuration functionality works or not");
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean actual_status = LiveDataGraph.DeleteConfig("test");
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Cannot delete configurations");
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