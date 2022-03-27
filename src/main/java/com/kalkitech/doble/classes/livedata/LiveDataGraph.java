/*package com.kalkitech.doble.classes.livedata;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class LiveDataGraph extends BaseClass {

	public LiveDataGraph(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// Element - Live Data tab
	public static WebElement AddConfigbtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("addConfiguration");
			Reporter.log("Add Configuration button is found ");
		} catch (Exception e) {
			Reporter.log("Error:Add Configuration not found");
			throw (e);
		}
		return element;
	}

	// Element-Live Data Configuration name box
	public static WebElement AddConfigName() throws Exception {
		try {
			element = WebDriverUtils.findElementById("idConfigurationName");
			Reporter.log("Add Configuration name is found ");
		} catch (Exception e) {
			Reporter.log("Error:Add Configuration name not found");
			throw (e);
		}
		return element;
	}

	// Element-Live data add Btn
	public static WebElement Addbtn() throws Exception {
		try {

			element = WebDriverUtils.findElementById("add");
			Reporter.log("Add Configuration button name is found ");
		} catch (Exception e) {
			Reporter.log("Error:Add Configuration button name not found");
			throw (e);
		}
		return element;
	}

	// Element-Live data success message after configuration
	public static WebElement SuccessMessage() throws Exception {
		try {
			element = WebDriverUtils.findElementById("messageBody");
			Reporter.log("SuccessMessage is found ");
		} catch (Exception e) {
			Reporter.log("Error:SuccessMessage not found");
			throw (e);
		}
		return element;
	}

	// Element-error message after configuring same configuration
	public static WebElement DuplicateErrorMessage() throws Exception {
		try {
			element = WebDriverUtils.findElementById("duplicateError");
			Reporter.log("DuplicateErrorMessage is found ");
		} catch (Exception e) {
			Reporter.log("Error:DuplicateErrorMessage not found");
			throw (e);
		}
		return element;
	}

	// Element -Delete message configuration
	public static WebElement DeleteConfigbtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteConfiguration");
			Reporter.log("DeleteConfig button is found ");
		} catch (Exception e) {
			Reporter.log("Error:DeleteConfig button not found");
			throw (e);
		}
		return element;
	}

	// Element-Select configuration in Live Data
	public static WebElement SelectConfig() throws Exception {
		try {
			element = WebDriverUtils.findElementById("configurationList");
			Reporter.log("Select Config button is found ");
		} catch (Exception e) {
			Reporter.log("Error:Select Config button not found");
			throw (e);
		}
		return element;
	}

	// Element-Delete btn in Live data
	public static WebElement Delete() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteData");
			Reporter.log("Delete button is found ");
		} catch (Exception e) {
			Reporter.log("Error:Delete button not found");
			throw (e);
		}
		return element;
	}

	// Element- Delete configured message
	public static WebElement DeleteConfirmMessage() throws Exception {
		try {
			element = WebDriverUtils.findElementById("messageBody");
			Reporter.log("DeleteConfirmMessage is found ");
		} catch (Exception e) {
			Reporter.log("Error:DeleteConfirmMessage not found");
			throw (e);
		}
		return element;
	}

	// Element-Toggle btn in LD
	public static WebElement togglebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//span[@class = 'slider round']");
			Reporter.log("toggle is found ");
		} catch (Exception e) {
			Reporter.log("Error:toggle button not found");
			throw (e);
		}
		return element;
	}

	// Element-GSE tab in LD
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

	// Element-SV tab in LD
	public static WebElement svlivedatatab() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("SV Live Data");
			Reporter.log("SV Live Data is found ");
		} catch (Exception e) {
			Reporter.log("Error:SV Live Data not found");
			throw (e);
		}
		return element;
	}

	// Element-Delete btn for SV in LD
	public static WebElement deleteButton(int rowIndex) throws Exception {
		try {
			element = Browsers.driver.findElement(By.xpath("//table[@id=\"goosetable\"]/tbody/tr[" + rowIndex + "]/td[11]/a/i"));
			Reporter.log("Delete button in Live Data is found ");
		} catch (Exception e) {
			Reporter.log("Error:role textbox is not found");
			throw (e);
		}
		return element;
	}

	// Element-Modal window popup for delete btn
	public static WebElement deleteButtonPopup() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteData"); /// button
			Reporter.log("Delete button popup Live Data is found ");
		} catch (Exception e) {
			Reporter.log("Error:deleteButtonPopup is not found");
			throw (e);
		}
		return element;
	}

	// Delete All btn in settings
	public static WebElement deleteAllData() throws Exception {
		try {
			element = WebDriverUtils.findElementById("goose_select_all");
			Reporter.log("deleteAllData is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:deleteAllData is found in settings");
			throw (e);
		}
		return element;
	}

	// Delete All btn in settings
	public static WebElement DeleteDatabtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"goosetable\"]/tbody/tr[1]/td[11]/a/i");
			Reporter.log("DeleteDatabtn is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:DeleteDatabtn is found in settings");
			throw (e);
		}
		return element;
	}

	// Delete All btn in settings
	public static WebElement DeleteClosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"messageModal\"]/div/div/div[3]/button");
			Reporter.log("DeleteClosebtn is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:DeleteClosebtn is found in settings");
			throw (e);
		}
		return element;
	}

	// Save Config btn
	public static WebElement SaveConfig() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveConfiguration");
			Reporter.log("SaveConfigbtn is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:SaveConfigbtn is found in settings");
			throw (e);
		}
		return element;
	}

	// Save Config btn
	public static WebElement SaveConfigClosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByClass("btn-secondary");
			Reporter.log("SaveConfigClosebtn is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:SaveConfigClosebtn is found in settings");
			throw (e);
		}
		return element;
	}

	// Element-Data selector in LD
	public static WebElement dataselector() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"GOOSECh1Line1CFGLLN0GOGcbCh1L1Ch1Line1CFGLLN0Ch1DsetCh1Line1010CCD010003\"]/input");
			Reporter.log("dataselector is found ");
		} catch (Exception e) {
			Reporter.log("Error:dataselector not found");
			throw (e);
		}
		return element;
	}

	// Element-
	public static WebElement dataselector1() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"GOOSEE1Q1SB1C1LLN0GOGsseTestE1Q1SB1C1LLN0PositionsItl010CCD010002\"]/input");
			Reporter.log("dataselector is found ");
		} catch (Exception e) {
			Reporter.log("Error:dataselector not found");
			throw (e);
		}
		return element;
	}

	// Element-add checked items in configuration
	public static WebElement addCheckedItems() throws Exception {
		try {
			element = WebDriverUtils.findElementById("addCheckedItems");
			Reporter.log("addCheckedItems is found ");
		} catch (Exception e) {
			Reporter.log("Error:addCheckedItems not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Expander in LD
	public static WebElement dataExpander2() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"Ch1Line1\"]/span[1]");
			Reporter.log("dataExpander is found ");
		} catch (Exception e) {
			Reporter.log("Error:dataExpander not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Expander in LD
	public static WebElement dataExpander() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"Ch1Line1\"]/span[1]");
			Reporter.log("dataExpander is found ");
		} catch (Exception e) {
			Reporter.log("Error:dataExpander not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Expander for GSE in LD
	public static WebElement datagseExpander() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"GSECh1Line1\"]/span[1]");
			Reporter.log("datagseExpander is found ");
		} catch (Exception e) {
			Reporter.log("Error:datagseExpander not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Expander for DO in LD
	public static WebElement dataDOExpander() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"GOOSECh1Line1CFGLLN0GOGcbCh1L1Ch1Line1CFGLLN0Ch1DsetCh1Line1010CCD010003\"]/span[1]");
			Reporter.log("datagseExpander is found ");
		} catch (Exception e) {
			Reporter.log("Error:datagseExpander not found");
			throw (e);
		}
		return element;
	}

	// Element-Add columns in Datapicker in LD
	public static WebElement addtoDatapicker() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[2]/input");
			Reporter.log(" addtoDatapicker is found ");
		} catch (Exception e) {
			Reporter.log(" Error: addtoDatapicker not found");
			throw (e);
		}
		return element;
	}

	// Element-Add columns in Datapicker in LD
	public static WebElement addtoDatapicker2() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[3]/td[2]/input");
			Reporter.log(" addtoDatapicker is found ");
		} catch (Exception e) {
			Reporter.log(" Error:addtoDatapicker not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Selector close btn in LD
	public static WebElement DataSelectorclosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("/html/body/div[1]/aside[2]/div/div[1]/div[1]/div[2]");
			Reporter.log("Data selector is found ");
			System.out.println("Data selector close btn is found");
		} catch (Exception e) {
			Reporter.log("Error:Data selector not found");
			throw (e);
		}
		return element;
	}

	// Element-Data Selector show btn
	public static WebElement showDataSelector() throws Exception {
		try {
			element = WebDriverUtils.findElementById("toggleDataSelector");
			Reporter.log("Data selector is found ");
			System.out.println("Data selector is found");
		} catch (Exception e) {
			Reporter.log("Error:Data selector not found");
			throw (e);
		}
		return element;
	}

	// element-save configuration btn in LD
	public static WebElement saveConfiguration() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveConfiguration");
			Reporter.log("saveConfiguration is found ");
		} catch (Exception e) {
			Reporter.log("Error:saveConfiguration not found");
			throw (e);
		}
		return element;
	}

	// Element-save conf btn close icon in LD
	public static WebElement saveConfigclosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"messageModal\"]/div/div/div[3]/button");
			Reporter.log("saveConfigclosebtn is found ");
		} catch (Exception e) {
			Reporter.log("Error:saveConfigclosebtn not found");
			throw (e);
		}
		return element;
	}

	// Element-save GSE conf in LD
	public static WebElement saveGooseConfig() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveGooseConfig");
			Reporter.log(" saveGooseConfignd in menu");
		} catch (Exception e) {
			Reporter.log("Error:saveGooseConfig is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-show show goose column icon
	public static WebElement showHideGooseColumns() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"showHideGooseColumns\"]");
			Reporter.log("showHideGooseColumns is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:showHideGooseColumns is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-show hide goose column icon
	public static WebElement showHideSVColumns() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"showHideSVColumns\"]");
			Reporter.log("showHideSVColumns is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:showHideSVColumns is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Goose id in Live data tabular
	public static WebElement gseID() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col7\"]");
			Reporter.log("showHideGooseColumns is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:showHideGooseColumns is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Source Address in Live data tabular
	public static WebElement sourceAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col2\"]");
			Reporter.log("sourceAddress is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:sourceAddress is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Destination Address in Live data tabular
	public static WebElement destinationAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col3\"]");
			Reporter.log("Destination address is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Destination address is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Dataset name in Live data tabular
	public static WebElement datasetName() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col6\"]");
			Reporter.log("datasetName is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:datasetName is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-SCL Details in Live data tabular
	public static WebElement sclDetails() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col9\"]");
			Reporter.log("sclDetails is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:sclDetails is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Color in Live data tabular
	public static WebElement color() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col12\"]");
			Reporter.log("color is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:color is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-APP id in Live data tabular
	public static WebElement appID() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col4\"]");
			Reporter.log("appID is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:appID is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-SV source address in Live data tabular
	public static WebElement svsourceAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col5\"]");
			Reporter.log("SV sourceAddress is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:SV sourceAddress is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-SV Destination Address in Live data tabular
	public static WebElement svdestinationAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col6\"]");
			Reporter.log("sv destinationAddress is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:sv destinationAddress is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-SV Dataset name in Live data tabular
	public static WebElement svdatasetName() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col2\"]");
			Reporter.log("SV datasetName is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:SV datasetName is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-VLAN priority in Live data tabular
	public static WebElement VLANpriority() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col8\"]");
			Reporter.log("VLANpriority is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:VLANpriority is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-SV color in Live data tabular
	public static WebElement svcolor() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col17\"]");
			Reporter.log(" svcolor is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: svcolor is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-VLAN Id in Live data tabular
	public static WebElement VLANId() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col7\"]");
			Reporter.log(" VLANId is found in menu");
		} catch (Exception e) {
			Reporter.log(" Error:VLANId is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Sv Synch in Live data tabular
	public static WebElement svSynch() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col10\"]");
			Reporter.log("svSynch is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:svSynch is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Control block ref in Live data tabular
	public static WebElement svControlBlockRef() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col3\"]");
			Reporter.log("svControlBlockRef is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:svControlBlockRef is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element-Save setting Button Live data tabular
	public static WebElement saveSettings() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"saveSettings\"]/button");
			Reporter.log("saveSettings is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:saveSettings is not found in menu");
			throw (e);
		}
		return element;
	}

	public static Boolean AddConfigbtnAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status1 = AddConfigbtn().isDisplayed();
		return status1;
	}

	// add and save configuration in live data
	public static Boolean AddConfig(String configName) throws Exception {
		WebDriverUtils.implicitlyWait();
		List<WebElement> list = WebDriverUtils.selectAllOptions(SelectConfig());
		Thread.sleep(2000);
		for (WebElement element1 : list) {
			if (element1.getText().equals(configName)) {
				DeleteConfig(configName);
			}
		}
		Thread.sleep(2000);
		AddConfigbtn().click();
		Browsers.driver.switchTo().activeElement();
		AddConfigName().sendKeys(configName);
		Thread.sleep(2000);
		Addbtn().click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		String actual_successmsg = SuccessMessage().getText();
		String expected_successmsg = "Saved successfully.";
		if (actual_successmsg.equals(expected_successmsg)) {
			DeleteClosebtn().click();
			return true;
		} else {
			return false;
		}
	}

	//Delete configuration btn in Live Data Graph
	public static Boolean DeleteConfigbtnAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status1 = DeleteConfigbtn().isDisplayed();
		return status1;
	}

	//Delete configuration in Live Data Tabular
	public static Boolean DeleteConfig(String ConfigName) throws Exception {
		WebDriverUtils.implicitlyWait();
		WebDriverUtils.selectByVisibleText(SelectConfig(), ConfigName);
		Thread.sleep(2000);
		DeleteConfigbtn().click();
		Thread.sleep(2000);
		Delete().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		String actual_successmsg = DeleteConfirmMessage().getText();
		String expected_successmsg = "Deleted successfully.";
		if (actual_successmsg.equals(expected_successmsg)) {
			Browsers.driver.findElement(By.xpath("//*[@id=\"messageModal\"]/div/div/div[3]/button")).click();
			return true;
		} else {
			return false;
		}
	}

	public static Boolean TogglebtnAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean status1 = togglebtn().isDisplayed();
		return status1;
	}

	public static Boolean DeleteDatabtnAvailable() throws Exception {
		Thread.sleep(2000);
		WebDriverUtils.implicitlyWait();
		Boolean status1 = DeleteDatabtn().isDisplayed();
		return status1;
	}

	public static Boolean toggle() throws Exception {
		Boolean status = gselivedatatab().isDisplayed();
		Thread.sleep(2000);
		Boolean status1 = false;
		String color = "";
		if (status.equals(true)) {
			Thread.sleep(2000);
			Thread.sleep(2000);
			togglebtn().click();
			Thread.sleep(2000);
			color = element.getCssValue("background-color");
			Thread.sleep(2000);
		} else {
			color = element.getCssValue("background-color");
		}
		if (color.equals("rgba(33, 150, 243, 1)")) {
			status1 = true;
		}
		return status1;
	}

	// Method to verify if check boxes are available for all data items to select
	public static Boolean checkBoxesForData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status1 = togglebtn().isEnabled();
		Thread.sleep(2000);
		if (status1.equals(true)) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id='goosetable']/tbody/tr"));
			int count = rows.size();
			int checkboxCount = 0;
			for (int i = 1; i <= count; i++) {
				Boolean status2 = Browsers.driver
						.findElement(By.xpath("//table[@id='goosetable']/tbody/tr[" + i + "]/td[1]/input"))
						.isDisplayed();
				if (status2.equals(true)) {
					++checkboxCount;
					System.out.println("checkboxCount is " + checkboxCount);
				}
			}
			if (checkboxCount == count) {
				return true;
			} else {
				return false;
			}
		} else {
			togglebtn().click();
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/tbody/tr"));
			int count = rows.size();
			int checkboxCount = 0;
			for (int i = 0; i <= count; i++) {
				Boolean status2 = Browsers.driver
						.findElement(By.xpath("//*[@id=\"goosetable\"]/tbody/tr[" + i + "]/td[1]/input")).isDisplayed();
				if (status2.equals(true)) {
					++checkboxCount;
				}
			}
			if (checkboxCount == count) {
				return true;
			} else {
				return false;
			}
		}
	}

	// delete data from live data
	public static Boolean DeleteData(String DataName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		Thread.sleep(2000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		// Print data from each row
		int rowIndex = 0;
		outerloop: for (WebElement row : rows) {
			// rowIndex++;
			List<WebElement> cols = row.findElements(By.tagName("td"));
			int colIndexi = 0;
			for (WebElement col : cols) {
				if (colIndexi == 1) {
					System.out.print(col.getText() + "\t");
					if (DataName.equalsIgnoreCase(col.getText())) {
						element = deleteButton(rowIndex);
						element.click();
						Thread.sleep(2000);
						Thread.sleep(2000);
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(2000);
						deleteButtonPopup().click();
						Thread.sleep(2000);
						status = true;
						Thread.sleep(2000);
						break outerloop;
					}
				}
				colIndexi++;
			}
			rowIndex++;
		}
		return status;
	}

	// data selector tab in live data check
	public static Boolean dataSelector() throws Exception {
		WebDriverUtils.implicitlyWait();
		Project_old.clearData();
		Thread.sleep(2000);
		SCLFileLoading_old.selectOneIED();
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("Ch1Line1");
		Thread.sleep(4000);
		Boolean status = addtoDatapicker().isSelected();
		if (status == true) {
			addtoDatapicker().click();
			addtoDatapicker().click();
		}
		else {
			addtoDatapicker().click();
		}
		Thread.sleep(2000);
		LiveData.liveDatamenu().click();
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(3000);
		LiveData.liveDataGraph().click();
		// DataSelectorclosebtn().click();
		LiveDataGraph.AddConfig("test123");
		SaveConfig().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		saveConfigclosebtn().click();
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(4000);
		datagseExpander().click();
		Thread.sleep(4000);
		dataDOExpander().click();
		Thread.sleep(4000);
		dataselector().click();
		Thread.sleep(4000);
		addCheckedItems().click();
		// DataSelectorclosebtn().click();
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		System.out.println("got the table");
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		System.out.println("got the rows" + rows.size());
		Thread.sleep(2000);
		if (rows.size() == 4) {
			return true;
		}
		else {
			return false;
		}
	}

	// add error msg while trying to configure DA. DA cannot be added
	public static Boolean addDAErrormessage() throws Exception {
		WebDriverUtils.implicitlyWait();
		Project_old.clearData();
		Thread.sleep(3000);
		SCLFileLoading_old.selectOneIED();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("Ch1Line1");
		Thread.sleep(4000);
		Boolean status = addtoDatapicker().isSelected();
		if (status == true) {
			addtoDatapicker().click();
			addtoDatapicker().click();
		}
		else {
			addtoDatapicker().click();
		}
		LiveData.liveDatamenu().click();
		LiveData.LiveDataTab().click();
		LiveData.liveDataGraph().click();
		LiveDataGraph.AddConfig("test1234");
		Thread.sleep(2000);
		SaveConfig().click();
		Browsers.driver.switchTo().activeElement();
		saveConfigclosebtn().click();
		Thread.sleep(2000);
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(2000);
		datagseExpander().click();
		Thread.sleep(2000);
		dataDOExpander().click();
		Thread.sleep(2000);
		dataselector().click();
		Thread.sleep(2000);
		Thread.sleep(2000);
		addCheckedItems().click();
		Thread.sleep(2000);
		dataselector().click();
		Thread.sleep(2000);
		addCheckedItems().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		String actual_msg = LiveDataTabular.errorMessage().getText();
		System.out.println(actual_msg);
		Thread.sleep(2000);
		String expected_msg = "Ch1Line1ANN/CCOUTGGIO21.ST.Ind01.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProTx.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProRx.stVal already configured.";
		Thread.sleep(2000);
		if (actual_msg.equals(expected_msg))
		{
			return true;
		}
		else {
			return false;
		}
	}

	// delete configured DO from LD graph
	public static void deleteDO() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = DataSelectorclosebtn().isDisplayed();
		if (status == true) {
			DataSelectorclosebtn().click();
		}
		Thread.sleep(2000);
		LiveDataTabular.Selectall().click();
		LiveDataTabular.Deletegoose().click();
		Browsers.driver.switchTo().activeElement();
		LiveDataTabular.Deleteclosebtn().click();
		Thread.sleep(2000);
	}

	public static Boolean AdddeleteDO() throws Exception {
		WebDriverUtils.implicitlyWait();
		LiveDataGraph.dataSelector();
		return true;
	}

	// hise gse column from data selector
	public static Boolean hideGseColumn() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = true;
		DataSelectorclosebtn().click();
		LiveDataGraph.AddConfig("config");
		SaveConfig().click();
		Browsers.driver.switchTo().activeElement();
		saveConfigclosebtn().click();
		showHideGooseColumns().click();
		Browsers.driver.switchTo().activeElement();
		Boolean status1 = gseID().isSelected();
		if (status1 == true) {
			gseID().click();
		}
		Boolean status2 = sourceAddress().isSelected();
		if (status2 == true) {
			sourceAddress().click();
		}
		Boolean status3 = destinationAddress().isSelected();
		if (status3 == true) {
			destinationAddress().click();
		}
		Boolean status4 = datasetName().isSelected();
		if (status4 == true) {
			datasetName().click();
		}
		Boolean status5 = sclDetails().isSelected();
		if (status5 == true) {
			sclDetails().click();
		}
		Boolean status6 = color().isSelected();
		if (status6 == true) {
			color().click();
		}
		saveSettings().click();
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/thead/tr/th"));
		int count1 = col.size();
		System.out.println("count1 is " + count1);
		outerloop: for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[3]/div[2]/div[1]/div/div/div[1]/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();
			String name = name1.trim();
			if ((name.equals("GSE ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("SCL Details")) || (name.equals("Color")) || (name.equals("Destination Address"))) {
				status = false;
				break outerloop;
			}
		}
		return status;
	}

	// Show GSE Columns from data selector in LD Graph
	public static Boolean showGseColumn() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		DataSelectorclosebtn().click();
		showHideGooseColumns().click();
		Browsers.driver.switchTo().activeElement();
		Boolean status1 = gseID().isSelected();
		if (status1 == false) {
			gseID().click();
		}
		Boolean status2 = sourceAddress().isSelected();
		if (status2 == false) {
			sourceAddress().click();
		}
		Boolean status3 = destinationAddress().isSelected();
		if (status3 == false) {
			destinationAddress().click();
		}
		Boolean status4 = datasetName().isSelected();
		if (status4 == false) {
			datasetName().click();
		}
		Boolean status5 = sclDetails().isSelected();
		if (status5 == false) {
			sclDetails().click();
		}
		Boolean status6 = color().isSelected();
		if (status6 == false) {
			color().click();
		}
		saveSettings().click();
		saveConfiguration().click();
		Browsers.driver.switchTo().activeElement();
		saveConfigclosebtn().click();
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/thead/tr/th"));
		int count1 = col.size();
		System.out.println("count1 is " + count1);
		outerloop: for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[3]/div[2]/div[1]/div/div/div[1]/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();
			String name = name1.trim();
			if ((name.equals("GSE ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("SCL Details")) || (name.equals("Color")) || (name.equals("Destination Address"))) {
				status = true;
				break outerloop;
			}
		}
		return status;
	}

	// Element-Hide SV column from data selector
	public static Boolean hidesvColumn() throws Exception {
		// WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
		Boolean status = true;
		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		svlivedatatab().click();
		Thread.sleep(2000);
		showHideSVColumns().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Boolean status1 = appID().isSelected();
		if (status1 == true) {
			appID().click();
		}
		Boolean status2 = svsourceAddress().isSelected();
		if (status2 == true) {
			svsourceAddress().click();
		}
		Boolean status3 = svdestinationAddress().isSelected();
		if (status3 == true) {
			svdestinationAddress().click();
		}

		Boolean status4 = svdatasetName().isSelected();
		if (status4 == true) {
			svdatasetName().click();
		}

		Boolean status5 = VLANId().isSelected();
		if (status5 == true) {
			VLANId().click();
		}
		Boolean status6 = VLANpriority().isSelected();
		if (status6 == true) {
			VLANpriority().click();
		}

		Boolean status7 = svcolor().isSelected();
		if (status7 == true) {
			svcolor().click();
		}
		Boolean status8 = svSynch().isSelected();
		if (status8 == true) {
			svSynch().click();
		}
		Boolean status9 = svControlBlockRef().isSelected();
		if (status9 == true) {
			svControlBlockRef().click();
		}
		saveSettings().click();
		// saveConfiguration().click();
		Thread.sleep(2000);
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"svTable\"]/thead/tr/th"));
		int count1 = col.size();
		System.out.println("count1 is " + count1);
		outerloop: for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[3]/div[2]/div[1]/div/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();
			String name = name1.trim();
			System.out.println(name);
			if ((name.equals("App ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("VLAN ID")) || (name.equals("Color")) || (name.equals("Destination Address"))
					|| (name.equals("VLAN Priority")) || (name.equals("Synch"))
					|| (name.equals("\"SV Control Block Ref"))) {
				status = false;
				break outerloop;
			}
		}
		return status;
	}

	// Show SV Columns in LD Graph
	public static Boolean showsvColumn() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		svlivedatatab().click();
		Thread.sleep(2000);
		showHideSVColumns().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Boolean status1 = appID().isSelected();
		if (status1 == false) {
			appID().click();
		}
		Boolean status2 = svsourceAddress().isSelected();
		if (status2 == false) {
			svsourceAddress().click();
		}
		Boolean status3 = svdestinationAddress().isSelected();
		if (status3 == false) {
			svdestinationAddress().click();
		}
		Boolean status4 = svdatasetName().isSelected();
		if (status4 == false) {
			svdatasetName().click();
		}
		Boolean status5 = VLANId().isSelected();
		if (status5 == false) {
			VLANId().click();
		}
		Boolean status6 = VLANpriority().isSelected();
		if (status6 == false) {
			VLANpriority().click();
		}

		Boolean status7 = svcolor().isSelected();
		if (status7 == false) {
			svcolor().click();
		}
		Boolean status8 = svSynch().isSelected();
		if (status8 == false) {
			svSynch().click();
		}
		Boolean status9 = svControlBlockRef().isSelected();
		if (status9 == false) {
			svControlBlockRef().click();
		}
		saveSettings().click();
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"svtable\"]/thead/tr/th"));
		int count1 = col.size();
		System.out.println("count1 is " + count1);
		outerloop: for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[3]/div[2]/div[1]/div/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();
			String name = name1.trim();
			if ((name.equals("App ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("VLAN ID")) || (name.equals("Color")) || (name.equals("Destination Address"))
					|| (name.equals("VLAN Priority")) || (name.equals("Synch"))
					|| (name.equals("SV Control Block Ref"))) {
				status = true;
				break outerloop;
			}
		}
		return status;
	}

}*/
