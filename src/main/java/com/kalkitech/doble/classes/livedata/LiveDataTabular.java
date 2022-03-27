/*package com.kalkitech.doble.classes.livedata;

import java.util.ArrayList;
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

public class LiveDataTabular extends BaseClass {

	public LiveDataTabular(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	//Element-toggle button in LD tabular
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

	// Element-close button after save configuration window button in LD Tabular
	public static WebElement saveGooseConfigClose() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"messageModal\"]/div/div/div[3]/button");
			Reporter.log("saveGooseConfigClose is found ");
		} catch (Exception e) {
			Reporter.log("saveGooseConfigClose not found");
			throw (e);
		}
		return element;
	}

	//Element-dataselector button in LD Tabular
	public static WebElement DataSelectorbtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("toggleDataSelector");
			Reporter.log("Data selector is found ");
		} catch (Exception e) {
			Reporter.log("Error:Data selector not found");
			throw (e);
		}
		return element;
	}
	//Element-Dataselector close btn in LD Tabular
	public static WebElement DataSelectorclosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("/html/body/div[1]/aside[2]/div/div[1]/div[1]/div[2]");
			Reporter.log("Data selector is found ");
		} catch (Exception e) {
			Reporter.log("Error:Data selector not found");
			throw (e);
		}
		return element;
	}
	//Element-GSE data tab in LD Tabular
	public static WebElement gselivedatatab() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("GSE Live Data");
			Reporter.log("gse livadata tab is found ");
		} catch (Exception e) {
			Reporter.log("Error:gse livedata tab not found");
			throw (e);
		}
		return element;
	}
	//element-dataselector btn in in LD Tabular
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
	//Element-add checked items btn in LD Tabular
	public static WebElement addCheckedItems() throws Exception {
		try {
			element = WebDriverUtils.findElementById("addCheckedItems");
			Reporter.log("add Checked Items is found ");
		} catch (Exception e) {
			Reporter.log("Error:add Checked Items not found");
			throw (e);
		}
		return element;
	}

	//Element-data expander btn in LD Tabular
	public static WebElement dataExpander() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"Ch1Line1\"]/span[1]");
			Reporter.log("dataExpander is found ");

		} catch (Exception e) {//*[@id="Ch1Line1"]/span[1]
			Reporter.log("Error:dataExpander not found");
			throw (e);
		}
		return element;
	}
	//Element-GSE expander in dataexpander
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

	//Element-DO expander in Gse expander
	public static WebElement dataDOExpander() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"GOOSECh1Line1CFGLLN0GOGcbCh1L1Ch1Line1CFGLLN0Ch1DsetCh1Line1010CCD010003\"]/span[1]");
			Reporter.log("DOExpander is found ");
		} catch (Exception e) {
			Reporter.log("Error:DOExpander not found");
			throw (e);
		}
		return element;
	}

	//Element-DA expander in GSE expander tab
	public static WebElement DAitemcheck() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//*[@id=\"GOOSECh1Line1CFGLLN0GOGcbCh1L1Ch1Line1CFGLLN0Ch1DsetCh1Line1010CCD010003\"]/input");

			Reporter.log("DAitemcheck is found ");
		} catch (Exception e) {
			Reporter.log("Error:DAitemcheck not found");
			throw (e);
		}
		return element;
	}

	//Element-add to datapicker btn
	public static WebElement addtoDatapicker() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[2]/input");
			Reporter.log("dataExpander is found ");
		} catch (Exception e) {
			Reporter.log("dataExpander not found");
			throw (e);
		}
		return element;
	}

	//Element-error msg on same config
	public static WebElement errorMessage() throws Exception {
		try {
			element = WebDriverUtils.findElementById("messageBody");
			Reporter.log("errorMsg is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:errorMsg is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element- save gse configuration btn
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

	//Element-show hide gse column btn
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

	//Element-gse id column
	public static WebElement gseID() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col6\"]");
			Reporter.log("showHideGooseColumns is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:showHideGooseColumns is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-save setting btn in LD tabular
	public static WebElement saveSettings() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveSettings");
			Reporter.log("saveSettings is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:saveSettings is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-source address in LD Tabular
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

	//Element- Destination Address in LD Tabular
	public static WebElement destinationAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col3\"]");
			Reporter.log("sourceAddress is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:sourceAddress is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-dataset name column in LD Tabular
	public static WebElement datasetName() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col5\"]");
			Reporter.log("datasetName is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:datasetName is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-SCL details column in LD Tabular
	public static WebElement sclDetails() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col8\"]");
			Reporter.log("sclDetails is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:sclDetails is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-Simulated column in LD Tabular
	public static WebElement Simulated() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"col13\"]");
			Reporter.log("Simulated is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Simulated is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-save conf btn in LD Tabular
	public static WebElement saveConfiguration() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveGooseConfig");
			Reporter.log("saveConfiguration is found ");
		} catch (Exception e) {
			Reporter.log("Error:saveConfiguration not found");
			throw (e);
		}
		return element;
	}

	//Element-save conf close btn in LD Tabular
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

	//Element-Select all btn in LD Tabular
	public static WebElement Selectall() throws Exception {
		try {
			element = WebDriverUtils.findElementById("goose_select_all");
			Reporter.log("Selectall is found ");
		} catch (Exception e) {
			Reporter.log("Error:Selectall not found");
			throw (e);
		}
		return element;
	}

	//element-delete gse btn in LD Tabular
	public static WebElement Deletegoose() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"deleteGoose\"]/i");
			Reporter.log("deleteGoose is found ");
		} catch (Exception e) {
			Reporter.log("Error:deleteGoose not found");
			throw (e);
		}
		return element;
	}

	//Element-close delete btn in LD Tabular
	public static WebElement Deleteclosebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("/html/body/div[2]/div/div/div[3]/a/button");
			Reporter.log("deleteGoose is found ");
		} catch (Exception e) {
			Reporter.log("Error:deleteGoose not found");
			throw (e);
		}
		return element;
	}

	//Element-show dataselector btn in LD Tabular
	public static WebElement showDataSelector() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"toggleDataSelector\"]");
			Reporter.log("Data selector is found ");
		} catch (Exception e) {
			Reporter.log("Error:Data selector not found");
			throw (e);
		}
		return element;
	}

	//toggle from run mode to configure mode
	public static Boolean toggle() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status3 = DataSelectorclosebtn().isDisplayed();
		if (status3 == true) {
			DataSelectorclosebtn().click();
		}
		Boolean status = gselivedatatab().isDisplayed();
		Thread.sleep(2000);
		if (status.equals(true)) {
			Thread.sleep(2000);
			Thread.sleep(2000);
			togglebtn().click();
			Thread.sleep(2000);
			togglebtn().click();
		} else {
			Thread.sleep(2000);
			togglebtn().click();
		}
		Boolean status1 = gselivedatatab().isDisplayed();
		return status1;
	}
	//Select DO and DAs from dataselector
	public static Boolean dataSelector() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Project_old.clearData();
		SCLFileLoading_old.selectOneIED();
		Thread.sleep(4000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(4000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
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
		Thread.sleep(4000);
		LiveData.LiveDataTab().click();
		Thread.sleep(4000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(4000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(4000);
		dataExpander().click();
		Thread.sleep(4000);
		datagseExpander().click();
		Thread.sleep(4000);
		dataDOExpander().click();
		Thread.sleep(4000);
		dataselector().click();
		Thread.sleep(4000);
		addCheckedItems().click();
		Thread.sleep(4000);
		DataSelectorclosebtn().click();
		Thread.sleep(4000);
		saveGooseConfig().click();
		Thread.sleep(4000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		Thread.sleep(2000);
		if (rows.size() == 7) {

			return true;
		}
		else {
			return false;
		}
	}

	//delete configured DO
	public static void deleteDO() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = DataSelectorclosebtn().isDisplayed();
		if (status == true) {
			DataSelectorclosebtn().click();
		}
		Selectall().click();
		Thread.sleep(4000);
		Deletegoose().click();
		Thread.sleep(4000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(4000);
		Deleteclosebtn().click();

	}

	//Add deleted DO again.It should be able to get added again
	public static Boolean AdddeleteDO() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		deleteDO();
		Thread.sleep(2000);
		LiveDataGraph.showDataSelector().click();
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(2000);
		datagseExpander().click();
		Thread.sleep(2000);
		dataDOExpander().click();
		Thread.sleep(2000);
		dataselector().click();
		Thread.sleep(2000);
		addCheckedItems().click();
		Thread.sleep(2000);
		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		saveGooseConfig().click();
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		System.out.println("got the table");
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		System.out.println("got the rows" + rows.size());
		Thread.sleep(2000);
		if (rows.size() == 7) {
			return true;
		}
		else {
			return false;
		}
	}

	// load a GSE file and compare with the PCAP file
	/*public static Boolean endtoendGSE() throws Exception {
		Thread.sleep(3000);
		GooseMessages.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages.GOOSEMessagesTab().click();
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
		Thread.sleep(2000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(2000);
		datagseExpander().click();
		Thread.sleep(2000);
		dataDOExpander().click();
		Thread.sleep(2000);
		DAitemcheck().click();
		addCheckedItems().click();
		dataselector().click();
		addCheckedItems().click();
		DataSelectorclosebtn().click();
		saveGooseConfig().click();
		Thread.sleep(2000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		Thread.sleep(2000);
		List<String> values = new ArrayList<String>();
		if (rows.size() == 6) {
			togglebtn().click();
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/tbody/tr"));
			int rowcount = rows2.size();
			for (int i = 1; i <= rowcount; i = i + 2) {
				String value = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[9]")
						.getText();
				values.add(value);
			}
			ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "SEL_ied_Actual");
			for (int i = 0; i < values.size(); i++) {
				ExcelLib.setCellDatahssf(values.get(i), i + 1, 0);
			}
			return true;
		}

		else {
			return false;

		}
	}

	//Add DO from Dataselector
	public static Boolean AdddDO() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Project_old.clearData();
		SCLFileLoading_old.selectOneIED();
		Thread.sleep(4000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(4000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(4000);
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("Ch1Line1");
		Thread.sleep(2000);
		Boolean status = addtoDatapicker().isSelected();
		if (status == true) {
			addtoDatapicker().click();
			addtoDatapicker().click();
		}
		else {
			addtoDatapicker().click();
		}
		Thread.sleep(4000);
		LiveData.liveDatamenu().click();
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(2000);
		datagseExpander().click();
		Thread.sleep(2000);
		dataDOExpander().click();
		Thread.sleep(2000);
		DAitemcheck().click();
		Thread.sleep(2000);
		addCheckedItems().click();
		Thread.sleep(2000);
		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		saveGooseConfig().click();
		Thread.sleep(2000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		System.out.println("got the table");
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		System.out.println("got the rows" + rows.size());
		Thread.sleep(2000);
		if (rows.size() == 7) {

			return true;
		}
		else {
			return false;
		}
	}

	//DA cannot be added. pop up error message while trying to add DA
	public static Boolean addDAErrormessage() throws Exception {
		Project_old.clearData();
		Thread.sleep(4000);
		SCLFileLoading_old.selectOneIED();
		Thread.sleep(4000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(4000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div[2]/table/tbody/tr/td[1]/div/input")
		.sendKeys("Ch1Line1");
		Thread.sleep(2000);
		Boolean status = addtoDatapicker().isSelected();
		if (status == true) {
			addtoDatapicker().click();
			addtoDatapicker().click();
		}
		else {
			addtoDatapicker().click();
		}
		WebDriverUtils.implicitlyWait();
		Thread.sleep(4000);
		LiveData.liveDatamenu().click();
		Thread.sleep(4000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(4000);
		dataExpander().click();
		Thread.sleep(4000);
		datagseExpander().click();
		Thread.sleep(4000);
		dataDOExpander().click();
		Thread.sleep(4000);
		DAitemcheck().click();
		Thread.sleep(5000);
		addCheckedItems().click();
		Thread.sleep(2000);
		dataselector().click();
		Thread.sleep(4000);
		addCheckedItems().click();
		Thread.sleep(4000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		String actual_msg = errorMessage().getText();
		System.out.println(actual_msg);
		Thread.sleep(2000);
		String expected_msg = "Ch1Line1ANN/CCOUTGGIO21.ST.Ind01.stVal,Ch1Line1ANN/CCOUTGGIO21.ST.Ind01.q,Ch1Line1PRO/POTTPSCH1.ST.ProTx.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProTx.q,Ch1Line1PRO/POTTPSCH1.ST.ProRx.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProRx.q already configured.";
		Thread.sleep(2000);
		if (actual_msg.equals(expected_msg))
		{

			return true;
		}
		else {
			return false;
		}
	}

	//Hide GSE column from DATA Selector
	public static Boolean hideGseColumn() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = true;
		Thread.sleep(2000);
		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		showHideGooseColumns().click();
		Thread.sleep(2000);
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

		if (status1 == true) {
			Simulated().click();
		}
		saveSettings().click();
		Thread.sleep(2000);
		saveGooseConfig().click();
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/thead/tr/th"));
		int count1 = col.size();
		System.out.println("count1 is " + count1);
		Thread.sleep(2000);
		outerloop: for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/div[2]/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th[\"+j+\"]"))
					.getText();
			String name = name1.trim();
			Thread.sleep(2000);
			if ((name.equals("GSE ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("SCL Details")) || (name.equals("Destination Address"))
					|| (name.equals("Simulated"))) {
				status = false;
				break outerloop;
			}
		}
		return status;
	}

	// load a GSE file and compare with the PCAP file
	public static List<List<String>> endtoendGSE() throws Exception {

		//WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
		Thread.sleep(3000);
		DataSelectorclosebtn().click();
		Thread.sleep(3000);
		WebElement simpleTable1 = Browsers.driver.findElement(By.id("goosetable"));
		List<WebElement> rows5 = simpleTable1.findElements(By.tagName("tr"));
		Thread.sleep(2000);
		System.out.println(rows5.size());
		if(rows5.size()>2)
		{
			WebDriverUtils.findElementByXpath("//*[@id='goose_select_all']").click();
			Thread.sleep(2000);
			WebDriverUtils.findElementByXpath("//*[@id='deleteGoose']").click();
			Thread.sleep(2000);
			WebDriverUtils.findElementByXpath("//*[@id='deleteliveData']").click();
			Thread.sleep(2000);
		}
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		List<String> iedname = new ArrayList<String>();
		Thread.sleep(2000);
		WebDriverUtils
		.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/thead/tr/th[8]/div").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		WebDriverUtils.findElementByXpath("//*[@id='btnFilter']").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		WebDriverUtils.findElementByXpath("/html/body/div[6]/div/div/div[2]/form/div/div[1]/div[2]/div/label/input").sendKeys("AA1J1Q01A2LD0");
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"filterTable\"]/tbody/tr"));
		int rowcount = rows.size();
		System.out.println(rowcount);
		for (int i = 1; i <= rowcount; i++) {
			String iedName = WebDriverUtils.findElementByXpath("//*[@id='filterTable']/tbody/tr[" + i + "]/td[2]")
					.getText();
			System.out.println("helloo"+iedName);
			if (iedName.equals("AA1J1Q01A2LD0")) {
				iedname.add(iedName);
				Thread.sleep(2000);
				//main check box click after filter
				WebDriverUtils.findElementByXpath("//*[@id=\"cbmain\"]").click();
				Thread.sleep(2000);
				//apply button click for the filter
				WebDriverUtils.findElementByXpath("//*[@id='applyFilter']").click();
				Thread.sleep(2000);
			}
		}

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
		Thread.sleep(2000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(2000);
		dataExpander().click();
		Thread.sleep(2000);
		datagseExpander().click();
		Thread.sleep(2000);
		dataDOExpander().click();
		Thread.sleep(2000);
		DAitemcheck().click();
		Thread.sleep(2000);
		addCheckedItems().click();
		Thread.sleep(2000);


		/*String actual_msg = errorMessage().getText();
				System.out.println(actual_msg);
				Thread.sleep(2000);
		    	String expected_msg = "Ch1Line1ANN/CCOUTGGIO21.ST.Ind01.stVal,Ch1Line1ANN/CCOUTGGIO21.ST.Ind01.q,Ch1Line1PRO/POTTPSCH1.ST.ProTx.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProTx.q,Ch1Line1PRO/POTTPSCH1.ST.ProRx.stVal,Ch1Line1PRO/POTTPSCH1.ST.ProRx.q already configured.";
				Thread.sleep(2000);
				if (actual_msg.equals(expected_msg))
		    	{
					errorMessageClose().click();
				}
		 


		DataSelectorclosebtn().click();
		Thread.sleep(2000);
		saveGooseConfig().click();
		Thread.sleep(2000);
		saveGooseConfigClose().click();
		Thread.sleep(2000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("goosetable"));
		Thread.sleep(2000);
		List<WebElement> rows1 = simpleTable.findElements(By.tagName("tr"));
		Thread.sleep(3000);
		List<String>gseType=new ArrayList<String>();
		List<String>sourceAddress=new ArrayList<String>();
		List<String>destinationAddress=new ArrayList<String>();
		List<String>gseConRef=new ArrayList<String>();
		List<String>datasetName=new ArrayList<String>();
		List<String>gseId=new ArrayList<String>();
		List<String>sclDetails=new ArrayList<String>();
		List<String>dataType=new ArrayList<String>();
		List<String> values = new ArrayList<String>();
		List<String> stateNos = new ArrayList<String>();
		List<String> sequenceNos = new ArrayList<String>();
		List<String> simulateds = new ArrayList<String>();

		List<List<String>> combinedList = new ArrayList<List<String>>();

		if (rows1.size() > 0) {

			togglebtn().click();
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/tbody/tr"));
			int rowcount1 = rows2.size();
			System.out.println("connnn"+rowcount1);
			for (int i = 1; i <= rowcount1;i ++) {
				Thread.sleep(3000);
				//GSE Type field
				String gse_Type = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[1]")
						.getText();
				gseType.add(gse_Type);
				//Source Address
				String source_address = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[2]")
						.getText();
				sourceAddress.add(source_address);
				String dest_address = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[3]")
						.getText();
				destinationAddress.add(dest_address);
				// Destination Address
				String gse_cntl_blk = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[4]")
						.getText();
				gseConRef.add(gse_cntl_blk);
				//control Blk ref
				String dataset_name= WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[5]")
						.getText();
				datasetName.add(dataset_name);
				//dataset name
				String gse_Id = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[6]")
						.getText();
				gseId.add(gse_Id);
				//Gse id
				String scl_Details = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[7]")
						.getText();
				sclDetails.add(scl_Details);
				//SCL Details
				String data_type = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[8]")
						.getText();
				dataType.add(data_type);

				//value field
				String value = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[9]")
						.getText();
				values.add(value);
				Thread.sleep(3000);
				String stateNo = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[10]")
						.getText();
				stateNos.add(stateNo);
				Thread.sleep(3000);
				String sequenceNo = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[11]")
						.getText();
				sequenceNos.add(sequenceNo);
				Thread.sleep(3000);
				//Simulated field
				String simulated = WebDriverUtils.findElementByXpath("//*[@id='goosetable']/tbody/tr[" + i + "]/td[12]")
						.getText();
				simulateds.add(simulated);
			}

			combinedList.add(gseType);
			combinedList.add(sourceAddress);
			combinedList.add(destinationAddress);
			combinedList.add(gseConRef);
			combinedList.add(datasetName);
			combinedList.add(gseId);
			combinedList.add(sclDetails);
			combinedList.add(dataType);
			combinedList.add(values);
			combinedList.add(stateNos);
			combinedList.add(sequenceNos);
			combinedList.add(simulateds);

			/*ExcelLib.setExcelFilehssf("src/main/resources/TestData/ConfigMasterFile.xls","Actualdata");
					for (int i = 0; i < gseType.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+gseType.get(i));
						ExcelLib.setCellDataEndtoEnd(gseType.get(i), i +1, 0);
					}
					for (int i = 0; i < sourceAddress.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+sourceAddress.get(i));
						ExcelLib.setCellDataEndtoEnd(sourceAddress.get(i), i + 1, 1);
					}
					for (int i = 0; i < destinationAddress.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+destinationAddress.get(i));
						ExcelLib.setCellDataEndtoEnd(destinationAddress.get(i), i + 1, 2);
					}
					for (int i = 0; i < gseConRef.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+gseConRef.get(i));
						ExcelLib.setCellDataEndtoEnd(gseConRef.get(i), i + 1, 3);
					}
					for (int i = 0; i < datasetName.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+datasetName.get(i));
						ExcelLib.setCellDataEndtoEnd(datasetName.get(i), i + 1, 4);
					}
					for (int i = 0; i < gseId.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+gseId.get(i));
						ExcelLib.setCellDataEndtoEnd(gseId.get(i), i + 1, 5);
					}
					for (int i = 0; i < sclDetails.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+sclDetails.get(i));
						ExcelLib.setCellDataEndtoEnd(sclDetails.get(i), i + 1, 6);
					}
					for (int i = 0; i < dataType.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+dataType.get(i));
						ExcelLib.setCellDataEndtoEnd(dataType.get(i), i + 1, 7);
					}
					for (int i = 0; i < values.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+values.get(i));
						ExcelLib.setCellDataEndtoEnd(values.get(i), i + 1, 8);
					}
					for (int i = 0; i < simulateds.size(); i++) {
						Thread.sleep(1000);
						System.out.println("hii"+simulateds.get(i));
						ExcelLib.setCellDataEndtoEnd(simulateds.get(i), i + 1, 11);
					}
					return true;
				}

				else {
					return false;

				}
		}
		return combinedList;
	}


	//Show GSE columns from Data selector
	public static Boolean showGseColumn() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean status = false;
		DataSelectorclosebtn().click();
		showHideGooseColumns().click();
		Browsers.driver.switchTo().activeElement();
		Boolean status1 = gseID().isSelected();
		if (status1 == false) {
			gseID().click();
		}

		Thread.sleep(2000);
		Boolean status2 = sourceAddress().isSelected();
		if (status2 == false) {
			sourceAddress().click();
		}
		Thread.sleep(2000);
		Boolean status3 = destinationAddress().isSelected();
		if (status3 == false) {
			destinationAddress().click();
		}
		Thread.sleep(2000);
		Boolean status4 = datasetName().isSelected();
		if (status4 == false) {
			datasetName().click();
		}
		Thread.sleep(2000);
		Boolean status5 = sclDetails().isSelected();
		if (status5 == false) {
			sclDetails().click();
		}
		if (status1 == false) {
			Simulated().click();
		}
		saveSettings().click();
		Thread.sleep(2000);
		saveGooseConfig().click();
		List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"goosetable\"]/thead/tr/th"));
		int count1 = col.size();
		Thread.sleep(2000);
		for (int j = 2; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[2]/div[2]/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/table/thead/tr/th["
							+ j + "]"))
					.getText();
			String name = name1.trim();
			Thread.sleep(2000);
			if ((name.equals("GSE ID")) || (name.equals("Source Address")) || (name.equals("Dataset Name"))
					|| (name.equals("SCL Details")) || (name.equals("Destination Address"))
					|| (name.equals("Simulated"))) {
				status = true;
			}
			Thread.sleep(2000);
		}
		return status;
	}

}*/
