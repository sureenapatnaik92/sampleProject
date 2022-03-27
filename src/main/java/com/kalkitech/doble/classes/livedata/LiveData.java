/*package com.kalkitech.doble.classes.livedata;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class LiveData extends BaseClass {

	public LiveData(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;
	public static WebElement element1 = null;
	public static WebElement element2 = null;

	// Element -Trigger
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

	//Togle btn in Live data locator
	public static WebElement togglebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//span[@class = 'slider round']");
			Reporter.log("toggle is found ");
		} catch (Exception e) {
			Reporter.log("Error:toggle not found");
			throw (e);
		}
		return element;
	}

	//GSE Tab locator in Live Data
	public static WebElement gselivedatatab() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("GSE Live Data");
			Reporter.log("GSE Live Data is found ");
		} catch (Exception e) {
			Reporter.log("Error:GSE Live Data not found");
			throw (e);
		}
		return element;
	}

	// Element - Live Data tab
	public static WebElement LiveDataTab() throws Exception {
		try {
			element = WebDriverUtils.findElementById("livedata");
			Reporter.log("Live Data is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Live Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element - Live Data Tabular
	public static WebElement LiveDataTabular() throws Exception {
		try {
			element = WebDriverUtils.findElementById("livedata-tabular-configured");
			Reporter.log("Tabular is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Tabular is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element - Live Data Graph
	public static WebElement liveDataGraph() throws Exception {
		try {
			element = WebDriverUtils.findElementById("livedata-graph-configured");
			Reporter.log("Live Data Graph is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Live Data Graph is not found in menu");
			throw (e);
		}
		return element;
	}

	// Live Data tab in menu locator
	public static WebElement liveDatamenu() throws Exception {
		try {
			element = WebDriverUtils.findElementById("livedata");
			Reporter.log("Live Data  is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Live Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// To check Live Data pages(GSE and SV) are available or not
	public static void LiveDataPagesAvailable() throws Exception {
		Thread.sleep(2000);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Thread.sleep(2000);
		liveDataGraph().click();
		Thread.sleep(2000);
	}

	// To check for default toggle btn Locator
	public static Boolean defaultToggleAvailable() throws Exception {
		Boolean stat = false;
		Thread.sleep(2000);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Thread.sleep(2000);
		if (Browsers.driver.findElement(By.xpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/div[1]/label[2]/span"))
				.isEnabled()) {
			stat = true;
		} else
			stat = false;
		return stat;
	}

	//live data column test for GSE tab
	public static Boolean liveDataMessageTableColumns() throws Exception {
		Thread.sleep(2000);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Thread.sleep(2000);
		// clickAllDataSelectorCols();
		Browsers.driver.findElement(By.xpath("//html/body/div[1]/header/nav/a")).click();// dataselector button click
		Thread.sleep(2000);
		Boolean status = LiveDataTabular.DataSelectorclosebtn().isDisplayed();

		if (status == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}

		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("GSE Type");
		expected_columns.add("Source Address");
		expected_columns.add("Destination Address");
		expected_columns.add("GSE Control Block Ref");
		expected_columns.add("Dataset Name");
		expected_columns.add("GSE ID");
		expected_columns.add("SCL Details");
		expected_columns.add("Datatype");
		expected_columns.add("Delete");
		for (int j = 2; j <= 10; j++) {

			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/div[2]/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();// Columns name locator
			String name = name1.trim();
			actual_columns.add(name);

		}
		if (actual_columns.equals(expected_columns)) {
			return true;
		} else {
			return false;
		}
	}

	// To check menu btn available for hiding and showing menus
	public static Boolean menusHideAvailable() throws Exception {
		Boolean stat = false;
		Thread.sleep(2000);
		element1 = Browsers.driver.findElement(By.xpath("/html/body/div[1]/aside/section/ul/li[1]"));// main menu display display																						// element
		Thread.sleep(2000);
		if (element1.isDisplayed()) {
			Browsers.driver.findElement(By.xpath("/html/body/div[1]/header/nav/a")).click();// main menu hide element
			Thread.sleep(2000);
			stat = true;
		}
		Thread.sleep(2000);
		return stat;

	}

	// To check columns in GSE live data tab
	public static Boolean gooseMessageTableColumns() throws Exception {
		
		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("GSE Type");
		expected_columns.add("Source Address");
		expected_columns.add("Destination Address");
		expected_columns.add("GSE Control Block Ref");
		expected_columns.add("Dataset Name");
		expected_columns.add("GSE ID");
		expected_columns.add("SCL Details");
		expected_columns.add("Datatype");
		expected_columns.add("Delete");
		Thread.sleep(2000);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Thread.sleep(2000);
		Browsers.driver.findElement(By.xpath("//html/body/div[1]/header/nav/a")).click();// Dataselector close btn click
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/thead/tr/th"));
		int count1 = rows.size();
		Thread.sleep(2000);
		for (int j = 2; j <= count1; j++) {
			// GSE columns locator element in LD Tabular
			String name = Browsers.driver
					.findElement(By.xpath(
							"//*[@id=\"goosetable_wrapper\"]/div[2]/div/div/div[1]/div/table/thead/tr/th[" + j + "]"))
					.getText();
			// GSE table locator in live data tabular
			Browsers.driver.findElement(By.xpath("//*[@id=\"goosetable_wrapper\"]/div[2]/div/div/div[2]")).click();
			actual_columns.add(name);
		}
		if (actual_columns.equals(expected_columns)) {
			return true;
		} else {
			return false;
		}
	}

	// Toggle Btn in LD
	public static void toggle() throws Exception {
		Thread.sleep(2000);
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Boolean status = gselivedatatab().isDisplayed();
		Thread.sleep(2000);
		if (!status.equals(true)) {
			togglebtn().click();
			Thread.sleep(2000);
		}
	}

	// LD tabs(GSE and SV) Available method
	public static Boolean livedataSubTabsAvailable() throws Exception {
		Thread.sleep(2000);
		LiveDataTab().click();
		Boolean status1 = LiveDataTabular().isDisplayed();
		Boolean status2 = liveDataGraph().isDisplayed();
		Boolean status3 = trigger().isDisplayed();
		if ((status1 == true) && (status2 == true) && (status3 == true)) {
			Reporter.log("Tabular, Live Data Graph, trigger displayed");
			return true;
		} else {
			Reporter.log("Error : Tabular, Live Data Graph, trigger not displayed");
			return false;
		}

	}

	// user can navigate to different pages from the menus
	public static Boolean LiveDataPagesAvailable1() throws Exception {
		// WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Boolean status1 = Browsers.driver.getCurrentUrl().endsWith("livedata-tabular-configured");
		Thread.sleep(2000);
		liveDataGraph().click();
		Boolean status2 = Browsers.driver.getCurrentUrl().endsWith("livedata-graph-configured");
		Thread.sleep(2000);
		if ((status1 == true) && (status2 == true)) {
			Reporter.log("user can navigate to different pages from the menus");
			return true;
		} else {
			Reporter.log("Error : user could not navigate to different pages from the menus");
			return false;
		}
	}

	// Load LD graph page and LD Tabular page
	public static Boolean checklivedataPageLoad() throws Exception {
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Boolean status1 = LiveDataTabular.gselivedatatab().isDisplayed();
		Thread.sleep(2000);
		liveDataGraph().click();
		Boolean status2 = LiveDataGraph.gselivedatatab().isDisplayed();
		Thread.sleep(2000);
		Thread.sleep(2000);
		if ((status1 == true) && (status2 == true)) {
			Reporter.log("LD graph page and LD Tabular page loaded successfully");
			return true;
		} else {
			Reporter.log("Error : unable to load LD graph page and LD Tabular page");
			return false;
		}
	}

	//Toggle btn on and off check in LD tabular
	public static Boolean togglebtnAvailable() throws Exception {
		Thread.sleep(2000);
		LiveDataTab().click();
		Thread.sleep(2000);
		LiveDataTabular().click();
		Boolean status3 = LiveDataTabular.DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			LiveDataTabular.DataSelectorclosebtn().click();
		}
		Thread.sleep(2000);
		Boolean status1 = togglebtn().isDisplayed();
		Thread.sleep(2000);
		if (status1 == true) {
			return true;
		} else {
			return false;
		}
	}
}*/
