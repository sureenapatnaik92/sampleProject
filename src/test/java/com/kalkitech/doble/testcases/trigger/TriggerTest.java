/*package com.kalkitech.doble.testcases.trigger;

import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.classes.trigger.Trigger;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class TriggerTest {

	SCLFileLoading_old SCLFileLoading = PageFactory.initElements(Browsers.driver, SCLFileLoading_old.class);

	@BeforeMethod
	public void beforeTest() throws Exception
	{
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);

	}

	@Test
	public void TriggerUsingAndGateTest() throws Exception
	{

		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggertestUsingAND","Trigger validation succeded");
		//WebDriverUtils.Alert_Accept();
		System.out.println("actual_status is "+actual_status);
		
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}


	@Test
	public void TriggerUsingORGateTest() throws Exception
	{
		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("triggertestUsingOR","Trigger validation succeded");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void TriggerUsingORandANDGateTest() throws Exception
	{
		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggerUsingORandAND","Trigger validation succeded");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void TriggerUsingNOTGateTest() throws Exception
	{
		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggertestUsingNOT","Trigger validation succeded");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void TriggerUsingNANDGateTest() throws Exception
	{

		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggertestUsingNAND","Trigger validation succeded");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void TriggerUsingNORGateTest() throws Exception
	{
		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggertestUsingNOR","Trigger validation succeded");	
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}


	@Test
	public void TriggerUsingXNORGateTest() throws Exception
	{
		Boolean status = Project_old.CheckFileInFileSystem("GatesTest");
		if(status)
		{
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		else
		{
			Project_old.UploadProject("GatesTest");
			Project_old.openProjectElement("GatesTest");
			Project_old.testOpenProject("GatesTest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggertestUsingXNOR","Trigger validation succeded");
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}


	@Test
	public void TriggerUsingAllGatesTest() throws Exception
	{
		Project_old.project().click();
		Boolean status = Project_old.CheckFileInFileSystem("projecttest123");
		System.out.println(status);
		if(status)
		{
			Project_old.openProjectElement("projecttest123");
			Project_old.testOpenProject("projecttest123");
		}
		else
		{
			Project_old.UploadProject("projecttest123");
			Project_old.openProjectElement("projecttest123");
			Project_old.testOpenProject("projecttest123");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggerUsingAllGates","Trigger validation succeded");	
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);

	}


	@Test
	public void TriggerforTHDTest() throws Exception
	{

		Project_old.project().click();
		Boolean status = Project_old.CheckFileInFileSystem("projecttest");
		System.out.println(status);
		if(status)
		{
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}
		else
		{
			Project_old.UploadProject("projecttest");
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggerforTHD","Trigger validation succeded");	
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);

	}


	@Test
	public void TriggerforHarmonicsTest() throws Exception
	{
		Project_old.project().click();
		Boolean status = Project_old.CheckFileInFileSystem("projecttest");
		System.out.println(status);
		if(status)
		{
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}
		else
		{
			Project_old.UploadProject("projecttest");
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("TriggerforHarmonics","Trigger validation succeded");
		System.out.println("actual_status is "+actual_status);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);

	}


	@Test
	public void TriggerValidationTest() throws Exception
	{
		Project_old.project().click();
		Boolean status = Project_old.CheckFileInFileSystem("projecttest");
		System.out.println(status);
		if(status)
		{
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}
		else
		{
			Project_old.UploadProject("projecttest");
			Project_old.openProjectElement("projecttest");
			Project_old.testOpenProject("projecttest");
		}

		Boolean actual_status = Trigger.EditTriggerInTriggerlist("invalidtriggertest","Invalid trigger instance(s)");
		System.out.println("actual_status is "+actual_status);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);

	}

	//Verify scheduled manual trigger for GSE messages
	/*	@Test
		public void TriggerManual() throws Exception
		{
			Boolean actual_status = Project.CheckFileInFileSystem("proj1");
			if(!actual_status)
			{
				Project.UploadProject("proj1");
			}
			Boolean stat=Trigger.ManualTrigger();
			System.out.println("actual_status is "+actual_status);
			Boolean expected_status = true;
			Assert.assertEquals(stat, expected_status);

		}
	@Test
	public void triggerClose() throws Exception
	{
		Boolean stat=Trigger.MtriggerClose();

		Boolean expected_status = true;
		Assert.assertEquals(stat, expected_status);

	}

	//	Boolean actual_status = Trigger.EditTriggerInTriggerlist("triggerusingTHD","Trigger validation succeded");






	@AfterMethod
	public void tearDown(ITestResult result)
	{

		// Here will compare if test is failing then only it will enter into if condition
		if(ITestResult.FAILURE==result.getStatus())
		{
			try
			{
				String testName = result.getMethod().getConstructorOrMethod().getName();
				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			}
			catch (Exception e)
			{

				Reporter.log("Exception while taking screenshot "+e.getMessage());
			}

		}

		Reporter.log("test ends");
		Browsers.driver.quit();;

	}


}*/
