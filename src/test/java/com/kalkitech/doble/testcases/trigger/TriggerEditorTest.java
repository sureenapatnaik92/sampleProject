/*package com.kalkitech.doble.testcases.trigger;



import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.classes.trigger.Trigger;
import com.kalkitech.doble.classes.trigger.TriggerEditor;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class TriggerEditorTest {

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

	@Test(priority = 6)
	public void openTriggerEditor() throws Exception
	{
		System.out.println("To open trigger Editor page");
		Boolean actual_status = TriggerEditor.OpenTriggerEditor();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void savingWithoutInputVariableTest() throws Exception //TR_036
	{
		System.out.println("To save trigger without giving input variable");
		//Project.clearData();
		Project_old.UploadProject("inputVariableValidation");
		Project_old.testOpenProject("inputVariableValidation");
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("noinputvariable","Found disconnected/orphan nodes");
		System.out.println("actual_status is "+actual_status);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void savingWithoutLogicalGateTest() throws Exception //TR_037
	{
		System.out.println("To save trigger without configuring any gate");
		Project_old.UploadProject("noGateCheck");
		Project_old.testOpenProject("noGateCheck");
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("nogate","Trigger validation succeded");
		System.out.println("actual_status is "+actual_status);
		
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	@Test
	public void savingWithoutRecordVariableTest() throws Exception //TR_038
	{
		System.out.println("To save trigger without recording variable");
		//Project.clearData();
		Project_old.UploadProject("recordVariableValidation");
		Project_old.testOpenProject("recordVariableValidation");
		Boolean actual_status = Trigger.EditTriggerInTriggerlist("norecordvariable","Invalid trigger instance(s)");
		System.out.println("actual_status is "+actual_status);
		
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	
	@Test
	public void disableTriggerCheck() throws Exception //TR_042
	{
		System.out.println("To disable trigger");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Thread.sleep(5000);
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		WebElement runStatus = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[7]/a[1]/i"));
		String statusText = runStatus.getText();
		System.out.println(statusText);
		boolean enabled_first = false;
		if(statusText == "Enabled")
		{
			enabled_first = true;
		}
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[7]/a[1]/i")).click();
		Thread.sleep(5000);
		runStatus = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[7]/a[1]/i"));
		statusText = runStatus.getText();
		System.out.println(statusText);
		boolean disabled_later = false;
		if(statusText == "Disabled")
		{
			disabled_later = true;
		}

		Assert.assertEquals(enabled_first, disabled_later);
	}

	@Test
	public void enableTriggerCheck() throws Exception // TR_043
	{
		System.out.println("To enable trigger");
		disableTriggerCheck();
		WebElement runStatus = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr/td[6]"));
		String statusText = runStatus.getText();
		System.out.println(statusText);
		boolean disabled_first = false;
		if(statusText == "Disabled")
		{
			disabled_first = true;
		}
		Browsers.driver.findElement(By.className("enablenow")).click();
		Thread.sleep(5000);
		runStatus = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr/td[6]"));
		statusText = runStatus.getText();
		System.out.println(statusText);
		boolean enabled_later = false;
		if(statusText == "Disabled")
		{
			enabled_later = true;
		}
		Assert.assertEquals(disabled_first, enabled_later);
	}

	@Test
	public void triggerColumnsTest() throws Exception //TR_049
	{
		System.out.println("To check columns in trigger page");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		boolean expected_status = true;
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		WebElement tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[2]/div"));
		String headerText = tableHeader.getText();
		System.out.println(headerText);
		boolean status = false;
		Thread.sleep(5000);
		if(headerText.equals("Trigger Name"))
		{
			tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[3]/div"));
			headerText = tableHeader.getText();
			System.out.println(headerText);
			Thread.sleep(5000);
			if(headerText.equals("Description"))
			{
				tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[4]/div"));
				headerText = tableHeader.getText();
				System.out.println(headerText);
				if(headerText.equals("Created Date"))
				{
					tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[5]/div"));
					headerText = tableHeader.getText();
					System.out.println(headerText);
					if(headerText.equals("Validation"))
					{
						tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[6]/div"));
						headerText = tableHeader.getText();
						System.out.println(headerText);
						if(headerText.equals("Run Status"))
						{
							tableHeader = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[7]/div"));
							headerText = tableHeader.getText();
							System.out.println(headerText);
							if(headerText.equals("Options"))
							{
								status = true;
							}
						}
					}
				}
			}
		}
		Assert.assertEquals(expected_status, status);
	}

	@Test
	public void selectAllAvailableTest() throws Exception //TR_51
	{
		System.out.println("To select all available test");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		boolean expected_status = true;
		Trigger.trigger().click();
		Thread.sleep(4000);
		Trigger.triggerlist().click();
		Thread.sleep(4000);
		Browsers.driver.findElement(By.id("select_all")).click();
		boolean status = Browsers.driver.findElement(By.id("select_all")).isSelected();	
		Assert.assertEquals(expected_status, status);
	}

	@Test
	public void selectAllCheckTest() throws Exception //TR_052
	{
		System.out.println("To select all checkbox check");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr"));
		Browsers.driver.findElement(By.id("select_all")).click();
		boolean enable_check = true;
		for (int i =1;i<=rows.size();i++)
		{
			enable_check &= Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).isSelected();
		}
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("select_all")).click();
		boolean disable_check = true;
		for(int i =1;i<=rows.size();i++)
		{
			disable_check &= !(Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).isSelected());
		}
		System.out.println(rows.size());
		Assert.assertEquals(enable_check, disable_check);
	}

	@Test
	public void deleteTriggerTest() throws Exception //TR_053
	{
		System.out.println("To delete trigger from trigger list ");
		boolean expected_status = true;
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Project_old.UploadProject("recordVariableValidation");
		Project_old.testOpenProject("recordVariableValidation");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		List<WebElement> rows_before = Browsers.driver.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr"));
		System.out.println(rows_before.size());
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[1]/input")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a/i")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("deleteAllSelTgrs")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("deleteHref")).click();
		Thread.sleep(5000);
		List<WebElement> rows_after = Browsers.driver.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr"));
		System.out.println(rows_after.size());
		boolean status = false;
		if(rows_after.size() == (rows_before.size() - 1) )
		{
			status = true;
		}
		
		Assert.assertEquals(expected_status, status);
	}

	@Test
	public void checkUncheckTest() throws Exception //TR_050
	{
		System.out.println("To check and uncheck the checkbox");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr"));
		boolean enable_check = true;
		boolean disable_check = true;
		for (int i =1;i<=rows.size();i++)
		{
			Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).click();
			enable_check &= Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).isSelected();
			Thread.sleep(5000);
			Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).click();
			disable_check &= !(Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr["+i+"]/td[1]/input")).isSelected());
		}
		Assert.assertEquals(enable_check, disable_check);
	}

	@Test
	public void manualTriggerCheckUncheckTest() throws Exception //TR_063
	{
		System.out.println("To check manual trigger check and uncheck");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Project_old.UploadProject("recordVariableValidation");
		Project_old.testOpenProject("recordVariableValidation");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a/i")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("manualTrigger")).click();
		Thread.sleep(5000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr"));
		boolean enable_check = true;
		boolean disable_check = true;
		System.out.println(rows.size());
		for (int i =1;i<=rows.size();i++)
		{
			Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).click();
			enable_check &= Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).isSelected();
			Thread.sleep(5000);
			Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).click();
			disable_check &= !(Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).isSelected());
		}
		Assert.assertEquals(enable_check, disable_check);
	}

	@Test
	public void manualTriggetSelectAllAvailableTest() throws Exception //TR_064
	{
		System.out.println("To check if manual trigger select all available");
		boolean expected_status = true;
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a/i")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("manualTrigger")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("manualTriggerselect_all")).click();
		Thread.sleep(5000);
		boolean status = Browsers.driver.findElement(By.id("manualTriggerselect_all")).isSelected();
		Assert.assertEquals(expected_status, status);
	}

	@Test
	public void manualTriggeSelectAllCheckTest() throws Exception //TR_065
	{
		System.out.println("To select all manual trigger from trigger list");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a/i")).click();
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("manualTrigger")).click();
		Thread.sleep(5000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr"));
		Browsers.driver.findElement(By.id("manualTriggerselect_all")).click();
		boolean enable_check = true;
		for (int i =1;i<=rows.size();i++)
		{
			enable_check &= Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).isSelected();
		}
		Thread.sleep(5000);
		Browsers.driver.findElement(By.id("manualTriggerselect_all")).click();
		boolean disable_check = true;
		for(int i =1;i<=rows.size();i++)
		{
			disable_check &= !(Browsers.driver.findElement(By.xpath("/html/body/div[10]/div/div/form/div[1]/div/table/tbody/tr["+i+"]/td[1]/input")).isSelected());
		}
		Assert.assertEquals(enable_check, disable_check);
	}

	@Test
	public void searchTest() throws Exception //TR_056
	{
		System.out.println("To search project from project list");
		Project_old.UploadProject("enableDisableCheck");
		Project_old.testOpenProject("enableDisableCheck");
		Trigger.trigger().click();
		Thread.sleep(5000);
		Trigger.triggerlist().click();
		Thread.sleep(5000);
		String searchText = "validtrigger";
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")).sendKeys(searchText);
		Thread.sleep(5000);
		WebElement triggerName = Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr/td[2]"));
		Thread.sleep(5000);
		String triggerNameText = triggerName.getText();
		boolean expected_status = true;
		boolean status = false;
		System.out.println(triggerNameText);
		if(triggerNameText.equals(searchText))
		{
			status = true;
		}
		Assert.assertEquals(expected_status, status);
	}

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
		Browsers.driver.quit();
	}
}
*/