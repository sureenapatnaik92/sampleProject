/*package com.kalkitech.doble.classes.stationmessages;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SVMessages extends BaseClass {

	public SVMessages(WebDriver driver) {
		super(driver);

	}

	public static WebElement element = null;

	// Element - settings In GSE messages
	public static WebElement settingsInSV() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"//html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("settings In SV messages is found");
		} catch (Exception e) {
			Reporter.log("Error:settings In SV messages is not found");
			throw (e);
		}
		return element;
	}

	// Element - clear data in SV message setting option
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

	// Sv message table is available or not
	public static void svMessagePagesAvailable() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
	}

	// to check column lable are proper or not
	public static Boolean svColumnsTest() throws Exception {
		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("Source MAC Address");
		expected_columns.add("Destination MAC Address");
		expected_columns.add("IED Name");
		expected_columns.add("LD Name");
		expected_columns.add("SV ID");
		expected_columns.add("Dataset Name");
		expected_columns.add("SV Control Block Ref");
		expected_columns.add("APP ID");
		expected_columns.add("VLAN ID");
		expected_columns.add("VLAN Priority");
		expected_columns.add("Sample Rate");
		expected_columns.add("Synch");
		expected_columns.add("No. of ASDU");
		expected_columns.add("Delete");
		expected_columns.add("Configuration");
		Thread.sleep(2000);
		svMessagePagesAvailable();
		Thread.sleep(3000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/thead/tr/th"));
		int count1 = rows.size();
		Thread.sleep(2000);
		for (int j = 3; j <= count1; j++) {
			String name1 = Browsers.driver.findElement(By.xpath("//*[@id=\"smvInfotable\"]/thead/tr/th[" + j + "]/div"))
					.getText();
			String name = name1.trim();
			actual_columns.add(name);
			Thread.sleep(2000);
		}
		Thread.sleep(3000);
		if (actual_columns.equals(expected_columns)) {
			return true;
		} else {
			return false;
		}
	}

	public static Boolean deleteData() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//web element for deleting the first sv from SV table
		//to filter a particular field(Dataset Name)
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("TEMPLATEMU01/LLN0$PhsMeas3");
		Thread.sleep(1000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);		
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[16]/a/i")
		.click();
		Thread.sleep(2000);
		//delete button element click
		WebDriverUtils.findElementByXpath("/html/body/div[3]/div/div/div[3]/a/button").click();
		Thread.sleep(2000);
		//check if there are no particular rows
		if(count==0)
			return true;
		else
			return false;
	}

	// clear data from Sv message check
	public static void clearData() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		settingsInSV().click();
		Thread.sleep(2000);
		clearDataBtn().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		WebDriverUtils.findElementById("deleteHref").click();
		Thread.sleep(2000);
	}

	public static Boolean GSE6Messages() throws Exception {
		Boolean stat = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		int rowcount = 0;
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
			rowcount = rows.size();
		}
		if (rowcount == 6) {
			stat = true;
		}
		return stat;
	}

	// no GOOSE mssage when the table is loaded
	public static Boolean GSE0Messages() throws Exception {
		Boolean stat = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		int rowcount = 0;
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			rowcount = rows.size();
		}
		if (rowcount == 0) {
			stat = true;
		}
		return stat;
	}

	// sv message with sample rate 12800 check
	public static void svMessageSR12800() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//filter text box column in SV message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("12800");
		List<String> sampleRate = new ArrayList<String>();
		List<String> asdu = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount2 = rows2.size();
			for (int i = 1; i <= rowcount2; i = i + 2) {
				String samplerate = WebDriverUtils
						.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[13]").getText();
				sampleRate.add(samplerate);
				//asdu column element(column no 15) in sv message page in Station Message
				String ASDU = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
						.getText();
				asdu.add(ASDU);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/mandatoryTests.xls", "SR_12800_Actual");
		for (int i = 0; i < sampleRate.size(); i++) {
			ExcelLib.setCellDatahssf(sampleRate.get(i), i + 1, 0);
		}
		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 1);
		}
	}

	// to check sv with sample rate 14400
	public static void svMessageSR14400() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//filter column element in SV message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("14400");
		List<String> sampleRate = new ArrayList<String>();
		List<String> asdu = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount2 = rows2.size();
			for (int i = 1; i <= rowcount2; i = i + 2) {
				//sample rate column element in SV Message
				String samplerate = WebDriverUtils
						.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[13]").getText();
				sampleRate.add(samplerate);
				//ASDU column element in SV message
				String ASDU = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
						.getText();
				asdu.add(ASDU);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/mandatoryTests.xls", "SR_14400_Actual");
		for (int i = 0; i < sampleRate.size(); i++) {
			ExcelLib.setCellDatahssf(sampleRate.get(i), i + 1, 0);
		}
		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 1);
		}
	}

	// sv message with sample rate 96000
	public static void svMessageSR96000() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//filter text box elment of SV message in Station Message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("96000");
		List<String> sampleRate = new ArrayList<String>();
		List<String> asdu = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount2 = rows2.size();
			for (int i = 1; i <= rowcount2; i = i + 2) {
				String samplerate = WebDriverUtils
						.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[13]").getText();
				sampleRate.add(samplerate);
				//ASDU column element of SV Message in Station Message
				String ASDU = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
						.getText();
				asdu.add(ASDU);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			} // *[@id="paginationDiv"]/nav/ul/li[2]/a
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/mandatoryTests.xls", "SR_96000_Actual");
		for (int i = 0; i < sampleRate.size(); i++) {
			ExcelLib.setCellDatahssf(sampleRate.get(i), i + 1, 0);
		}

		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 1);
		}
	}

	// sv message having 1 stream and sample rate of 4800
	public static void svMessage1StreamSR4800() throws Exception {

		WebDriverUtils.implicitlyWait();
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//filter text box element in SV message
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("4800");
		List<String> sampleRate = new ArrayList<String>();
		List<String> asdu = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount2 = rows2.size();
			for (int i = 1; i <= rowcount2; i = i + 2) {
				//sample rate column ellement of SV message in Station Message
				String samplerate = WebDriverUtils
						.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[13]").getText();
				sampleRate.add(samplerate);
				String ASDU = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
						.getText();
				asdu.add(ASDU);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/mandatoryTests.xls", "SR_1Stream_4800_Actual");
		for (int i = 0; i < sampleRate.size(); i++) {
			ExcelLib.setCellDatahssf(sampleRate.get(i), i + 1, 0);
		}
		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 1);
		}
	}

	//sv message having sample rate of 4800
	public static void svMessageSR4800() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(5000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(3000);
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("4800");
		List<String> sampleRate = new ArrayList<String>();
		List<String> asdu = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount2 = rows2.size();
			for (int i = 1; i <= rowcount2; i = i + 2) {
				//sample rate element in SV message page
				String samplerate = WebDriverUtils
						.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[13]").getText();
				sampleRate.add(samplerate);
				//ASDU element in SV message
				String ASDU = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
						.getText();
				asdu.add(ASDU);
			}
			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/mandatoryTests.xls", "SR_4800_Actual");
		for (int i = 0; i < sampleRate.size(); i++) {
			ExcelLib.setCellDatahssf(sampleRate.get(i), i + 1, 0);
		}
		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 1);
		}
	}

	// sv message column data/values check
	public static void svMessageData() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		List<String> iedNames = new ArrayList<String>();
		List<String> SVNames = new ArrayList<String>();
		List<String> LDNames = new ArrayList<String>();
		List<String> SVID = new ArrayList<String>();
		List<String> dataSet = new ArrayList<String>();
		List<String> macAddress = new ArrayList<String>();
		List<String> AppId = new ArrayList<String>();
		List<String> vlanID = new ArrayList<String>();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int j = 1; j <= count; j++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
			int rowcount = rows.size();
			for (int i = 1; i <= rowcount; i = i + 2) {
				//IED name element in SV message
				String iedName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[2]")
						.getText();
				iedNames.add(iedName);
				//LD name element in SV message
				String ldName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[3]")
						.getText();
				LDNames.add(ldName);
				//SV name element in SV message
				String sv = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[6]")
						.getText();
				String svName = sv.substring(sv.lastIndexOf("$") + 1);
				SVNames.add(svName);
				//Dataset name element in SV message
				String datset = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[5	]")
						.getText();
				String datsetName = datset.substring(datset.lastIndexOf("$") + 1);
				dataSet.add(datsetName);
				//SV ID element in SV message
				String svId = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[4]")
						.getText();
				SVID.add(svId);
				//MAC Address element in SV message
				String mac = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[9]")
						.getText();
				macAddress.add(mac);
				Collections.replaceAll(macAddress, "-", "");
				//APP ID element in SV message
				String Appid = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[7]")
						.getText();
				AppId.add(Appid);
				//VLAN ID element in SV message
				String vlanid = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[10]")
						.getText();
				vlanID.add(vlanid);
			}

			int count2 = j + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"paginationDiv\"]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_actual");
		for (int i = 0; i < iedNames.size(); i++) {
			ExcelLib.setCellDatahssf(iedNames.get(i), i + 1, 0);
		}
		for (int i = 0; i < SVNames.size(); i++) {
			ExcelLib.setCellDatahssf(SVNames.get(i), i + 1, 2);

		}
		for (int i = 0; i < LDNames.size(); i++) {
			ExcelLib.setCellDatahssf(LDNames.get(i), i + 1, 1);
		}

		for (int i = 0; i < SVID.size(); i++) {
			ExcelLib.setCellDatahssf(SVID.get(i), i + 1, 3);
		}
		for (int i = 0; i < dataSet.size(); i++) {
			ExcelLib.setCellDatahssf(dataSet.get(i), i + 1, 4);
		}
		for (int i = 0; i < macAddress.size(); i++) {
			ExcelLib.setCellDatahssf(macAddress.get(i), i + 1, 5);
		}
		for (int i = 0; i < AppId.size(); i++) {
			ExcelLib.setCellDatahssf(AppId.get(i), i + 1, 6);
		}
	}

	public static void asduCheck() throws Exception {
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		List<String> asdu = new ArrayList<String>();
		// to check the no of rows present in SV table of SV message in SM
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			// to get the asdu column list in SV message page
			String asdus = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[15]")
					.getText();
			asdu.add(asdus);
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "asdu_Actual");
		for (int i = 0; i < asdu.size(); i++) {
			ExcelLib.setCellDatahssf(asdu.get(i), i + 1, 0);
		}
	}

	// to check filter column working properly with iedname
	public static void svMsgFilterIEDName() throws Exception {

		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		List<String> iedname = new ArrayList<String>();
		//to filter IED name in SV message in SM
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("TEMPLATE");
		//to check the rows in SV message page
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			String iedName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[3]")
					.getText();
			iedname.add(iedName);

		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_ied_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}
	}

	// to check filter column working properly with datasetref
	public static void svMsgDatasetRef() throws Exception {
		List<String> iedname = new ArrayList<String>();
		//clear the filter text box in the SV message page
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.clear();
		//to put dataset ref in the filter text box and check if it is present or not
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("TEMPLATEMU01/LLN0$PhsMeas2");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			//column 6 contains dataset ref so checking with column 6 in SV message
			String datasetRef = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[6]")
					.getText();
			iedname.add(datasetRef);
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_dataset_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}

	}
	// to check filter column working properly with LD name
	public static void svMsgLDName() throws Exception {

		List<String> iedname = new ArrayList<String>();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.clear();
		//to filter out the LD name from filter text box of SV message page in SM
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("MU01");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			//LD name column element which is the fourth column in SV message
			String ldName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[4]")
					.getText();
			iedname.add(ldName);
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_ld_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}
	}

	// to check filter column working properly with VLANP
	public static void svMsgvlanp() throws Exception {

		List<String> iedname = new ArrayList<String>();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.clear();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("4");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			String iedName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[12]")
					.getText();
			iedname.add(iedName);
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_vlanp_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}
	}

	// to check filter column working properly with AppId
	public static void svMsgAppId() throws Exception {
		WebDriverUtils.implicitlyWait();
		List<String> iedname = new ArrayList<String>();
		// List<String> asdu = new ArrayList<String>();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.clear();
		WebDriverUtils
		.findElementByXpath(
				"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[1]/div/input")
		.sendKeys("4003");
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
		int rowcount = rows.size();
		for (int i = 1; i <= rowcount; i = i + 2) {
			// String iedName =
			// WebDriverUtils.findElementByXpath("//*[@id='gseInfotable']/tbody/tr["+i+"]/td[13]").getText();

			String iedName = WebDriverUtils.findElementByXpath("//*[@id='smvInfotable']/tbody/tr[" + i + "]/td[8]")
					.getText();
			iedname.add(iedName);
		}
		ExcelLib.setExcelFilehssf("src/main/resources/TestData/SCLFileData.xls", "sv_appid_Actual");
		for (int i = 0; i < iedname.size(); i++) {
			ExcelLib.setCellDatahssf(iedname.get(i), i + 1, 0);
		}
	}

	// edit current Scale factor from configuration tab
	public static Boolean editCSF() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		//current scale factor elemnt in configuration window
		WebDriverUtils.findElementByXpath("//*[@id=\"currentScaleFactor\"]").clear();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id=\"currentScaleFactor\"]").sendKeys("1");
		Thread.sleep(2000);
		WebDriverUtils.findElementById("channelSave").click();
		// Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		//apply button in configuration tab in SV message
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[2]/div/div/div[3]/button").click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[17]/a")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		String expected_SF = Browsers.driver.findElement(By.xpath("//*[@id=\"currentScaleFactor\"]")).getAttribute("value");
		int sf = Integer.parseInt(expected_SF);
		if (sf == 1) {
			Browsers.driver.findElement(By.xpath("//*[@id='saveIED']/div[2]/button[2]")).click();
			status = true;
			return status;
		} else
			return false;
	}

	// edit current offset value from configuration
	public static Boolean editCOF() throws Exception {
		Boolean status = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		//current offset value in configuration tab in SV message
		WebDriverUtils.findElementByXpath("//*[@id=\"currentOffset\"]").clear();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id=\"currentOffset\"]").sendKeys("1");
		Thread.sleep(2000);
		//save button element of configuration tab of SV message in SM
		WebDriverUtils.findElementById("channelSave").click();
		Thread.sleep(2000);
		Thread.sleep(3000);
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[2]/div/div/div[3]/button").click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		String expected_SF = Browsers.driver.findElement(By.xpath("//*[@id=\"currentOffset\"]")).getAttribute("value");
		int sf = Integer.parseInt(expected_SF);
		if (sf == 1) {
			Browsers.driver.findElement(By.xpath("//*[@id='saveIED']/div[2]/button[2]")).click();
			status = true;
			return status;
		} else
			return false;
	}

	// edit voltage scale factor
	public static Boolean editVSF() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		//voltage element in configuration tab of SV message in SM
		WebDriverUtils.findElementByXpath("//*[@id=\"voltageScaleFactor\"]").clear();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id=\"voltageScaleFactor\"]").sendKeys("1");
		Thread.sleep(2000);
		//save elemnt in configuration tab
		WebDriverUtils.findElementById("channelSave").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		//close button elemnt after configuration is saved
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[2]/div/div/div[3]/button").click();
		Thread.sleep(2000);
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		String expected_SF = Browsers.driver.findElement(By.xpath("//*[@id=\"voltageScaleFactor\"]")).getAttribute("value");
		int sf = Integer.parseInt(expected_SF);
		if (sf == 1) {
			Browsers.driver.findElement(By.xpath("//*[@id='saveIED']/div[2]/button[2]")).click();
			status = true;
			return status;
		} else
			return false;
	}

	// edit voltage offset value from configuration tab
	public static Boolean editVOF() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		////web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		//voltage offset element in configuration tab of SV message
		WebDriverUtils.findElementByXpath("//*[@id=\"voltageOffset\"]").clear();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id=\"voltageOffset\"]").sendKeys("1");
		Thread.sleep(2000);
		WebDriverUtils.findElementById("channelSave").click();
		Thread.sleep(2000);
		Thread.sleep(3000);
		WebDriverUtils.findElementByXpath("/html/body/div[1]/div[2]/div/div/div[3]/button").click();
		Thread.sleep(2000);
		//web element of the configuration tab which is column 17 in SV message
		WebDriverUtils
		.findElementByXpath("//*[@id=\"smvInfotable\"]/tbody/tr[1]/td[17]/a/i")
		.click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		String expected_OF = Browsers.driver.findElement(By.xpath("//*[@id=\"voltageOffset\"]")).getAttribute("value");
		int of = Integer.parseInt(expected_OF);
		if (of == 1) {
			Browsers.driver.findElement(By.xpath("//*[@id='saveIED']/div[2]/button[2]")).click();
			status = true;
			return status;
		} else
			return false;
	}

	// to check the subset of SV message columns present
	public static Boolean datasetColumns() throws Exception {
		List<String> actual_columns = new ArrayList<String>();
		List<String> expected_columns = new ArrayList<String>();
		expected_columns.add("Channel ID");
		expected_columns.add("Data Type");
		expected_columns.add("Scale Factor");
		expected_columns.add("Offset");
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		WebDriverUtils
		.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/table/tbody/tr[1]/td[1]/a/i")
		.click();
		Thread.sleep(2000);
		for (int j = 1; j <= 4; j++) {
			String name = Browsers.driver.findElement(By.xpath("//*[@id=\"s4\"]/tbody/tr/th[" + j + "]")).getText();
			actual_columns.add(name);
		}
		Thread.sleep(2000);
		if (actual_columns.equals(expected_columns)) {
			return true;
		} else {
			return false;
		}
	}

	//clear data tab for sv message check
	public static Boolean svMessageclearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		settingsInSV().click();
		Thread.sleep(2000);
		clearDataBtn().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		WebDriverUtils.findElementById("deleteHref").click();
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='smvInfotable']/tbody/tr"));
		int count = rows.size();
		Thread.sleep(2000);
		if (count == 0) {
			return true;
		} else {
			return false;
		}
	}
}*/