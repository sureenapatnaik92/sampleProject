/*package com.kalkitech.doble.classes.SCLFiles;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SCLFileLoading_old extends BaseClass {

	public SCLFileLoading_old(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// Element -SCL files in Menu
	public static WebElement SCLFiles() throws Exception {
		try {
			element = WebDriverUtils.findElementById("repository");
			Reporter.log("SCL Files tab is found in menu");
		} catch (Exception e) {
			Reporter.log("SCL Files tab is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element - Settings in SCL file
	public static WebElement SCLFilesSettings() throws Exception {
		try {
			Thread.sleep(3000);
			element = WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
							
					Reporter.log("Settings is found in SCLFiles");
		} catch (Exception e) {
			Reporter.log("Settings is not found in SCLFiles");
			throw (e);
		}
		return element;
	}

	// Element - upload button in settings
	public static WebElement Upload() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Upload");
			Reporter.log("upload is found in settings");
		} catch (Exception e) {
			Reporter.log("upload is not found in settings");
			throw (e);
		}
		return element;
	}

	// Element - Choose file button in upload screen
	public static WebElement ChooseFile() throws Exception {
		try {
			element = WebDriverUtils.findElementById("singleFileUploadInput");
			Reporter.log("Choose file button found in upload screen");
		} catch (Exception e) {
			Reporter.log("Choose file button not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - Submit button in upload screen
	public static WebElement Submit() throws Exception {
		try {
			element = WebDriverUtils.findElementById("submitbutton");
			Reporter.log("Submit button found in upload screen");
		} catch (Exception e) {
			Reporter.log("Submit button not found in upload screen");
			throw (e);
		}
		return element;
	}

	public static WebElement replaceFileYes() throws Exception {
		try {
			element = WebDriverUtils.findElementById("proccedOverwrite");
			Reporter.log("Yes button is found in File exists screen");
		} catch (Exception e) {
			Reporter.log("Yes button is not found in File exists screen");
			throw (e);
		}
		return element;
	}
	
	public static WebElement replaceFileNo() throws Exception {
		try {
			element = WebDriverUtils.findElementById("doNotProceedOverWrite");
			Reporter.log("No button is found in File exists screen");
		} catch (Exception e) {
			Reporter.log("No button is not found in File exists screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for cid
	public static WebElement checkboxCid() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkCid");
			Reporter.log("check box for cid found in upload screen");
		} catch (Exception e) {
			Reporter.log("check box for cid not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for Scd
	public static WebElement checkboxScd() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkScd");
			Reporter.log("check box for scd found in upload screen");
		} catch (Exception e) {
			Reporter.log("check box for scd not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for iid
	public static WebElement checkboxiid() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkIid");
			Reporter.log("check box for iid found in upload screen");
		} catch (Exception e) {
			Reporter.log("check box for iid not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for sed
	public static WebElement checkboxSed() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkSed");
			Reporter.log("check box for sed found in upload screen");
		} catch (Exception e) {
			Reporter.log("check box for sed not found in upload screen");
			throw (e);
		}
		return element;
	}

	
	// Element - check box for icd
	public static WebElement checkboxIcd() throws Exception {
		try {

			element = WebDriverUtils.findElementById("chkIcd");

			Reporter.log("check box for icd found in upload screen");

		} catch (Exception e) {

			Reporter.log("check box for icd not found in upload screen");

			throw (e);

		}

		return element;
	}

	// Element - check box for ssd
	public static WebElement checkboxSsd() throws Exception {
		try {

			element = WebDriverUtils.findElementById("chkSsd");

			Reporter.log("check box for ssd found in upload screen");

		} catch (Exception e) {

			Reporter.log("check box for ssd not found in upload screen");

			throw (e);

		}

		return element;
	}

	// Element - search
	public static WebElement Search() throws Exception {
		try {

			element = WebDriverUtils.findElementById("table_search");

			Reporter.log("search in SCLFiles");

		} catch (Exception e) {

			Reporter.log("search in SCLFiles");

			throw (e);

		}

		return element;
	}

	

	// Delete Selected button in settings
	public static WebElement deleteSelectedBtn() throws Exception {
		try {

			element = WebDriverUtils.findElementById("deleteMultipleFiles");
			Reporter.log("delete selected button is found in settings");

		} catch (Exception e) {

			Reporter.log("delete selected button is found in settings");

			throw (e);
		}

		return element;
	}

	// Select All files check box in SCL files table
	public static WebElement selectAllFiles() throws Exception {
		try {

			element = WebDriverUtils.findElementById("files-select-all");
			Reporter.log("Select All files check box is found in SCL files table");

		} catch (Exception e) {

			Reporter.log("Select All files check box is not found in SCL files table");

			throw (e);

		}

		return element;

	}

	// Select All IEDS check box in Select IEDs table
		public static WebElement selectAllIEDs() throws Exception {
			try {
				
				element = WebDriverUtils.findElementById("selIedCheckAll");
				Reporter.log("Select All IEDS check box is found in Select IEDs table");

			} catch (Exception e) {

				Reporter.log("Select All IEDS check box is not found in Select IEDs table");

				throw (e);

			}

			return element;

		}
		
		// Load button in Select IEDs Tab
				public static WebElement loadBtn() throws Exception {
					try {
						
						element = WebDriverUtils.findElementById("loadIedList");
						Reporter.log("Load button is found in Select IEDs Tab");

					} catch (Exception e) {

						Reporter.log("Load button is not found in Select IEDs Tab");

						throw (e);

					}

					return element;

				}

	// Close button in Select IEDs Tab
	public static WebElement Closebtn() throws Exception {
		try {
			// *[@id="ProgressModal"]/div/div/div[3]/button
			element = WebDriverUtils.findElementByXpath("//*[@id=\"ProgressModal\"]/div/div/div[3]/button ");
			Reporter.log("close button is found in Select IEDs Tab");

		} catch (Exception e) {

			Reporter.log("close button is not found in Select IEDs Tab");

			throw (e);

		}

		return element;

	}
	
	// Close button in Load IEDs status Tab
		public static WebElement ClosebtnInLoadStatus() throws Exception {
			try {
				
				element = WebDriverUtils.findElementById("ok");
				Reporter.log("close button is found in Load IEDs status Tab");

			} catch (Exception e) {

				Reporter.log("close button is not found in Load IEDs status Tab");

				throw (e);

			}

			return element;

		}
	// load SCL file with SV messages

	public static void sclFileWithSVLoad() throws Exception {
		String filename1 = "sv_ch_8 ch_2ASDU_3streams_4800smp.icd";
		String filename2 = "sv_ch_8 ch_1ASDU_3streams_96000smp.icd";
		File file1 = new File(filename1);
		File file2 = new File(filename2);
		String absolutePath1 = file1.getAbsolutePath();
		String absolutePath2 = file2.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename2;
		absolutePath2 = absolutePath2.substring(0, absolutePath2.lastIndexOf("\\") + 1);
		absolutePath2 = absolutePath2 + "src\\main\\resources\\TestData\\" + filename2;
		Thread.sleep(3000);
		SCLFiles().click();
		Thread.sleep(3000);
		List<String> autoit_scripts = new ArrayList<String>();
		autoit_scripts.add("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		autoit_scripts.add("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath2);

		for (int i = 0; i < autoit_scripts.size(); i++) {
			SCLFilesSettings().click();
			Thread.sleep(3000);
			Upload().click();
			Thread.sleep(3000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec(autoit_scripts.get(i));
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(2000);
			if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
				WebDriverUtils.findElementById("proccedOverwrite").click();

			}
			Thread.sleep(5000);
		}

	}

	// This method is to verify if scl file loading is working properly
	public static void sclFileLoad(String filename) throws Exception {
		Thread.sleep(1000);
		SCLFiles().click();                               //Navigate to SCL files tab
		Thread.sleep(1000);
		SCLFilesSettings().click();                       //Click on Settings button in SCL files
		Thread.sleep(1000);
		Upload().click();							      //Click on upload button in SCL files
		Thread.sleep(2000);
		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
		absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename;
		Thread.sleep(3000);
		ChooseFile().click();								//Click on choose button in SCL files
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath);   //Running AutoIT script to select file from windows explorer
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			Thread.sleep(2000);
			replaceFileYes().click();

		}
		Thread.sleep(3000);
		selectAllIEDs().click();
		loadBtn().click();
		Thread.sleep(2000);
		ClosebtnInLoadStatus().click();
		Thread.sleep(5000);
	}

	// This method is to check if file is available in file system table
	public static Boolean CheckFileInFileSystem(String file) throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();					//Navitating to SCL Files table
		Boolean status = false;
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");		//Checking no of pages in the table
		int count = Integer.parseInt(pagination);

			outerloop: 
			for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
				// String actualfile=actual_file+".icd";
				if (actual_file.equals(file)) {                             //Checking if file name is found in the table
					status = true;
					break outerloop;
				} else {
					status = false;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}

		}
		return status;
	}

	

	// This method is to verify if warning message is displaying on submit without
	// uploading file
	public static Boolean warningMsgOnSubmitWithoutUpload() throws Exception {
		Thread.sleep(3000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Thread.sleep(3000);
		Upload().click();
		Thread.sleep(2000);
		Submit().click();
		System.out.println(ChooseFile().getAttribute("validationMessage"));
		Thread.sleep(2000);
		
		if(ChooseFile().getAttribute("validationMessage").contentEquals("Please select a file.")) {
			Reporter.log("warning message is displayed on submit without uploading file");
			return true;
		} else {
			Reporter.log("Error : warning message not displayed on submit without uploading file");
			return false;
		}

	}

	// This method is to verify error message on duplicate file upload
	public static Boolean duplicateFileUploadMsg() throws Exception {
		String filename = "BCU_402T.SCD";
		Boolean status = CheckFileInFileSystem(filename);
		if(status==false)
		{
		sclFileLoad(filename);
		}
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Thread.sleep(3000);
		Upload().click();
		Thread.sleep(2000);
		
		File file = new File("filename");
		String absolutePath = file.getAbsolutePath();
		absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
		absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename;
		Thread.sleep(3000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +" //
		// "+fileNam
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(3000);
		String actual_msg = "";
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			actual_msg = WebDriverUtils.findElementByXpath("//div[@id='confirmModal']/div/div/div[2]/p[1]").getText();
		}
		String expected_msg = "The selected file already exists. The existing file will be replaced.";

		if (actual_msg.equals(expected_msg)) {
			Reporter.log("error message is displayed on duplicate file upload");
			return true;
		} else {
			Reporter.log("Error : error message not displayed on duplicate file upload");
			return false;
		}
	}

	// Verify that all above filter options(tick icd file) work properly
	public static Boolean uploadFileByType() throws Exception {
		String filename1 = "sv_ch_8 ch_2ASDU_3streams_4800smp.icd";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		Boolean status1 = checkboxIcd().isDisplayed();
		if (status1) {
			checkboxCid().click();
			checkboxiid().click();
			checkboxScd().click();
			checkboxSed().click();
			checkboxSsd().click();
		}
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			WebDriverUtils.findElementById("proccedOverwrite").click();

		}
		Thread.sleep(5000);
		return true;
	}
	// Verify that user can select and deselect the "Select All" check box

	public static boolean selectDeselectIEDs() throws Exception {
		String filename1 = "BCU_402T.scd";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			WebDriverUtils.findElementById("proccedOverwrite").click();

		}
		Thread.sleep(5000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				String actualfile = actual_file + ".scd";
				if (actualfile.equals(filename1)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.id("selIedCheckAll")).click();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.id("selIedCheckAll")).click();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"closebox\"]")).click();
					Thread.sleep(3000);
					return true;
				}

			}

		}

		return true;
	}

	// select 1 ied from the file and load it
	public static boolean selectOneIED() throws Exception {

		String filename1 = "Ch1Line1.CID";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(3000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			WebDriverUtils.findElementById("proccedOverwrite").click();

		}

		Thread.sleep(5000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				String actualfile = actual_file + ".CID";
				if (actualfile.equals(filename1)) {
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Browsers.driver.findElement(By.xpath("//*[@id=\"loadIedList\"]")).click();
					Thread.sleep(3000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.id("ok")).click();
					return true;
				}

			}

		}

		return true;
	}

	public static boolean selectIEDforGoose() throws Exception {
		String filename1 = "Ch1Line1.CID";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			WebDriverUtils.findElementById("proccedOverwrite").click();

		}
		Thread.sleep(5000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				String actualfile = actual_file + ".CID";
				if (actualfile.equals(filename1)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"closebox\"]")).click();
					Thread.sleep(3000);
				}
			}
		}
		return true;
	}

	public static boolean siscoError() throws Exception {
		Boolean status = false;
		String filename1 = "$I3JWORX.icd";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(3000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			WebDriverUtils.findElementById("proccedOverwrite").click();

		}
		Thread.sleep(5000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				String actualfile = actual_file + ".icd";
				if (actualfile.equals(filename1)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a/img"))
					.click();

					// *[@id="loadStatusMsg"]
					// *[@id="loadStatusMsg"]

				}

			}

		}
		Thread.sleep(5000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		String str = Browsers.driver.findElement(By.id("loadStatusMsg")).getText();
		System.out.println(str);
		Thread.sleep(5000);
		String str1 = "SCL parse error!";
		String str2 = "Reason: Parse error, XML is malformed";
		String str3 = str1 + '\n' + str2;
		if (str.equals(str3)) {

			status = true;

			Browsers.driver.findElement(By.xpath("/html/body/div[12]/div/div/div[3]/button")).click();

		}

		return status;
	}

	// This method is to verify if extensions are available in upload screen
	public static Boolean extensionAvailableCheck() throws Exception {
		Thread.sleep(3000);
		SCLFiles().click();
		Thread.sleep(3000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ArrayList<Boolean> actual_status = new ArrayList<Boolean>();
		Boolean status1 = checkboxCid().isDisplayed();
		Boolean status2 = checkboxIcd().isDisplayed();
		Boolean status3 = checkboxiid().isDisplayed();

		Boolean status4 = checkboxScd().isDisplayed();
		Boolean status5 = checkboxSed().isDisplayed();
		Boolean status6 = checkboxSsd().isDisplayed();
		actual_status.add(status1);
		actual_status.add(status2);
		actual_status.add(status3);
		actual_status.add(status4);
		actual_status.add(status5);
		actual_status.add(status6);

		List<Boolean> extected_status = Arrays.asList(true,true,true,true,true,true);
		
		if (actual_status.equals(extected_status)) {
			Reporter.log("extensions are available in upload screen");
			return true;
		} else {
			Reporter.log("Error : extensions not available in upload screen");
			return false;
		}

	}

	public static Boolean searchFunctionSclFilesTable(String fileName) throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		// Search().sendKeys(fileName);
		Thread.sleep(4000);
		boolean status = SCLFileLoading_old.CheckFileInFileSystem(fileName);
		Thread.sleep(3000);
		return status;
	}

	// This method is to verify is search button is working properly in file system tab
	public static Boolean searchFunctionFileSystem() throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);

		Search().sendKeys("BCU");
		WebDriverUtils.findElementByXpath("//*[@id=\"searchTextBox\"]/div/button").click();
		Thread.sleep(2000);

		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
		int count1 = rows.size();
		if(count1==0)
		{
			sclFileLoad("BCU_402T.scd");
			Search().sendKeys("BCU");
			WebDriverUtils.findElementByXpath("//*[@id=\"searchTextBox\"]/div/button").click();
			Thread.sleep(2000);

			List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count2 = rows1.size();
			for (int j = 1; j <= count2; j++) {
				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]"))
						.getText();
				if (actual_file.contains("BCU")) {
					return true;

				}

			}
		}else {
		for (int j = 1; j <= count1; j++) {
			String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]"))
					.getText();
			if (actual_file.contains("BCU")) {
				return true;

			}

		}
		}
		return false;
	}

	// This method is to verify is check box check is working properly in recent
	// files tab
	public static Boolean checkBoxFucntionRecentfiles() throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);

		WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/tbody/tr[1]/td[1]/input").click();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Boolean actual_status = WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/tbody/tr[1]/td[1]/input")
				.isSelected();
		if (actual_status.equals(expected_status)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to verify is check box check is working properly in file
	// system tab
	public static Boolean checkBoxFucntionFilesystem() throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		// WebDriverUtils.findElementByLinkText("File System").click();
		// Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/tbody/tr[1]/td[1]/input").click();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Boolean actual_status = WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/tbody/tr[1]/td[1]/input")
				.isSelected();
		if (actual_status.equals(expected_status)) {
			Reporter.log("check box check is working properly in file");
			return true;
		} else {
			Reporter.log("Error : check box check not working properly in file");
			return false;
		}
	}

	// This method is to verify column names in filesystem table
	public static Boolean columnCheckInfilesystemTable() throws Exception {
		Thread.sleep(2000);
		ArrayList<String> actual_columns = new ArrayList<String>();
		SCLFiles().click();
		Thread.sleep(2000);
		for (int i = 2; i < 8; i++) {
			String text = WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/thead/tr/th[" + i + "]")
					.getText();
			Thread.sleep(2000);
			actual_columns.add(text);
		}

		ArrayList<String> extected_columns = new ArrayList<String>();
		extected_columns.add("File Name");
		extected_columns.add("File Type");
		extected_columns.add("Uploaded On");
		extected_columns.add("Size");
		extected_columns.add("Modified Date");
		// extected_columns.add("Load");
		extected_columns.add("Options");
		if (actual_columns.equals(extected_columns)) {
			Reporter.log("verified column names in filesystem table");
			return true;
		} else {
			Reporter.log("Error : Unable to verify column names in filesystem table");
			return false;
		}

	}

	// This method is to verify column names in recent files table
	public static Boolean columnCheckInrecentFileTable() throws Exception {
		Thread.sleep(2000);
		ArrayList<String> actual_columns = new ArrayList<String>();
		SCLFiles().click();
		Thread.sleep(2000);

		for (int i = 2; i < 9; i++) {
			String text = WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/thead/tr/th[" + i + "]")
					.getText();
			Thread.sleep(2000);
			actual_columns.add(text);
		}

		ArrayList<String> extected_columns = new ArrayList<String>();
		extected_columns.add("File Name");
		extected_columns.add("File Type");
		extected_columns.add("Uploaded On");
		extected_columns.add("Size");
		extected_columns.add("Created Date");
		extected_columns.add("Load");
		extected_columns.add("Options");
		if (actual_columns.equals(extected_columns)) {
			return true;
		} else {
			return false;
		}

	}

	// This method is to verify delete file in filesystem table
	public static Boolean deleteFileInfilesystemTable() throws Exception {
		Thread.sleep(2000);
		String filename= "BCU_402T";
		String filename1= "BCU_402T.scd";
		Boolean status = CheckFileInFileSystem(filename);
		if(status==false)
		{
			sclFileLoad(filename1);
		}
		SCLFiles().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/a[4]/i").click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					WebDriverUtils.findElementByXpath("//*[@id=\"deleteHref\"]/button").click();
					Thread.sleep(4000);
					break outerloop;
				} 
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}

		}
		

		Browsers.driver.navigate().refresh();
		Thread.sleep(4000);
		SCLFiles().click();
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count1 = Integer.parseInt(pagination1);
		Boolean status1 =null;
		outerloop: 
			for (int i = 1; i <= count1; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count2 = rows.size();
			for (int j = 1; j <= count2; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					
					status1= false;
					break outerloop;
				} 
				else {
					status1= true;
				}
			}
			int count3 = i + 1;
			if (count3 <= count1) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count3 + "]/a").click();
			}

		}
		
		return status1;
	}

	

	// This method is to verify cancel delete file in file system table
	public static Boolean canceldeleteFileInFileSystemTable() throws Exception {
		String text1 = null;
		String text = null;
		Thread.sleep(2000);
		String filename= "BCU_402T";
		String filename1= "BCU_402T.scd";
		Boolean status = CheckFileInFileSystem(filename);
		if(status==false)
		{
			sclFileLoad(filename1);
		}
		SCLFiles().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/a[4]/i").click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[3]/button").click();
					Thread.sleep(4000);
					break outerloop;
				} 
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}

		}
		

		Browsers.driver.navigate().refresh();
		Thread.sleep(4000);
		SCLFiles().click();
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count1 = Integer.parseInt(pagination1);
		Boolean status1 =null;
		outerloop: 
			for (int i = 1; i <= count1; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count2 = rows.size();
			for (int j = 1; j <= count2; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					
					status1= true;
					break outerloop;
				} 
				else {
					status1= false;
				}
			}
			int count3 = i + 1;
			if (count3 <= count1) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count3 + "]/a").click();
			}

		}
		
		return status1;
	}
	

	// This method is to verify cancel delete file in recent file table
	public static Boolean canceldeleteFileInRecentFileTable() throws Exception {
		String text1 = null;
		String text = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		text = WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/tbody/tr[1]/td[2]").getText();
		WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/tbody/tr[1]/td[8]/a/i").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[3]/button").click();
		Thread.sleep(4000);
		Browsers.driver.navigate().refresh();
		Browsers.driver.switchTo().defaultContent();
		Thread.sleep(2000);
		text1 = WebDriverUtils.findElementByXpath("//*[@id='recentscltable']/tbody/tr[1]/td[2]").getText();
		if (text.equals(text1)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to verify replacement of same file
	public static Boolean replaceDuplicateFileUpload() throws Exception {
		String actual_time = null;
		String actual_time1 = null;
		Thread.sleep(2000);
		String filename = "BCU_402T";
		String filename1 = "BCU_402T.SCD";
		Boolean filestatus = CheckFileInFileSystem(filename);
		if(filestatus==false)
		{
			sclFileLoad(filename1);
		}
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = null;
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					actual_time = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[4]"))
							.getText();
					status = true;
					break outerloop;
				} else {
					status = false;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}

		}
		
		Thread.sleep(3000);
		
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			Thread.sleep(2000);
			;
			replaceFileYes().click();
		}
		
		Thread.sleep(3000);
		selectAllIEDs().click();
		loadBtn().click();
		Thread.sleep(2000);
		ClosebtnInLoadStatus().click();
		Thread.sleep(5000);
		// WebDriverUtils.findElementByLinkText("File System").click();
		Thread.sleep(2000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count3 = Integer.parseInt(pagination1);
		outerloop: for (int i = 1; i <= count3; i++) {
			List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count4 = rows1.size();
			for (int j = 1; j <= count4; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					actual_time1 = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[4]")).getText();
					break outerloop;
				}

			}
			int count5 = i + 1;
			if (count5 <= count3) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count5 + "]/a").click();
			}

		}

		if (actual_time1.equals(actual_time)) {
			return false;
		} else {
			return true;
		}

	}

	// This method is to verify cancel replacement of same file
	public static Boolean cancelReplaceDuplicateFileUpload() throws Exception {
		String actual_time = null;
		String actual_time1 = null;
		Thread.sleep(2000);
		String filename = "BCU_402T";
		String filename1 = "BCU_402T.SCD";
		Boolean filestatus = CheckFileInFileSystem(filename);
		System.out.println(filestatus);
		if(filestatus==false)
		{
			sclFileLoad(filename1);
		}
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = null;
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					actual_time = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[4]"))
							.getText();
					status = true;
					break outerloop;
				} else {
					status = false;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}

		}
		Thread.sleep(2000);

		
		Thread.sleep(3000);
		
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Thread.sleep(2000);
		SCLFilesSettings().click();
		Upload().click();
		Thread.sleep(2000);
		ChooseFile().click();
		Thread.sleep(3000);
		Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
		Thread.sleep(5000);
		Submit().click();
		Thread.sleep(2000);
		if (WebDriverUtils.findElementById("modalLabel").isDisplayed()) {
			Thread.sleep(2000);
			;
			replaceFileNo().click();
		}
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//*[@id=\"fileModal\"]/div/div/div[1]/button/span").click();
		Thread.sleep(3000);
		
		// WebDriverUtils.findElementByLinkText("File System").click();
		Thread.sleep(2000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count3 = Integer.parseInt(pagination1);
		outerloop: for (int i = 1; i <= count3; i++) {
			List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count4 = rows1.size();
			for (int j = 1; j <= count4; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					actual_time1 = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[4]")).getText();
					break outerloop;
				}

			}
			int count5 = i + 1;
			if (count5 <= count3) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count5 + "]/a").click();
			}

		}
System.out.println(actual_time);
System.out.println(actual_time1);
		if (actual_time1.equals(actual_time)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if files can be deleted from deleteAll btn in file
	// system tab
	public static void removefileUsingDeleteAllFileSystem() throws Exception {

		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("BCU_402T");
		if (status == false) {
			sclFileLoad("BCU_402T.scd");
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
					.click();
					Thread.sleep(2000);
					SCLFilesSettings().click();
					Thread.sleep(2000);
					deleteSelectedBtn().click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button").click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
	}

	
	// This method is to check if all files can be selected/un selected from select
	// all btn in file system tab
	public static boolean selectFilesUsingSelectAllFileSystem() throws Exception {

		Boolean status1 = null;
		Boolean status2 = null;
		List<Boolean> actual_status = new ArrayList<Boolean>();
		List<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);

		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		selectAllFiles().click();
		Thread.sleep(2000);

		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
		int count1 = rows.size();
		for (int j = 1; j <= count1; j++) {
			Boolean status = Browsers.driver
					.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
					.isSelected();
			if (status.equals(true)) {
				status1 = true;
			} else {
				status1 = false;
				break;
			}
		}

		Thread.sleep(3000);
		selectAllFiles().click();
		Thread.sleep(2000);
		List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
		int count2 = rows1.size();
		for (int j = 1; j <= count2; j++) {
			Boolean status = Browsers.driver
					.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
					.isSelected();
			if (status.equals(false)) {
				status2 = true;

			} else {
				status2 = false;
				break;

			}
		}
		actual_status.add(status1);
		actual_status.add(status2);

		if (actual_status.equals(expected_status)) {
			return true;
		} else {
			return false;
		}

	}

	

	// This method is to verify rename file in file system table
	public static Boolean renameFileInFilesystemTable() throws Exception {
		String text1 = null;
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("BCU_402T");
		if(status == false)
		{
			sclFileLoad("BCU_402T.scd");
		}
		SCLFiles().click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[3]/i").click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					WebDriverUtils.findElementById("fileRename").sendKeys("TC_28");
					Thread.sleep(2000);
					WebDriverUtils.findElementById("filenamechange").click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().defaultContent();
					Browsers.driver.navigate().refresh();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		
		Boolean name_status = null;
		Thread.sleep(2000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count2 = Integer.parseInt(pagination1);
		outerloop: for (int i = 1; i <= count2; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count3 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count3; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("TC_28")) {
					
					name_status = true;
					break outerloop;
				}
				else
				{
					name_status=false;
				}
			}
			int count4 = i + 1;
			if (count4 <= count2) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count4 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		return name_status;
	}

	// This method is to verify deleting all files from file system table using
	// delete all button
	public static Boolean deleteAllFileInFilesystemTable() throws Exception {
		Thread.sleep(2000);
		SCLFiles().click();						//Navigating to SCL Files tab
		Thread.sleep(2000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");		//Checking for no of pages
		int count3 = Integer.parseInt(pagination1);
		for (int i = 1; i <= count3; i++) {
			selectAllFiles().click();;					//Selecting all files from the table
			Thread.sleep(3000);
			SCLFilesSettings().click();			//clicking on settings button
			Thread.sleep(3000);
			deleteSelectedBtn().click();		//clicking on delete select file button
			Thread.sleep(3000);
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(3000);
			WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button").click();    //clicking on delete yes button
			Thread.sleep(5000);
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(3000);
		}
		Thread.sleep(3000);
		List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));     //checking if all rows are deleted or not
		int count1 = rows.size();
		if (count1 == 0) {
			Reporter.log("verified deleting all files from file system table using delete all button");
			return true;
		} else {
			Reporter.log("Error : unable to verify deleting all files from file system table using delete all button");
			return false;
		}
	}

	

	// This method is to check if file can be loaded in file system tab
	public static Boolean loadFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("TR3000");
		if (status == false) {
			String filename1 = "TR3000.ICD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
			// CheckFileExistorNot().click();
			// SCLFiles().click();
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("TR3000")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status3 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status3 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if icd file can be loaded in file system tab
	public static Boolean loadicdFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("Ed2TestIED");
		if (status == false) {
			String filename1 = "Ed2TestIED.ICD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("Ed2TestIED")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					// WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[1]/input").click();
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(3000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(3000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if icd file can be load window
	public static Boolean loadingWindowicdFile() throws Exception {

		List<String> list = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		list2.add("IED Name");
		list2.add("Access Point");
		list2.add("Edition");
		list2.add("Status");
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("Ed2TestIED");
		if (status == false) {
			String filename1 = "Ed2TestIED.ICD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
			// SCLFiles().click();
		}
		// Thread.sleep(2000);

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("Ed2TestIED")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
					int coun = col.size();
					// int checkboxCount =0;
					for (int k = 2; k <= coun; k++) {
						String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
								.getText();
						list.add(colName);
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		if (list.equals(list2)) {
			return true;
		} else {
			return false;
		}

	}

	// This method is to check if cid file can be loaded in file system tab
	public static Boolean loadcidFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("411L");
		if (status == false) {
			String filename1 = "411L.CID";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("411L")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if cid file can be loaded window
	public static Boolean loadingWindowcidFile() throws Exception {
		List<String> list = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		list2.add("IED Name");
		list2.add("Access Point");
		list2.add("Edition");
		list2.add("Status");
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("411L");
		if (status == false) {
			String filename1 = "411L.CID";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("411L")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
					int coun = col.size();
					// int checkboxCount =0;
					for (int k = 2; k <= coun; k++) {
						String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
								.getText();
						list.add(colName);
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (list.equals(list2)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if iid file can be loaded in file system tab
	public static Boolean loadiidFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("Controller1_Outbound_SCL_NoProdIP");
		if (status == false) {
			String filename1 = "Controller1_Outbound_SCL_NoProdIP.IID";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("Controller1_Outbound_SCL_NoProdIP")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					// WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[1]/input").click();
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					// WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr/td[7]/a[4]/i").click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if iid file can be loaded window
	public static Boolean loadingWindowiidFile() throws Exception {
		List<String> list = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		list2.add("IED Name");
		list2.add("Access Point");
		list2.add("Edition");
		list2.add("Status");
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("Controller1_Outbound_SCL_NoProdIP");
		if (status == false)
		{
			String filename1 = "Controller1_Outbound_SCL_NoProdIP.IID";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("Controller1_Outbound_SCL_NoProdIP")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
					int coun = col.size();
					// int checkboxCount =0;
					for (int k = 2; k <= coun; k++) {
						String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
								.getText();
						list.add(colName);
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (list.equals(list2)) {
			return true;
		} else {
			return false;
		}

	}

	// This method is to check if scd file can be loaded in file system tab
	public static Boolean loadscdFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("BCU_402T");
		if (status == false) {
			String filename1 = "BCU_402T.SCD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if scd file can be loaded window
	public static Boolean loadingWindowscdFile() throws Exception {
			List<String> list = new ArrayList<String>();
			List<String> list2 = new ArrayList<String>();
			list2.add("IED Name");
			list2.add("Access Point");
			list2.add("Edition");
			list2.add("Status");
			Thread.sleep(2000);
			SCLFiles().click();
			Thread.sleep(2000);
			Boolean status = CheckFileInFileSystem("BCU_402T");
			if (status == false) {
				String filename1 = "BCU_402T.scd";
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				Thread.sleep(2000);
				SCLFilesSettings().click();
				Upload().click();
				Thread.sleep(2000);
				ChooseFile().click();
				Thread.sleep(3000);
				Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
				Thread.sleep(5000);
				Submit().click();
				Thread.sleep(5000);
			}
			String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				// int checkboxCount =0;
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("BCU_402T")) {
						Thread.sleep(2000);
						Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
						.click();
						Thread.sleep(4000);
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(2000);
						List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
						int coun = col.size();
						// int checkboxCount =0;
						for (int k = 2; k <= coun; k++) {
							String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
									.getText();
							list.add(colName);
						}
						break outerloop;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
					Thread.sleep(3000);
				}
			}
			if (list.equals(list2)) {
				return true;
			} else {
				return false;
			}
	}

	// This method is to check if ssd file can be loaded in file system tab
	public static Boolean loadssdFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("IOP 2017 SLD R2");
		if (status == false) {
			String filename1 = "IOP 2017 SLD R2.SSD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("IOP 2017 SLD R2")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/i"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if ssd file can be loaded window
	public static Boolean loadingWindowssdFile() throws Exception {
		List<String> list = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		list2.add("IED Name");
		list2.add("Access Point");
		list2.add("Edition");
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("IOP 2017 SLD R2");
		if (status == false) {
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\fileupload-scl_ssd.exe");
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("IOP 2017 SLD R2")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
					int coun = col.size();
					for (int k = 2; k <= coun; k++) {
						String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
								.getText();
						list.add(colName);
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		if (list.equals(list2)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if sed file can be loaded in file system tab
	public static Boolean loadsedFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(3000);
		Boolean status = CheckFileInFileSystem("1");
		Thread.sleep(2000);
		if (status == false) {
			String filename1 = "1.SED";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("1")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		if (text.equals("Parsing ok") || text.equals("Success"))
		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	// This method is to check if sed file can be loaded window
	public static Boolean loadingWindowsedFile() throws Exception {
		List<String> list = new ArrayList<String>();
		List<String> list2 = new ArrayList<String>();
		list2.add("IED Name");
		list2.add("Access Point");
		list2.add("Edition");
		list2.add("Status");
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("1");
		if (status == false) {
			String filename1 = "1.SED";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);
			// SCLFiles().click();
		}
		Thread.sleep(2000);

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("1")) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					List<WebElement> col = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
					int coun = col.size();
					// int checkboxCount =0;
					for (int k = 2; k <= coun; k++) {
						String colName = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]")
								.getText();
						list.add(colName);
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		if (list.equals(list2)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if scd file can be loaded in file system tab
	public static Boolean loadMultiAccessPointsFileInFileSystem() throws Exception {
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem("BCU_402T");
		if (status == false) {
			String filename1 = "BCU_402T.SCD";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(2000);

			SCLFilesSettings().click();
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath1);
			Thread.sleep(5000);
			Submit().click();
			Thread.sleep(5000);

			// SCLFiles().click();
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals("BCU_402T")) {

					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();

					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[1]/input").click();
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);

					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		if (text.equals("Parsing ok") || text.equals("Success"))

		{
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	public static Boolean loadSCLFile(String filename, String type) throws Exception {

		Boolean status4=false;
		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		if (status == false) {
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			String filename1 = filename + "." + type;
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			// "+fileName
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);

		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();

				if (actual_file.equals(filename)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status3 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status3 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
						Browsers.driver.findElement(By.id("closebox")).click();
						status4=true;

					}

				}
			}
		}
		return status4;
	}

	// To load a file having single IED
	public static Boolean loadGSEFileWithSingleIED(String filename, String type) throws Exception {

		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		Thread.sleep(2000);
		if (status == false) {
			Thread.sleep(2000);
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			String filename1 = filename + "." + type;
			Thread.sleep(2000);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			// //
			// "+fileName
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals(filename)) {
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					List<WebElement> iedrows = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/tbody/tr"));
					int rowcount = iedrows.size();
					if (rowcount == 1)
						status1 = true;
					else
						status1 = false;
				}
			}
		}
		return status1;
	}

	// To load file having multiple IEDs when loaded
	public static Boolean loadGSEFileWithMultipleIED(String filename, String type) throws Exception {

		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		Thread.sleep(2000);
		if (status == false) {
			Thread.sleep(2000);
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			String filename1 = filename + "." + type;
			Thread.sleep(2000);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			// //
			// "+fileName
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals(filename)) {
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					List<WebElement> iedrows = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/tbody/tr"));
					int rowcount = iedrows.size();
					System.out.println("gggggg" + rowcount);
					if (rowcount > 1)
						status1 = true;
					else
						status1 = false;
				}
			}
		}
		return status1;
	}

	// This method is to check if file can be loaded in file system tab
	public static Boolean loadSVFileInFileSystem(String filename, String type) throws Exception {

		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		String text = null;
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		Thread.sleep(2000);
		if (status == false) {
			Thread.sleep(2000);
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			String filename1 = filename + "." + type;
			Thread.sleep(2000);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + filename1;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			// //
			// "+fileName
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);

		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals(filename)) {
					Thread.sleep(3000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					GooseMessages_old.GooseMsgFilterByIEDName();
					Thread.sleep(3000);
					Boolean status3 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status3 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);

					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		if (text.equals("Parsing ok") || text.equals("Success")) {
			status1 = true;
		} else {
			status1 = false;
		}
		return status1;
	}

	public static Boolean loadGSEFileInFileSystem(String filename) throws Exception {
		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		String text = "";
		Boolean status1 = null;
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		String actualfile = filename + ".scd";
		if (status == false) {
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + actualfile;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);
		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals(filename)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr/td[7]/a[4]/i").click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					text = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]").getText();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a")
					.click();
					Thread.sleep(3000);
				}
			}
			if (text.equals("Parsing ok") || text.equals("Success")) {
				status1 = true;
			} else {
				status1 = false;
			}
		}
		return status1;
	}

	// load GSE file in SCLFiles
	public static Boolean loadGSEFile(String filename) throws Exception {
		File file = new File(filename);
		String absolutePath = file.getAbsolutePath();
		Thread.sleep(2000);
		SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(filename);
		String actualfile = filename + ".scd";
		if (status == false) {
			Thread.sleep(2000);
			SCLFilesSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			ChooseFile().click();
			Thread.sleep(3000);
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + actualfile;
			Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			Thread.sleep(3000);
			Submit().click();
			Thread.sleep(5000);
			SCLFiles().click();
			Thread.sleep(5000);

		}
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver
						.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_file.equals(filename)) {
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a"))
					.click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Boolean status2 = Browsers.driver.findElement(By.id("selIedCheckAll")).isSelected();
					if (status2 == false) {
						Browsers.driver.findElement(By.id("selIedCheckAll")).click();
						Thread.sleep(2000);
					}
					Thread.sleep(2000);
					WebDriverUtils.findElementById("loadIedList").click();
					Thread.sleep(5000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					Thread.sleep(2000);
					Browsers.driver.findElement(By.id("ok")).click();
					break outerloop;
				}
			}
		}
		return true;
	}
	
	public static List<String> sortList(int sortType) throws Exception
  	{
  		ArrayList<String> obtainedList = new ArrayList<>();
  		WebElement Pagination = WebDriverUtils.findElementByXpath("//*[@id='totatlpages']/ul");
        List<WebElement> pages = Pagination.findElements(By.tagName("li"));
        // System.out.println(pages.size());
        int totalPages = pages.size()-1;
        // System.out.println(totalPages);
        WebElement endPage = WebDriverUtils.findElementByXpath("//*[@id=\"totatlpages\"]/ul/li["+totalPages+"]/a");
        String endpage = endPage.getText();
        // System.out.println(endpage);
        int endPageNumber = Integer.valueOf(endpage);
        // System.out.println(endPageNumber);
        
        Thread.sleep(2000);
        for(int page = 1; page <= endPageNumber; page++)
        {
    		WebElement LogTable = WebDriverUtils.findElementById("filesystemtable");
    		List<WebElement> tableRows = LogTable.findElements(By.tagName("tr"));
    		for(int i=1; i<tableRows.size(); i++) {
    		   String activity =  WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr["+i+"]/td["+sortType+"]").getText();
    		   obtainedList.add(activity);
	    	}
    		Thread.sleep(3000);
    //		ActivityLog.nextBtnPagination().click();
    		Reporter.log("Search successful..");    		
        }
        return obtainedList;
  	}
	public static boolean sortCheck(String sortType , int sortCol) throws Exception
  	{
  		
  		Thread.sleep(2000);
		
		
		 if((sortCol == 1) && (sortType.equals("decending")))
		 {
			 WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/thead/tr/th["+sortCol+"]").click();
			 Thread.sleep(1000);
		 }
		boolean search = false;
		List<String> obtainedList = sortList(sortCol);
        
        ArrayList<String> sortedList = new ArrayList<>();   
        for(String s:obtainedList){
        sortedList.add(s);
        }
        Collections.sort(sortedList);
        // System.out.println("obtainedList"+obtainedList);
       
        if(sortType.equals("ascending") && (sortCol == 1))
        {
        	Collections.reverse(sortedList);
        }
        
        if(sortedList.equals(obtainedList))
        {
        	search = true;
        }
        else
        {
        	Reporter.log(sortCol+" is not sorted properly in "+sortType+" order");
        	search = false;
        }
		return search;	
  	}
}
*/