/*package com.kalkitech.doble.classes.trigger;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class TriggerEditor extends BaseClass {

	public TriggerEditor(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	//Element -trigger in menu
	public static WebElement trigger() throws Exception {
		try {
			element = WebDriverUtils.findElementById("trigger");
			Reporter.log("trigger is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:trigger is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-trigger list in menu
	public static WebElement triggerList() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id='trigger-list']/a[1]");
			Reporter.log("trigger list is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: trigger list is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element -  search
	public static WebElement Search() throws Exception
	{
		try{
			element = WebDriverUtils.findElementByName("table_search");
			Reporter.log("search in trigger");
		}catch (Exception e){
			Reporter.log("Error: search in trigger");
			throw(e);
		}
		return element;
	}

	// to check if seaching trigger works
	public static Boolean searchFunctionTriggerTable(String triggerName) throws Exception
	{
		WebDriverUtils.implicitlyWait();
		boolean status = false;
		trigger().click();
		Thread.sleep(5000);
		triggerList().click();
		status = Project_old.wordSearchInTable("//*[@id='dtable']/tbody/tr", "test", "2");
		Thread.sleep(5000);
		return status;
	}

	//Element-analysis in menu
	public static WebElement analysis() throws Exception {
		try {
			element = WebDriverUtils.findElementById("analysis");
			Reporter.log("analysis is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: analysis is not found in menu");
			throw (e);
		}
		return element;
	}

	// Menu - Settings in Project
	public static WebElement triggerMenuSettings() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("Trigger Settings is found in repository");

		} catch (Exception e) {
			Reporter.log("Error: Trigger Settings is not found in repository");
			throw (e);
		}
		return element;
	}

	// Element - upload button in settings
	public static WebElement TriggerEditorMenu() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Trigger Editor");
			Reporter.log("Trigger Editor is found in settings");
		} catch (Exception e) {
			Reporter.log("Error: Trigger Editor is not found in settings");
			throw (e);
		}
		return element;
	}

	//open trigger editor tab from menu
	public static Boolean OpenTriggerEditor() throws Exception {
		//WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
		Boolean status = true;
		Thread.sleep(5000);
		trigger().click();
		Thread.sleep(5000);
		triggerList().click();
		Thread.sleep(5000);
		triggerMenuSettings().click();
		Thread.sleep(5000);
		TriggerEditorMenu().click();
		Thread.sleep(5000);
		return status;
	}
}
*/