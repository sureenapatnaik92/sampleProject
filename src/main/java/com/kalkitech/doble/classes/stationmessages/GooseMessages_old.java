/*package com.kalkitech.doble.classes.stationmessages;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class GooseMessages_old extends BaseClass {

	public GooseMessages_old(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// Element - dropdown-toggle
	public static WebElement gseMessageMenuSettings() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("Goose Message menu setting option is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:Goose Message menu setting option is not found in menu");
			throw (e);
		}
		return element;
	}
	//side bar Live Data button in Goose Message
	public static WebElement sideBarLiveDatabtn() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath("//*[@id=\"livedata\"]/a/i");
			Reporter.log("sideBarToggleButton is found in menu");

		} catch (Exception e) {

			Reporter.log("sideBarToggleButton is not found in menu");
			throw (e);

		}

		return element;
	}

	// Element - Data Selector
	public static WebElement dataSelectorLink() throws Exception {
		try {

			element = WebDriverUtils.findElementByLinkText("Column Settings");
			Reporter.log("Data selector link is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:Data selector link is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element - clickDataSelectorCheckBox
	public static WebElement clickDataSelectorCheckBoxGse() throws Exception {
		try {

			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseTable\"]/tbody/tr/td[3]/input"));

			for (WebElement element : rows) {
				if (!element.isSelected()) {
					Thread.sleep(1000);
					element.click();
				}
			}
			Reporter.log("clickDataSelectorCheckBox  is found in menu");

		} catch (Exception e) {

			Reporter.log("clickDataSelectorCheckBox Messages is not found in menu");
			throw (e);
		}
		return element;
	}

	// apply button for data selector
	public static WebElement applyDataSelectorGse() throws Exception {
		try {
			element = WebDriverUtils.findElementById("apply");
			Reporter.log("apply button DataSelector for Goose is found in menu");

		} catch (Exception e) {
			Reporter.log("Error:apply button DataSelector for Goose is not found in menu");
			throw (e);

		}
		return element;
	}

	// Element - Station messages tab
	public static WebElement StationMessagesTab() throws Exception {
		try {

			element = WebDriverUtils.findElementByLinkText("Station Messages");
			Reporter.log("Station Messages Tab is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:Station Messages Tab is not found in menu");
			throw (e);
		}
		return element;
	}
	//Element- Toogle button in Goose Messages
	public static WebElement sideBarToggleButton() throws Exception {
		try {

			element = WebDriverUtils.findElementById("stationmsg");
			Reporter.log("sideBarToggleButton is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:sideBarToggleButton is not found in menu");
			throw (e);

		}
		return element;
	}

	public static WebElement GSEMessagesColumnsTab() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath("//*[@id=\"gseInfotable\"]/tbody/tr[1]/td[1]/a/i");
			Reporter.log("Goose Messages columns tab is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:Goose Messages columns tab is not found in menu");
			throw (e);

		}
		return element;
	}

	// Element - GOOSE messages tab
	public static WebElement GOOSEMessagesTab() throws Exception {
		try {

			element = WebDriverUtils.findElementByLinkText("GSE Messages");
			Reporter.log("GOOSE Messages Tab in Station Message is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:GOOSE Messages Tab is not found in menu");
			throw (e);

		}
		return element;
	}

	// Element - Sampled Values tab
	public static WebElement sampledValuesTab() throws Exception {
		try {

			element = WebDriverUtils.findElementByLinkText("Sampled Values");
			Reporter.log("Sampled Messages tab is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:Sampled Messages tab is not found in menu");
			throw (e);

		}
		return element;
	}

	// Element - clear data button in settings menu
	public static WebElement clearDataBtn() throws Exception {
		try {

			element = WebDriverUtils.findElementById("clearData");
			Reporter.log("clearData button is found in menu");

		} catch (Exception e) {

			Reporter.log("Error:clearData button is not found in menu");
			throw (e);

		}
		return element;
	}

	//Element- settings menu in Goose Messages
	public static WebElement settingsInGSE() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"sectiongoose\"]/div/div/div/div[1]/div[2]/table/tbody/tr/td[2]/div/ul/li/a/i");
			Reporter.log("settings menu In GSE messages is found");

		} catch (Exception e) {

			Reporter.log("Error: settings In GSE messages is not found");
			throw (e);

		}
		return element;
	}

	//to check station msge sub pages(i.e GSE messages and SV messages)
	public static boolean stnMsgsSubPagesAvailable() throws Exception {
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		boolean status1 = GOOSEMessagesTab().isDisplayed();
		boolean status2 = sampledValuesTab().isDisplayed();
		if ((status1 == true) && (status2 == true)) {
			return true;
		} else {
			return false;
		}

	}

	//To check GSE message page/table available
	public static void gooseMessagePagesAvailable() throws Exception {
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
	}

	//select all data selector working check
	public static void clickAllDataSelectorCols() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(3000);
		GOOSEMessagesTab().click();
		Thread.sleep(3000);
		gseMessageMenuSettings().click();
		Thread.sleep(3000);
		dataSelectorLink().click();
		Thread.sleep(3000);
		clickDataSelectorCheckBoxGse();
		Thread.sleep(3000);
		applyDataSelectorGse().click();
		Thread.sleep(3000);
	}

	//GSE message table columns are proper or not check
	public static boolean gooseMessageTableColumns() throws Exception {
		clickAllDataSelectorCols();
		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("GSE Type");
		expected_columns.add("Source MAC Address");
		expected_columns.add("Destination MAC Address");
		expected_columns.add("Source IP Address");
		expected_columns.add("Destination IP Address");
		expected_columns.add("IED Name");
		expected_columns.add("LD Name");
		expected_columns.add("GSE Control Block Ref");
		expected_columns.add("Dataset Name");
		expected_columns.add("GSE ID");
		expected_columns.add("APP ID");
		expected_columns.add("VLAN ID");
		expected_columns.add("VLAN Priority");
		expected_columns.add("Simulated");
		expected_columns.add("Delete");
		WebDriverUtils.implicitlyWait();
		Thread.sleep(3000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/thead/tr/th"));
		int count1 = rows.size();
		Thread.sleep(2000);
		for (int j = 3; j <= count1; j++) {

			String name1 = Browsers.driver.findElement(By.xpath("//*[@id=\"gseInfotable\"]/thead/tr/th[" + j + "]/div"))
					.getText();
			String name = name1.trim();
			actual_columns.add(name);
		}
		Thread.sleep(3000);
		if (actual_columns.equals(expected_columns)) {
			return true;
		} else {
			return false;
		}

	}

	//to display GSE msges in LIVE data table for gSE messages
	public static WebElement gooseMessageInLiveDataGraphColumns() throws Exception {
		Thread.sleep(2000);
		GSEMessagesColumnsTab().click();
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"g1\"]/tbody/tr"));
		int count2 = rows.size();
		for (int i = 1; i < count2; i += 1) {
			//dataType column element for GSE message in LIve Data
			String dataType = Browsers.driver
					.findElement(By.xpath("//*[@class=\"childTableDiv\"]/table/tbody/tr[" + i + "]/td[2]")).getText();
			if (dataType.equals("Bool")) {
				element = WebDriverUtils
						.findElementByXpath("//*[@class='childTableDiv']/table/tbody/tr[" + i + "]/td[2]");
				break;

			}
		}
		element = WebDriverUtils.findElementByXpath("//*[@id=\"g1\"]/tbody[2]/tr[1]/td[1]");
		return element;
	}

	//to check GSE live data table present
	public static WebElement gooseLiveDataTable() throws Exception {
		element = WebDriverUtils.findElementByXpath("//*[@id=\"goosetable\"]/tbody/tr[1]");
		return element;
	}

	//sub tabs for GSE messages available or not
	public static boolean gooseMessageSubTableColumns() throws Exception {
		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("Dataset Items");
		expected_columns.add("Data Type");
		expected_columns.add("SCL Details");
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean checkGSETable = gooseMessageTableColumns();
		if (checkGSETable) {
			GSEMessagesColumnsTab().click();
			Thread.sleep(2000);
			for (int j = 1; j <= 3; j++) {
				//child element columns in GSE message for each packets
				String name = Browsers.driver.findElement(By.xpath("//*[@class=\"childTableDiv\"]/table/thead/tr/th[" + j + "]"))
						.getText();
				actual_columns.add(name);
				Thread.sleep(2000);
			}
			Thread.sleep(2000);
			if (actual_columns.equals(expected_columns)) {
				return true;
			} else {
				return false;
			}
		} else
			return false;

	}

	// to clear GSE message TAB
	public static void clearData() throws Exception {
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
		Thread.sleep(2000);
		settingsInGSE().click();
		Thread.sleep(2000);
		clearDataBtn().click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		WebDriverUtils.findElementById("deleteHref").click();
	}

	//to check IED filter from column option present in each tab
	public static void GooseMsgFilterIEDNameColumn() throws Exception {

		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
		Thread.sleep(2000);
		List<String> iedname = new ArrayList<String>();
		//IED name column element click to get filter option
		WebDriverUtils
		.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[8]/div")
		.click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		WebDriverUtils.findElementByXpath("//*[@id='btnFilter']").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		//filter text box elemt in the filter option in GSE ,mrssage
		WebDriverUtils.findElementByXpath("/html/body/div[6]/div/div/div[2]/form/div/div[1]/div[2]/div/label/input")
		.sendKeys("TR");
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"filterTable\"]/tbody/tr"));
		int rowcount = rows.size();
		System.out.println(rowcount);
		for (int i = 1; i <= rowcount; i++) {
			//ied name element in GSE message
			String iedName = WebDriverUtils.findElementByXpath("//*[@id='filterTable']/tbody/tr[" + i + "]/td[2]")
					.getText();
			System.out.println(iedName);
			if (iedName.equals("TR3000")) {
				iedname.add(iedName);
				Thread.sleep(2000);
				// main check box click after filter
				WebDriverUtils.findElementByXpath("//*[@id=\"cbmain\"]").click();
				Thread.sleep(2000);
				// apply button click for the filter
				WebDriverUtils.findElementByXpath("//*[@id='applyFilter']").click();
				Thread.sleep(2000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "TR3000_ied_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}

	}

	public static void GooseMsgFilterIEDName() throws Exception {
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
		Thread.sleep(2000);
		WebDriverUtils.implicitlyWait();
		List<String> iedname = new ArrayList<String>();
		//filter text box element in GSE Message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("TR3000");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			//IED name element column in GSE message
			String iedName = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[8]")
					.getText();
			iedname.add(iedName); //
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "TR3000_ied_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}

	}

	public static boolean GooseMsgFilterByIEDName() throws Exception {
		Thread.sleep(2000);
		WebDriverUtils.implicitlyWait();
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/tbody/tr"));
		int rowcount = rows.size();
		System.out.print(rowcount);
		return true;
	}

	//// to filter LD name from GSE Filter
	public static void GooseMsgFilterLDName() throws Exception {
		// filter text box element in GSE message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.clear();
		Thread.sleep(2000);
		List<String> ldname = new ArrayList<String>();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("PMU");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			String LDName = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[9]")
					.getText();
			ldname.add(LDName); // *[@id="smvInfotable"]/tbody/tr[1]/td[2]

		}

		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "TR3000_ld_Actual");
		for (int i = 0; i < ldname.size(); i++) {
			ExcelLib.setCellDatahssf(ldname.get(i), i + 1, 1);
		}
	}

	// to filter the VLAN column in SM
	public static void GooseMsgFilterVLANPriority() throws Exception {
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.clear();
		Thread.sleep(2000);

		List<String> vlanp = new ArrayList<String>();
		// to check the filter box with 4 which is VLAN for a particular file
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("4");

		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			String vlanP = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[15]")
					.getText();
			vlanp.add(vlanP); // *[@id="smvInfotable"]/tbody/tr[1]/td[2]

		}

		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "TR3000_vlanp_Actual");
		for (int i = 0; i < vlanp.size(); i++) {
			ExcelLib.setCellDatahssf(vlanp.get(i), i + 1, 2);
		}

	}

	// to filter the dataset name from GSE filter tab
	public static void GooseMsgFilterDataSetName() throws Exception {
		WebDriverUtils.implicitlyWait();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.clear();
		Thread.sleep(2000);

		List<String> datasetname = new ArrayList<String>();
		// to find the filter text box and check a particular dataset name
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("TR3000PMU/LLN0$RG_DI10");

		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			String DatasetName = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[11]")
					.getText();
			datasetname.add(DatasetName); // *[@id="smvInfotable"]/tbody/tr[1]/td[2]

		}

		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "TR3000_dataset_Actual");
		for (int i = 0; i < datasetname.size(); i++) {
			ExcelLib.setCellDatahssf(datasetname.get(i), i + 1, 2);
		}

	}

	// GSe mesages are proper or not check
	public static void gseMessageData() throws Exception {
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
		Thread.sleep(2000);
		List<String> iedNames = new ArrayList<String>();
		List<String> GSENames = new ArrayList<String>();
		List<String> LDNames = new ArrayList<String>();
		List<String> GSEID = new ArrayList<String>();
		List<String> dataSet = new ArrayList<String>();
		List<String> macAddress = new ArrayList<String>();
		List<String> AppId = new ArrayList<String>();
		List<String> vlanID = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
			int rowcount = rows.size();
			for (int i = 1; i <= rowcount; i = i + 2) {
				//MAC Address in GSE message page , column number 3 element
				String mac = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[4]")
						.getText();
				macAddress.add(mac);
				//IED name in GSE message page , column number 7 element
				String iedName = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[8]")
						.getText();
				System.out.println(iedName);
				iedNames.add(iedName);
				//LD name in GSE message page , column number 8 element
				String ldName = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[9]")
						.getText();
				LDNames.add(ldName);
				//GSE name in GSE message page , column number 9 element
				String gse = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[10]")
						.getText();
				String gseName = gse.substring(gse.lastIndexOf("$") + 1);
				GSENames.add(gseName);
				//Dataset name in GSE message page , column number 10 element
				String datset = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[11]")
						.getText();
				String datsetName = datset.substring(datset.lastIndexOf("$") + 1);
				dataSet.add(datsetName);
				//gse ID  in GSE message page , column number 11 element
				String gseId = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[12]")
						.getText();
				GSEID.add(gseId);
				//App ID in GSE message page , column number 13 element
				String Appid = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[13]")
						.getText();
				AppId.add(Appid);
				//VLAN id in GSE message page , column number 14 element
				String vlanid = WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr[" + i + "]/td[14]")
						.getText();
				vlanID.add(vlanid);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFile("src\\main\\resources\\TestData\\SCLFileData.xlsx", "Sheet3");
		int n1 = iedNames.size();
		for (int i = 0; i < n1; i++) {
			ExcelLib.setCellData(iedNames.get(i), i + 1, 0);
		}
		int n3 = GSENames.size();

		for (int i = 0; i < GSENames.size(); i++) {
			ExcelLib.setCellData(GSENames.get(i), n3--, 2);

		}
		int n2 = LDNames.size();
		for (int i = 0; i < LDNames.size(); i++) {
			ExcelLib.setCellData(LDNames.get(i), n2--, 1);
		}

		int n4 = GSEID.size();
		for (int i = 0; i < GSEID.size(); i++) {
			ExcelLib.setCellData(GSEID.get(i), n4--, 3);
		}

		int n5 = dataSet.size();
		for (int i = 0; i < dataSet.size(); i++) {
			ExcelLib.setCellData(dataSet.get(i), n5--, 4);
		}
	}

	// load a file to display multiple IED
	public static Boolean multipleIEDs() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		if (rowcount > 0)
			return true;
		else
			return false;
	}

	// load a file having 1 IED to display
	public static Boolean singleIED() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GooseMsgFilterIEDName();
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		if (rowcount == 1)
			return true;
		else
			return false;
	}


	// count GSE Messages which should be more than 1
	public static Boolean Goosecount() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		boolean status = false;
		if (count >= 1)
			status = true;
		return status;
	}

	// load a file from where we can detect pagination is there or not
	public static Boolean getPagination() throws Exception {
		Thread.sleep(3000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		return true;
	}

	// to clear all messages in GSE table
	public static Boolean gooseMessageclearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		StationMessagesTab().click();
		Thread.sleep(2000);
		GOOSEMessagesTab().click();
		Thread.sleep(2000);
		settingsInGSE().click();
		Thread.sleep(2000);
		clearDataBtn().click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		WebDriverUtils.findElementById("deleteHref").click();
		Thread.sleep(3000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='gseInfotable']/tbody/tr"));
		int count = rows.size();
		Thread.sleep(2000);
		if (count == 0) {
			return true;
		} else {
			return false;
		}
	}

}*/