package com.kalkitech.doble.classes.SCLFiles;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.aventstack.extentreports.model.Report;
import com.kalkitech.doble.classes.stationmessages.GooseMessages;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SCLFileLoading extends BaseClass {

	public SCLFileLoading(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// Element -SCL files in Menu
	public static WebElement SCLFiles() throws Exception {
		try {
			element = WebDriverUtils.findElementById("repository" , "smallWait");
			} catch (Exception e) {
			Reporter.log("SCL Files tab is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element - Settings in SCL file
	public static WebElement SCLFilesSettings() throws Exception {
		try {
			element = WebDriverUtils.findElementById("scl_options" , "smallWait");
		} catch (Exception e) {
			Reporter.log("Settings is not found in SCLFiles");
			throw (e);
		}
		return element;
	}

	// Element - upload button in settings
	public static WebElement Upload() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Upload", "smallWait");
		} catch (Exception e) {
			Reporter.log("upload is not found in settings");
			throw (e);
		}
		return element;
	}

	// Element - Choose file button in upload screen
	public static WebElement ChooseFile() throws Exception {
		try {
			element = WebDriverUtils.findElementById("singleFileUploadInput", "smallWait");
		} catch (Exception e) {
			Reporter.log("Choose file button not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - Submit button in upload screen
	public static WebElement Submit() throws Exception {
		try {
			element = WebDriverUtils.findElementById("submitbutton","smallWait");
		} catch (Exception e) {
			Reporter.log("Submit button not found in upload screen");
			throw (e);
		}
		return element;
	}

	public static WebElement replaceFileYes() throws Exception {
		try {
			element = WebDriverUtils.findElementById("proccedOverwrite","mediumWait");
		} catch (Exception e) {
			Reporter.log("Yes button is not found in File exists screen");
			throw (e);
		}
		return element;
	}
	
	public static WebElement replaceFileNo() throws Exception {
		try {
			element = WebDriverUtils.findElementById("doNotProceedOverWrite", "mediumWait");
	} catch (Exception e) {
			Reporter.log("No button is not found in File exists screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for cid
	public static WebElement checkboxCid() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkCid" , "smallWait");
		} catch (Exception e) {
			Reporter.log("check box for cid not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for Scd
	public static WebElement checkboxScd() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkScd", "smallWait");
		} catch (Exception e) {
			Reporter.log("check box for scd not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for iid
	public static WebElement checkboxiid() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkIid","smallWait");
		} catch (Exception e) {
			Reporter.log("check box for iid not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for sed
	public static WebElement checkboxSed() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkSed","smallWait");
		} catch (Exception e) {
			Reporter.log("check box for sed not found in upload screen");
			throw (e);
		}
		return element;
	}

	
	// Element - check box for icd
	public static WebElement checkboxIcd() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkIcd","smallWait");
		} catch (Exception e) {
			Reporter.log("check box for icd not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - check box for ssd
	public static WebElement checkboxSsd() throws Exception {
		try {
			element = WebDriverUtils.findElementById("chkSsd","smallWait");
		} catch (Exception e) {
			Reporter.log("check box for ssd not found in upload screen");
			throw (e);
		}
		return element;
	}

	// Element - search
	public static WebElement Search() throws Exception {
		try {
			element = WebDriverUtils.findElementById("table_search","smallWait");
		} catch (Exception e) {
			Reporter.log("search in SCLFiles");
			throw (e);
		}
		return element;
	}

	

	// Delete Selected button in settings
	public static WebElement deleteSelectedBtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteMultipleFiles","smallWait");
		} catch (Exception e) {
			Reporter.log("delete selected button is found in settings");
			throw (e);
		}
		return element;
	}

	// Select All files check box in SCL files table
	public static WebElement selectAllFiles() throws Exception {
		try {
			element = WebDriverUtils.findElementById("files-select-all","smallWait");
		} catch (Exception e) {
			Reporter.log("Select All files check box is not found in SCL files table");
			throw (e);
		}
		return element;
	}

	// Select All IEDS check box in Select IEDs table
		public static WebElement selectAllIEDs() throws Exception {
			try {				
				element = WebDriverUtils.findElementById("selIedCheckAll","smallWait");
			} catch (Exception e) {
				Reporter.log("Select All IEDS check box is not found in Select IEDs table");
				throw (e);
			}
			return element;
		}
		
		// Load button in Select IEDs Tab
				public static WebElement loadBtn() throws Exception {
					try {						
						element = WebDriverUtils.findElementById("loadIedList","smallWait");
				} catch (Exception e) {
						Reporter.log("Load button is not found in Select IEDs Tab");
						throw (e);
					}
					return element;
				}

	// Close button in Select IEDs Tab
	public static WebElement Closebtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("closebox","smallWait");
		} catch (Exception e) {
			Reporter.log("close button is not found in Select IEDs Tab");
			throw (e);
		}
		return element;
	}
	
	// Close button in Load IEDs status Tab
		public static WebElement ClosebtnInLoadStatus() throws Exception {
			try {				
				element = WebDriverUtils.findElementById("ok","smallWait");
			} catch (Exception e) {
				Reporter.log("close button is not found in Load IEDs status Tab");
				throw (e);
			}
			return element;
		}
		
		// Close button in IEDs select pop up
	    public static WebElement ClosebtnInIEDsSelectPopup() throws Exception {
	        try {       
	            element = WebDriverUtils.findElementById("closebox","smallWait");
	       } catch (Exception e) {
	            Reporter.log("Close button not found in IEDs select pop up");
	            throw (e);
	        }
	        return element;
	    }
	
		// Element - Load all IEDs button in load SCL files pop up
	    public static WebElement loadAllIEDsBtn() throws Exception {
	        try {
	            element = WebDriverUtils.findElementByXpath("loadCheckedIED","smallWait");
	       } catch (Exception e) {
	            Reporter.log("Load all IEDs button not found in load SCL files pop up");
	            throw (e);
	        }
	        return element;
	    }
	    
	    
	    public static boolean isFileAvailable(String filePath, String fileName)
	    {
	    	WebDriverUtils.implicitlyWait();
	    	Boolean status = null;
	        File dir = new File(filePath);
	        File[] dirContents = dir.listFiles();	    
	        for(int i=0;i<dirContents.length;i++)
	        {
	        if (dirContents[i].getName().contains(fileName))
	        {
	        	status = true;
	            break;
	        }
	        else
	        {
	        	status = false;
	        } 
	        }
	        return status;
	    }
	    
	    
	    //This method is to verify if all elements(Settings button,Search text box and button and file system table) are available in SCL Files page.
	    public static Boolean UIElementsCheck() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	    	List<Boolean> expStatus = Arrays.asList(true,true,true,true);    //Expected status
	    	SCLFiles().click();												//Navigating to SCL Files
	    	Browsers.driver.switchTo().frame("iframecontainer");
	    	Boolean settingsStatus = SCLFilesSettings().isDisplayed();      //Checking if settings button is displayed in SCL Files page
	    	if(settingsStatus.equals(true))
	    	{
	    		Reporter.log("Setting button is available");
	    		
	    	}
	    	Boolean searchTextBoxStatus = Search().isDisplayed();		//Checking if search text box is displayed in SCL Files page
	    	if (searchTextBoxStatus.equals(true)) {
				Reporter.log("Search Text box is displayed");
			} else {
				Reporter.log("Search text box is not Displayed");
			}
	    	Boolean searchButton = WebDriverUtils.findElementByXpath("//*[@id=\"searchTextBox\"]/div/button","smallWait").isDisplayed();  //Checking if search button is displayed in SCL Files page
	    	if(searchButton.equals(true))
	    	{
	    		Reporter.log("Search button is dispalyed");
	    	}
	    	else
	    	{
	    		Reporter.log("Search button is not dispalyed");
	    	}
	    	Boolean fileSystemTable = WebDriverUtils.findElementById("filesystemtable","smallWait").isDisplayed();      //Checking if file system table is displayed in SCL Files page
	    	if (fileSystemTable.equals(true)){
	    		Reporter.log("File system table is displayed");
			} else {
				Reporter.log("File system table is not displayed");
			}
	    	List<Boolean> actStatus= Arrays.asList(settingsStatus,searchTextBoxStatus,searchButton,fileSystemTable);
	    	if(actStatus.equals(expStatus))      //checking if expected and actual statuses are same
	    	{
	    		Reporter.log("All elements are available");
	    		return true;
	        }
	    	else
	    	{
	    		Reporter.log("All elements are not available");
	    		return false;
	    	}
	    }
	    
	  //This method is to verify if all elements(Settings button,Search text box and button and file system table) are available in SCL Files page.
	    public static Boolean settingsElementsCheck() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	    	List<Boolean> expStatus = Arrays.asList(true,true);    //Expected status
	    	SCLFiles().click();									//Navigating to SCL Files
	    	Browsers.driver.switchTo().frame("iframecontainer");
	    	SCLFilesSettings().click();						    //Clicking on settings button
	    	Boolean uploadBtnStatus = Upload().isDisplayed();    //Checking if upload button is displayed in settings of SCL Files page
	    	if (uploadBtnStatus.equals(true)) {
				Reporter.log("Upload button is displayed");
			} else {
				Reporter.log("Upload button is not displayed");
			}
	    	Boolean deleteBtnStatus = deleteSelectedBtn().isDisplayed();  //Checking if delete selected button is displayed in settings of SCL Files page
	    	if (deleteBtnStatus.equals(true)) {
	    	Reporter.log("Delete button is displayed");
				
			} else {
				Reporter.log("Delete buton is not displayed");
			}
	    	List<Boolean> actStatus= Arrays.asList(uploadBtnStatus,deleteBtnStatus);
	    	if(actStatus.equals(expStatus))   //checking if expected and actual statuses are same
	    	{
	    		Reporter.log("All elements are available");
	    		return true;
	        }
	    	else
	    	{
	    		Reporter.log("All elements are not available");
	    		return false;
	    	}
	    }
	    
	    
	    
	 // This method is to verify is search button is working properly in file system tab
	 		public static Boolean searchFunctionInFileSystem() throws Exception {
	 			WebDriverUtils.implicitlyWait();
	 			List<Boolean> expStatus = Arrays.asList(true,true,true,true,true);
	 			List<Boolean> actStatus = new ArrayList<Boolean>(); 
	 			SCLFiles().click();				//Navigating to SCL files
	 			Browsers.driver.switchTo().frame("iframecontainer");
	 			Boolean fileAvailableStatus = CheckFileInFileSystem("BCU_402T"); //Checking if file is available in the table
	 			if(fileAvailableStatus.equals(false))  //Loading the file in case not loaded already
	 			{
	 				sclFileLoad("BCU_402T.scd");
	 				Reporter.log("BCU_402T.scd File Uploaded ");
	 			}
	 			
	 			Search().sendKeys("BCU_402T");
	 			
	 			//Checking with file name
	 			WebElement searchTextBox = WebDriverUtils.findElementById("search_btn","smallWait");//.click(); //Clearing the search textbox
	 		      searchTextBox.click();
	 		      String make = searchTextBox.getAttribute("value");
	 		      if (make.isEmpty()) {          // to verify Search text box is empty 
					Reporter.log("Search Text Box Is Empty");
				}
	 		      
	 			List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
	 			int count2 = rows1.size();
	 			for (int j = 1; j <= count2; j++) {
	 				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]"))
	 						.getText();
	 				if (actual_file.contains("BCU_402T")) {
	 					Reporter.log("File which is being searched is found in file system table.");
	 					actStatus.add(true);
	 				}
	 				else {
	 					Reporter.log("Error: File which is being searched is not found in file system table.");
	 					actStatus.add(false);
	 					}
	 			}
	 			
	 			//Checking with keywords
	 			WebDriverUtils.findElementById("search_btn","smallWait").click(); //Clearing the search textbox
	 			Thread.sleep(2000);
	 			Search().sendKeys("BCU_4");		//Searching for file
	 			WebDriverUtils.findElementById("search_btn","smallWait").click(); //Clicking on search button
	 			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr")); //Traversing through the table for file
	 			int count1 = rows.size();
	 			
	 			for (int j = 1; j <= count1; j++) {    // In case file is available return true
	 				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]"))
	 						.getText();
	 				if (actual_file.contains("BCU_4")) {
	 					Reporter.log("File which is being searched is found in file system table.");
	 					actStatus.add(true);
	 				}
	 				else {
	 					Reporter.log("Error: File which is being searched is not found in file system table.");
	 					actStatus.add(false);
	 					}
	 			}
	 			
	 			//Checking with random characters
	 			WebDriverUtils.findElementById("search_btn","smallWait").click();
	 			Thread.sleep(2000);
	 			Search().sendKeys("randomsearch");		//Searching for random keyword
	 			WebDriverUtils.findElementById("search_btn","smallWait").click(); //Clicking on search button
	 			List<WebElement> rows2 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr")); //Traversing through the table for file
	 			int count3 = rows2.size();
	 			if(count3==0)				//checking if any rows are displaying
	 			{
	 				Reporter.log("No files are displayed with random characters search");
	 				actStatus.add(true);
	 			}
	 			else {
	 				Reporter.log("Error: files are displaying with random characters search");
	 				actStatus.add(false);
	 			}
	 			
	 			//Checking for maximum characters in search text box
	 			WebDriverUtils.findElementById("search_btn","smallWait").click(); //Clearing the search textbox
	 			Thread.sleep(2000);
	 			if(Search().getAttribute("maxlength").equals("200"))
	 			{
	 				Reporter.log("Maximum length of search text should be 200 characters");
	 				actStatus.add(true);	
	 			}
	 			else {
	 				Reporter.log("Error: Maximum length of search text is not 200 characters");
	 				actStatus.add(false);
	 			}
	 			
	 			//Checking for minimum characters in search text box
	 			WebDriverUtils.findElementById("search_btn","smallWait").click();  //Clearing the search textbox
	 			Thread.sleep(2000); 
	 			if(Search().getAttribute("minlength").equals("4"))
	 			{
	 				Reporter.log("Minimum length of search text should be 4 characters");
	 				actStatus.add(true);	
	 			}
	 			else {
	 				Reporter.log("Error: Minimum length of search text is not 4 characters");
	 				actStatus.add(false);
	 			}
	 			
	 			if(expStatus.equals(actStatus))
	 			{
	 				Reporter.log("Exp status: " + expStatus + " is same as act status: " + actStatus);
	 				return true;
	 			}
	 			else
	 			{
	 				Reporter.log("Error: exp status: " + expStatus + " is not same as act status: " + actStatus);
	 				return false;
	 			}
	 			
	 		}
	 		
	    
	    
	 		 //This method is to verify "delete selected" functionality
		    public static Boolean deleteSelectedFunctionality() throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		    	List<Boolean> actStatus = new ArrayList<Boolean>();
		    	List<Boolean> expStatus = Arrays.asList(true,true,true,true,true,true);
		    	SCLFiles().click();									//Navigating to SCL Files
		    	Browsers.driver.switchTo().frame("iframecontainer");
		    	List<WebElement> rowsCheck = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));  //Traversing through all the roes and checking if checkboxes are checked
		    	//Adding multiple files in case of empty table
		    	if(rowsCheck.size()==0)
				{
					sclFileLoad("Ch1Line1.CID");
					sclFileLoad("BCU_402T.scd");
					sclFileLoad("411L.CID");
				}
				if(CheckFileInFileSystem("BCU_402T").equals(false))
				{
					sclFileLoad("BCU_402T.scd");	
				}
				//Checking error message in case of clicking on Delete All without selecting the files
		    	SCLFilesSettings().click();						    //Clicking on settings button
		    	deleteSelectedBtn().click();						//Clicking on delete selected button	
		    	Boolean messageStatus = null;
		    	Browsers.driver.switchTo().activeElement();
		    	if(WebDriverUtils.findElementByXpath("//*[@id=\"deleteShowModal\"]/div/div/div[2]/p","smallWait").getText().equals("Please select at least one file"))   //checking if error message is same as expected
		    	{
		    		Reporter.log("expected error message is displayed");
		    		messageStatus = true;
		        }
		    	else
		    	{
		    		Reporter.log("Error: expected error message is not displayed");
		    		messageStatus = false;
		    	}
		    	Thread.sleep(2000);
		    	Boolean okBtnStatus = WebDriverUtils.findElementById("modal_delshow_ok","smallWait").isDisplayed(); //Checking if OK button is displayed
		    	if (okBtnStatus.equals(true)) {
					Reporter.log("OK button is displayed");
				} else {
					Reporter.log("Error: OK button is not displayed");

				}
		    	WebDriverUtils.findElementById("modal_delshow_ok","smallWait").click();  //Clicking on OK button
		    	Thread.sleep(2000);
		    	Boolean deleteAlertDisplayedStatus = Browsers.driver.findElement(By.id("modal_delshow_ok")).isDisplayed(); //Checking if Error Alert box if closing on click of OK button or not
		    	if(messageStatus.equals(true) && okBtnStatus.equals(true) && deleteAlertDisplayedStatus.equals(false) )
		    	{
		    		Reporter.log("Error message and other elements in the delete model are displaying correctly on the click of Delete Selected without selecting the file.");
		    		actStatus.add(true);
		    	}
		    	else
		    	{
		    		Reporter.log("Error: Error message and other elements in the delete model are not displaying correctly on the click of Delete Selected without selecting the file.");
		    		actStatus.add(false);
		    	}
		    	
		    	
		    	//Check for file not deleted on click of Cancel button
		    	String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");    //Selecting  files and deleting using delete All button in settings
				int count = Integer.parseInt(pagination);
				outerloop: for (int i = 1; i <= count; i++) {
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) {
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals("BCU_402T")) {					//Entering the loop when file is found
							Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
							.click();
							SCLFilesSettings().click();      //Click on settings button
							deleteSelectedBtn().click();	//Click on Delete All button
							Browsers.driver.switchTo().activeElement();
							if((WebDriverUtils.findElementById("modal_del_ok","smallWait").isDisplayed()) && (WebDriverUtils.findElementById("modal_delmod_close_btn","smallWait").isDisplayed()) && (WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").isDisplayed()) )
							{
								Reporter.log("Some elements are present- OK Btn status "+WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").isDisplayed() + " Close Btn status - "+WebDriverUtils.findElementById("modal_delmod_close_btn","smallWait").isDisplayed()+" Cancel Btn status - "+WebDriverUtils.findElementById("modal_del_ok","smallWait").isDisplayed());
								actStatus.add(true);
							}
							else
							{
								Reporter.log("Error : Some elements are not present- OK Btn status "+WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").isDisplayed() + " Close Btn status - "+WebDriverUtils.findElementById("modal_delmod_close_btn","smallWait").isDisplayed()+" Cancel Btn status - "+WebDriverUtils.findElementById("modal_del_ok","smallWait").isDisplayed());
								actStatus.add(false);
							}
							WebDriverUtils.findElementById("modal_del_ok","smallWait").click();  // Click on Yes button of delete window
							Browsers.driver.switchTo().activeElement();
							break outerloop;
						}
					}
					int count2 = i + 1;
					if (count2 <= count) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
		    	
				if(CheckFileInFileSystem("BCU_402T"))
				{
					Reporter.log("Selected file is not deleted from the table");
					actStatus.add(true);
				}
				else
				{
					Reporter.log("Error: Selected file is deleted from the table");
					actStatus.add(false);
				}
				
				
				//Check for file not deleted on click of Close button
		    	String paginationForClose = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");    //Selecting  files and deleting using delete All button in settings
				int countForClose = Integer.parseInt(paginationForClose);
				outerloop: for (int i = 1; i <= countForClose; i++) {
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) {
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals("BCU_402T")) {					//Entering the loop when file is found
							Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
							.click();
							SCLFilesSettings().click();      //Click on settings button
							deleteSelectedBtn().click();	//Click on Delete All button
							Browsers.driver.switchTo().activeElement();
							WebDriverUtils.findElementById("modal_delmod_close_btn","smallWait").click();  // Click on Yes button of delete window
							Browsers.driver.switchTo().activeElement();
							break outerloop;
						}
					}
					int count2 = i + 1;
					if (count2 <= countForClose) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
				if(CheckFileInFileSystem("BCU_402T"))
				{
					Reporter.log("Selected file is not deleted from the table");
					actStatus.add(true);
				}
				else
				{
					Reporter.log("Error: Selected file is deleted from the table");
					actStatus.add(false);
				}
				//Deleting one file from table using Delete selected
		    	String paginationForOneFileDelete = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");    //Selecting  files and deleting using delete All button in settings
				int countForOneFileDelete = Integer.parseInt(paginationForOneFileDelete);
				outerloop: for (int i = 1; i <= countForOneFileDelete; i++) {
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) {
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals("BCU_402T")) {					//Entering the loop when file is found
							Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
							.click();
							SCLFilesSettings().click();      //Click on settings button
							deleteSelectedBtn().click();	//Click on Delete All button
							Browsers.driver.switchTo().activeElement();
							WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();  // Click on Yes button of delete window
							Browsers.driver.switchTo().activeElement();
							break outerloop;
						}
					}
					int count2 = i + 1;
					if (count2 <= countForOneFileDelete) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
		    	
				if(CheckFileInFileSystem("BCU_402T"))
				{
					Reporter.log("Error: Selected file is not deleted from the table");
					actStatus.add(false);
				}
				else
				{
					Reporter.log("Selected file is deleted from the table");
					actStatus.add(true);
				}
		    	
		    	
		    	//delete all files from file system table using Delete selected option
		    	String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking for no of pages
				int count3 = Integer.parseInt(pagination1);
				for (int i = 1; i <= count3; i++) {
					selectAllFiles().click();					//Selecting all files from the table
					SCLFilesSettings().click();			//clicking on settings button
					deleteSelectedBtn().click();		//clicking on delete select file button
					Browsers.driver.switchTo().activeElement();
					WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();    //clicking on delete yes button
					}
				
				Thread.sleep(2000);
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));     //checking if all rows are deleted or not
				int count1 = rows.size();
				if (count1 == 0) {
					Reporter.log("verified deleting all files from file system table using delete all button");
					actStatus.add(true);
				} else {
					Reporter.log("Error : unable to delete all files from file system table using delete all button");
					actStatus.add(false);
				}
		    	
				System.out.println("actStatus "+actStatus);
				System.out.println("expStatus "+expStatus);
				if(actStatus.equals(expStatus))
				{
					return true;
				}
				else
				{
					return false;
				}
		    }
		    
	    
		    //This method is to verify upload screen elements and uploading file by selecting "SelectAll Ieds" check box. and verifying load success screen.
		    public static Boolean uploadWithSelectAllIEDsCheckbox(String filename , String extension) throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		    	List<Boolean> expStatus = Arrays.asList(true,true,true,true,true,true);
		    	List<Boolean> actStatus = new ArrayList<Boolean>();
		    	SCLFiles().click();									//Navigating to SCL Files
		    	Browsers.driver.switchTo().frame("iframecontainer");
		    	String filename1 = filename+"."+extension;
		    	File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
				    	SCLFilesSettings().click();						    //Clicking on settings button
				    	Upload().click();									//Clicking on upload button
				    	Boolean uploadScreenStatus = null;
				    	if(WebDriverUtils.findElementById("modalLabel","smallWait").isDisplayed())   //checking if Upload pop up is displayed on Upload button click
				    	{
				    		Reporter.log("Upload screen is displayed");
				    		uploadScreenStatus = true;
				    	}
				    	else
				    	{
				    		Reporter.log(" Error: Upload screen is not displayed");
				    		uploadScreenStatus = false;
				    	}
				    	
				    	Boolean uploadElementsStatus = null;
				    	//Checking if all file types check boxes are enabled 
				    	if((checkboxCid().isSelected()) && (checkboxIcd().isSelected()) && (checkboxiid().isSelected()) && (checkboxScd().isSelected()) &&(checkboxSed().isSelected()) && (checkboxSsd().isSelected()))
				    	{
				    		Reporter.log("Upload screen elements are displayed");
				    		uploadElementsStatus = true;
				    	}
				    	else
				    	{
				    		Reporter.log("Error: Checkbox type cid: "+(checkboxCid().isSelected())+" icd: " +(checkboxIcd().isSelected())+" iid: "+(checkboxIcd().isSelected())+" scd: "+(checkboxScd().isSelected())+" sed: "+(checkboxSed().isSelected())+" ssd: "+(checkboxSsd().isSelected())) ;
				    		uploadElementsStatus = false;	
				    	}
				    	
				    	if((uploadScreenStatus.equals(true)) && (uploadElementsStatus.equals(true)))
				    	{
				    		Reporter.log("All elements in upload file window are displaying correctly");
				    		actStatus.add(true);
				    	}
				    	else
				    	{
				    		Reporter.log("Error : UploadScreen Status- "+(uploadScreenStatus.equals(true))+"UploadElemntstatus- "+(uploadElementsStatus.equals(true)));
				    		actStatus.add(false);
				    	}
				    	
				    	
				    	ChooseFile().sendKeys(absolutePath3);
				    	Thread.sleep(1000);
				    	Browsers.driver.findElement(By.id("loadCheckedIED")).click();
				    //	loadAllIEDsBtn().click(); //Clicking on load all Ieds button
						//submit btn click
						Submit().click();
						Thread.sleep(2000);
						if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
							Thread.sleep(2000);
							replaceFileYes().click();
						}
				    	if(WebDriverUtils.findElementById("retMsg","smallWait").getText().equals("Successfully loaded."))
						{
							Reporter.log("IED Load success message is displayed properly");
							actStatus.add(true);
						}
						else
						{
							Reporter.log("Error: IED Load success message is not displayed properly");
							actStatus.add(false);
						}
				    	if(ClosebtnInLoadStatus().isDisplayed())    //Checking if close button is displayed
				    	{
				    		Reporter.log("Close button is displayed properly");
							actStatus.add(true);
						}
						else
						{
							Reporter.log("Error: Close button is not displayed properly");
							actStatus.add(false);
						}
				    	
				    	if(WebDriverUtils.findElementById("modal_showmod_close_btn","smallWait").isDisplayed())			//Checking if X button is available
						{
							Reporter.log("X button is displayed properly");
							actStatus.add(true);
						}
						else
						{
							Reporter.log("Error: X button is not displayed properly");
							actStatus.add(false);
						}
						ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
						Thread.sleep(2000);
						if(Browsers.driver.findElement(By.id("modalLabel")).isDisplayed())  //Checking if pop up is closed on click of close button
						{
							Reporter.log("Error: IED Load popup is not closed sucessfully on click of close button");
							actStatus.add(false);
						}
						else
						{
							Reporter.log("IED Load popup closed sucessfully on click of close button");
							actStatus.add(true);
						}
						}
						
					else
					{
						Reporter.log("SCL file is not available for file upload");  //Returning false if scl file is not available
						}
				}
				else
				{
					Reporter.log("ImportProject.exe is not available for file upload"); //Returning false if upload exe is not available
					}
				}
				catch(Exception e)
		        {
		        	Reporter.log("exception occured : "+e);
		        }
				if(CheckFileInFileSystem(filename))
				{
				Reporter.log("File is loaded successfully");	
				actStatus.add(true);
				}
				else
				{
					Reporter.log("Error: File is not loaded successfully");	
					actStatus.add(false);
				}
				System.out.println("expStatus "+expStatus);
				System.out.println("actStatus "+actStatus);
				if(actStatus.equals(expStatus))
				{
					return true;
				}
				else
				{
					return false;
				}
				
				
				
		    	
		    }
	    
	    
		    // This method is to verify if Select IEDs pop up displays on click of Submit button in upload page
			public static boolean IEDLoadPageElementsCheck(String filename,String extension) throws Exception {
				WebDriverUtils.implicitlyWait();
				List<Boolean> expStatus = Arrays.asList(true,true);
		    	List<Boolean> actStatus = new ArrayList<Boolean>();
				Boolean loadIEDsPopupStatus = null;
				Boolean popUpCloseBtntatus = null;
				Boolean popUpLoadBtntatus = null;
				Boolean columntatus = null;
				Boolean successMsgstatus= null;
				SCLFiles().click();                               //Navigate to SCL files tab
				Browsers.driver.switchTo().frame("iframecontainer");
				String filename1=filename+"."+extension;
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							Thread.sleep(2000);
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							Thread.sleep(2000);
							//submit btn click
							Submit().click();
							Thread.sleep(2000);
							if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
								Thread.sleep(2000);
								replaceFileYes().click();
							}
							Browsers.driver.switchTo().activeElement();
							Thread.sleep(3000);
							
							if(WebDriverUtils.findElementByXpath("//*[@id=\"iedModal\"]/div/div","smallWait").isDisplayed())			//Checking if select IEDs pop up is displayed
							{
								Reporter.log("Select IEDs pop up is displayed properly");
								loadIEDsPopupStatus = true;
							}
							else
							{
								Reporter.log("Error:Select IEDs pop up is not displayed properly");
								loadIEDsPopupStatus = false;
							}
							if(loadBtn().isDisplayed())			//Checking of load button is available
							{
								Reporter.log("Load btn is displayed in IEDs pop up");
								popUpLoadBtntatus = true;
							}
							else
							{
								Reporter.log("Error: Load btn is not displayed in IEDs pop up");
								popUpLoadBtntatus = false;
							}
							
							if(WebDriverUtils.findElementById("closebox","smallWait").isDisplayed())			//Checking of close button is available
							{
								Reporter.log("Close btn is displayed in IEDs pop up");
								popUpCloseBtntatus = true;
							}
							else
							{
								Reporter.log("Error: Close btn is not displayed in IEDs pop up");
								popUpCloseBtntatus = false;
							}
							
							List<String> act_list = new ArrayList<String>();
							List<String> exp_list = Arrays.asList("IED Name" , "Access Point" ,"Edition");
							
							List<WebElement> columns = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
							int columnsize = columns.size();
							for (int k = 2; k < columnsize; k++) 
							{
								WebElement column = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + k + "]","smallWait");
								if(!column.getAttribute("style").contains("none"))
								{
									act_list.add(column.getText());
								}
							}
							if(act_list.equals(exp_list))  //Checking if columns in IED load table are displayed as expected
							{
								Reporter.log("columns in IED load table are displayed as expected");
								columntatus = true;
							}
							else
							{
								Reporter.log("Error: columns in IED load table are not displayed as expected");
								columntatus = false;
							}
							selectAllIEDs().click();							// Selecting Select All IEDs Check box
							loadBtn().click();									//Clicking on Load IEDs button
							Thread.sleep(2000);
							if(WebDriverUtils.findElementById("retMsg","smallWait").getText().equals("Loading was successfull"))
							{
								Reporter.log("IED Load success message is displayed properly");
								successMsgstatus = true;
							}
							else
							{
								Reporter.log("Error: IED Load success message is not displayed properly");
								successMsgstatus = false;
							}
							WebDriverUtils.findElementById("ok", "smallWait").click();
						}
						else
						{
							Reporter.log("SCL file is not available for file upload");  //Returning false if scl file is not available
							}
					}
					else
					{
						Reporter.log("ImportProject.exe is not available for file upload"); //Returning false if upload exe is not available
						}
					}
					catch(Exception e)
			        {
			        	Reporter.log("exception occured : "+e);
						}
					if((loadIEDsPopupStatus.equals(true)) && (popUpLoadBtntatus.equals(true)) && (popUpCloseBtntatus.equals(true)) && (columntatus.equals(true)) && (successMsgstatus.equals(true)))  //Returning true if all elements of IED load page are displayed properly 
					{//Returning true if all elements of IED load page are displayed properly
						Reporter.log("All elements of IED load page are displayed properly");
						actStatus.add(true);
					}
					else
					{
						Reporter.log("Error: PopupStatus- "+(loadIEDsPopupStatus.equals(true))+ "LoadBtnStatus- "+ (popUpLoadBtntatus.equals(true))+"CLoseBtnStatus- " +(popUpCloseBtntatus.equals(true))+"ColumnStatus- "+(columntatus.equals(true))+"SuccessMsgStatus- "+(successMsgstatus.equals(true)));
						actStatus.add(false);
					}
					Boolean iedStatus = false;
					String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
					int count = Integer.parseInt(pagination);

						outerloop: 
						for (int i = 1; i <= count; i++) {
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count1 = rows.size();
						for (int j = 1; j <= count1; j++)   {
							String actual_file = Browsers.driver
									.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
						
							if (actual_file.equals(filename)) {                             //Checking if file name is found in the table
								Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img")).click();	
								WebDriverUtils.findElementByXpath("//*[@class=\"loadedIEDInfo\"]/i","smallWait").click();
								Browsers.driver.switchTo().activeElement();
								List<WebElement> iedrows = Browsers.driver.findElements(By.xpath("//table[@id='iedprogressTable']/tbody/tr"));
								int iedCount = iedrows.size();
								for(int k = 1; k <= iedCount; k++)
								{
								
								if(WebDriverUtils.findElementByXpath("//*[@id=\"iedprogressTable\"]/tbody/tr["+k+"]/td[3]/i","smallWait").getAttribute("class").contains("red"))
								{
									Reporter.log("IED is not loaded successfully");
									actStatus.add(false);
									break outerloop;
								}
								else
								{
									iedStatus=true;
								}
							
								}
							}else {
								Reporter.log("File is not available in file system table");
								
							}
						}
						int count2 = i + 1;
						if (count2 <= count) {
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
					}
					if(iedStatus.equals(true))
					{
						actStatus.add(true);
					}
					System.out.println("actStatus "+actStatus);
					System.out.println("expStatus "+expStatus);
					if(actStatus.equals(expStatus))
					{
						return true;
					}
					else
					{
						return false;
					}
			}
			
			// This method is to verify if scl file loading is working properly
			public static void sclFileLoad(String filename1) throws Exception {
				WebDriverUtils.implicitlyWait();
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();                               //Navigate to SCL files tab
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							Browsers.driver.switchTo().frame("iframecontainer");
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							//submit btn click
							Submit().click();
							Thread.sleep(2000);
							if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
								Thread.sleep(2000);
								replaceFileYes().click();
							}
							selectAllIEDs().click();							// Selecting Select All IEDs Check box
							loadBtn().click();									//Clicking on Load IEDs button
							Thread.sleep(2000);
							Browsers.driver.switchTo().activeElement();
							ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
						}
						else
						{
							Reporter.log("SCL file : " + filename1 + " is not available for file upload");
						}
					}
					else
					{
						Reporter.log("ImportProject.exe is not available for file upload");
					}
					}
					catch(Exception e)
			        {
			        	Reporter.log("Error: Exception occured : "+e);
			        }
			}
	    
			// This method is to check if file is available in file system table
			public static Boolean CheckFileInFileSystem(String file) throws Exception {
				WebDriverUtils.implicitlyWait();
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();					//Navigating to SCL Files table
				Boolean status = false;
				Browsers.driver.switchTo().frame("iframecontainer");
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
				int count = Integer.parseInt(pagination);
				outerloop: 
					for (int i = 1; i <= count; i++) {
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) {
						String actual_file = Browsers.driver
								.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
					
						if (actual_file.equals(file)) {                             
							//Checking if file name is found in the table
							status = true;
							Reporter.log(file + "found in system table");
							break outerloop;
							
						} else {
							status = false;
							Reporter.log("Error : " + file + " not found in file system table");
						}
					}
					int count2 = i + 1;
					if (count2 <= count) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
					}
					}
				return status;
			}
	    
			// This method is to verify if warning message is displaying on submit without uploading file
			public static Boolean warningMsgOnSubmitWithoutUpload() throws Exception {
				WebDriverUtils.implicitlyWait();
				SCLFiles().click();					//Navigating to SCL files
				Browsers.driver.switchTo().frame("iframecontainer");
				SCLFilesSettings().click();			//Clicking on SCLFileSetting
				Upload().click();					//Clicking on upload button in settings
				Submit().click();					//Clicking on Submit button without file upload
				if(ChooseFile().getAttribute("validationMessage").contentEquals("Please select a file.")) { //Checking if actual validation message is same as expected
					Reporter.log("warning message is displayed on submit without uploading file");
					return true;
				} else {
					Reporter.log("Error : warning message not displayed on submit without uploading file");
					return false;
				}
			}
			
	    
			// This method is to verify column names in filesystem table
			public static Boolean columnCheckInfilesystemTable() throws Exception {
				WebDriverUtils.implicitlyWait();
				ArrayList<String> actual_columns = new ArrayList<String>();
				SCLFiles().click();   //Navigating to SCL files
				Browsers.driver.switchTo().frame("iframecontainer");
				for (int i = 2; i < 7; i++) {  //Copying column names in a list
					String text = WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/thead/tr/th[" + i + "]","smallWait")
							.getText();
					actual_columns.add(text);
				}

				List<String> extected_columns = Arrays.asList("File Name","File Type","Uploaded On","Size","Modified Date"); //expected column list
				if (actual_columns.equals(extected_columns)) {  //Checking if actual and expected list are same
					Reporter.log("verified column names in filesystem table");
					return true;
				} else {
					Reporter.log("Error : Unable to verify column names in filesystem table");
					return false;
				}
			}
			
	    
			// This method is to verify replacement,cancel replacement and replacement warning message of same file
			public static Boolean replaceFileFunctionality() throws Exception {
				WebDriverUtils.implicitlyWait();
				List<Boolean> expStatus = Arrays.asList(true,true,true);
				List<Boolean> actStatus = new ArrayList<Boolean>();
				
				String actual_time = null;
				String actual_time1 = null;
				String filename = "BCU_402T";
				String filename1 = "BCU_402T.scd";
				Boolean filestatus = CheckFileInFileSystem(filename);  //Checking if file is present in table
				if(filestatus==false)  //Loding file in case not present
				{
					sclFileLoad(filename1);
				}
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();			//Navigating to SCLFiles
				Browsers.driver.switchTo().frame("iframecontainer");
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through the table to file the expected file and noting the time of upload
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
							break outerloop;
						} 
					}
					int count2 = i + 1;
					if (count2 <= count) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
					}
				}
				
				//Cancel upload file
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							Submit().click();
							Thread.sleep(2000);
							if (WebDriverUtils.findElementById("modalLabel","smallWait").isDisplayed()) {    //Clicking on Replace file option in case pop up appears
								replaceFileNo().click();
							}
							WebDriverUtils.findElementByXpath("//*[@id=\"fileModal\"]/div/div/div[1]/button/span","smallWait").click();  //Clicking on Close button of file upload window
							}
						else
						{
							Reporter.log("Error: SCL file is not available for file upload");
						}
					}
						else
						{
							Reporter.log("Error: ImportProject.exe is not available for file upload");
						}
					}
					catch(Exception e)
			        {
			        	Reporter.log("Error: exception occured : "+e);
					}	
				
				String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing through the table to file the expected file and noting the time of upload
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
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count5 + "]/a","smallWait").click();
					}
				}
				
				if (actual_time1.equals(actual_time)) {   //checking if upload time of file is same
					actStatus.add(true);
				} else {
					actStatus.add(false);
				}	
				
				
				Thread.sleep(30000);
				//Uploading file again
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							//submit btn click
							Submit().click();
							Thread.sleep(2000);
							if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
								Thread.sleep(2000);
								Browsers.driver.switchTo().activeElement();
								System.out.println("msg is "+Browsers.driver.findElement(By.xpath("//*[@id=\"confirmModal\"]/div/div/div[2]/p[1]")).getText());
								if(Browsers.driver.findElement(By.xpath("//*[@id=\"confirmModal\"]/div/div/div[2]/p[1]")).getText().contains("The selected file already exists. The existing file will be replaced."))
								{
									Reporter.log("Replace file validation message is correctly displayed");
									actStatus.add(true);
								}
								else
								{
									Reporter.log("Error: Replace file validation message is not displayed correctly");
									actStatus.add(false);
								}
								replaceFileYes().click();
							}
							selectAllIEDs().click();							// Selecting Select All IEDs Check box
							loadBtn().click();									//Clicking on Load IEDs button
							Thread.sleep(2000);
							Browsers.driver.switchTo().activeElement();
							ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
						}
						else
						{
							Reporter.log("Error: SCL file : " + filename1 + " is not available for file upload");
						}
					}
					else
					{
						Reporter.log("Error: ImportProject.exe is not available for file upload");
					}
					}
					catch(Exception e)
			        {
			        	Reporter.log("Error: exception occured : "+e);
			        }
			
				String pagination2 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing through the file system table to file the replaced file and note the time of upload
				int countreplace = Integer.parseInt(pagination2);
				outerloop: for (int i = 1; i <= countreplace; i++) {
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
					if (count5 <= countreplace) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count5 + "]/a","smallWait").click();
					}
				}
				if (actual_time1.equals(actual_time)) {  //Checking if replaced file time is not same as before. In case of different times,file is replaced successfully or else not.
					Reporter.log("Error: File is not replaced");
					actStatus.add(false);
				} else {
					Reporter.log("File is replaced");
					actStatus.add(true);
				}
				
				if(actStatus.equals(expStatus))
				{
					return true;
				}
				else
				{
					return false;
				}
			}
	    
	    
			// This method is to check if all files can be selected/un selected from select all btn in file system tab
			public static boolean checkAndUncheckFilesInable() throws Exception {
				WebDriverUtils.implicitlyWait();
				Boolean status1 = null;
				Boolean status2 = null;
				List<Boolean> actual_status = new ArrayList<Boolean>();
				List<Boolean> expected_status = new ArrayList<Boolean>();
				expected_status.add(true);
				expected_status.add(true);
				SCLFiles().click();     //Navigating to SCL files
				Browsers.driver.switchTo().frame("iframecontainer");
				List<WebElement> rowsCheck = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));  //Traversing through all the roes and checking if checkboxes are checked
				if(rowsCheck.size()==0)
				{
					sclFileLoad("Ch1Line1.CID");
					sclFileLoad("BCU_402T.scd");
					sclFileLoad("411L.CID");
				}
				selectAllFiles().click();   //Click on Select All files checkbox
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));  //Traversing through all the roes and checking if checkboxes are checked
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					Boolean status = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
							.isSelected();
					if (status.equals(true)) {
						Reporter.log("All checkbox are able check");
						status1 = true;
					} else {
						Reporter.log("Error: CheckBox are unable to check");
						status1 = false;
						break;
					}
				}
				selectAllFiles().click();    //Clicking on Select All checkbox to uncheck all files
				List<WebElement> rows1 = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));  //Traversing through all the rows to check if all check boxes are unchecked.
				int count2 = rows1.size();
				for (int j = 1; j <= count2; j++) {
					Boolean status = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
							.isSelected();
					if (status.equals(false)) {
						Reporter.log("Error : check box are unable to uncheck");
						status2 = true;

					} else {
						Reporter.log("All check box are able to uncheck");
						status2 = false;
						break;
						}
				}
				actual_status.add(status1);
				actual_status.add(status2);

				if (actual_status.equals(expected_status)) {  //If actual status is as expected then returning true else returning false
					return true;
				} else {
					return false;
				}

			}
			
			
			// This method is to verify that after the successful loading of IEDs, columns: IEDname, Access point and Edition are listed. 
			public static Boolean fileLoadAndColumnsCheck(String filename , String extension) throws Exception 
			{
				WebDriverUtils.implicitlyWait();
				Boolean loadStatus = false;
				//navigate to SCL Files page
				//check if file already available
				Boolean isFileAlreadyLoaded = CheckFileInFileSystem(filename);
				if (isFileAlreadyLoaded == false)
				{
					String filename1 = filename+extension;
					sclFileLoad(filename1);
				}
				//verifying load successful
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
				int count = Integer.parseInt(pagination);
				for (int i = 1; i <= count; i++) 
				{
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) 
					{
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals(filename)) 
						{
							//click on load ied btn against the file
							Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img")).click();	
							WebDriverUtils.findElementByClass("manageIeds","smallWait").click();
							Browsers.driver.switchTo().activeElement();
							Thread.sleep(2000);
							if(WebDriverUtils.findElementByName("itemcheck", "smallWait").isSelected())
							{
								Reporter.log("IEDs are loaded successfully.");
								loadStatus = true;
							}
						else
						{
							Reporter.log("Error: IED is not loaded successfully.");
							loadStatus= false;
							break;
						}
				}
					int count2 = i + 1;
					if (count2 <= count) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
				}
			return loadStatus;
			}
			
			
			
			
	    //////////////////////////////////////////////////////////////////////////////////////////////////////////
		// This method is to verify close button is working in IED select window
		public static Boolean closeBtnClickInIEDsStatusInfoPopUp() throws Exception
		{
			WebDriverUtils.implicitlyWait();
			Boolean status = null;
			Boolean loadStatusDisplay = null;
			Boolean infoPopupCloseStatus = null;
			//Navigate to SCL files page
			SCLFiles().click();
			//check if file already available
			Boolean isFileAlreadyLoaded = CheckFileInFileSystem("Ch1Line1");
			if (isFileAlreadyLoaded == false)
			{
				String filename1 = "Ch1Line1.CID";
				sclFileLoad(filename1);
			}
			//verifying load successful
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++)
			{
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) 
				{
					//check if load successful for TR3000.ICD
					String actual_file = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("Ch1Line1"))
					{
						//click on load ied btn against the file
						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
						.click();
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[5]/a" ,"smallWait").click();
						Thread.sleep(4000);
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(3000);	
						if(WebDriverUtils.findElementByXpath("//*[@id=\"iedprogressTable\"]/thead/tr/th[3]" ,"smallWait").getText().equals("Status"))
						{
							loadStatusDisplay = true;
							Reporter.log("IED load status is displaying in info pop up");
						}
						else
						{
							loadStatusDisplay = false;
							Reporter.log("Error:IED load status is not displaying in info pop up");
						}
						//click on close btn in IED status info  window
						WebDriverUtils.findElementById("modal_progress_close","smallWait").click();
						Thread.sleep(3000);
						WebElement popUp = Browsers.driver.findElement(By.id("modal_progress_close"));
						if(popUp.isDisplayed())
						{
							infoPopupCloseStatus = false;
							Reporter.log("Error : close button not working as expected in IED info window");
						}
						else
						{
							infoPopupCloseStatus = true;
							Reporter.log("close button working as expected in IED info window");
						}						
						break outerloop;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) 
				{
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a" ,"smallWait").click();
				}
			}
			
			if((infoPopupCloseStatus.equals(true)) && (loadStatusDisplay.equals(true)))
			{
				status = true;
			}
			else
			{
				status = false;
			}
			return status;
		}
		
		// This method is to verify that user can select all IEDs by selecting "Select All" check box in IED listing window
		public static Boolean selectAllClickInSelectIEDsPopUp() throws Exception
		{
			WebDriverUtils.implicitlyWait();
			Boolean isSelectAllWorking = null;
			Boolean selectStatus = true;
			Boolean deselectStatus = true;
			//delete all SCL files loaded
			deleteAllFileInFilesystemTable();
			Browsers.driver.switchTo().defaultContent();
			//Navigate to SCL files page
			SCLFiles().click();
			//load SCL file
			String filename1 = "BCU_402T.scd";
			sclFileLoad(filename1);
			//click on load ied btn against the file
			Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/a/img"))
			.click();
			WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/ul/li[1]/a","smallWait").click();
			Browsers.driver.switchTo().activeElement();
			//check user can select using "Select All" check box
			//click on select all checkbox in IED select window
			selectAllIEDs().click();
			WebElement checkBoxColumn = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody","smallWait");
			List <WebElement> checkBoxes = checkBoxColumn.findElements(By.tagName("tr"));
			for(int k=2; k<=checkBoxes.size(); k++)
			{
				WebElement checkBoxInRow = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr["+k+"]/td[1]/input" ,"smallWait");
				if(!checkBoxInRow.isSelected())
				{
					selectStatus = false;
					break;
				}			
			}
			//click on select all checkbox in IED select window
			selectAllIEDs().click();
			WebElement checkBoxColumn1 = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody","smallWait");
			List <WebElement> checkBoxes1 = checkBoxColumn1.findElements(By.tagName("tr"));
			for(int k=2; k<=checkBoxes1.size(); k++)
			{
				WebElement checkBoxInRow = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr["+k+"]/td[1]/input","smallWait");
				if(checkBoxInRow.isSelected())
				{
					deselectStatus = false;
					break;
				}			
			}		
			if(selectStatus.equals(true) && deselectStatus.equals(true))
			{
				isSelectAllWorking = true;
				Reporter.log("user able to select all IEDs using Select All check box in IED listing window");
			}
			else
			{
				isSelectAllWorking = false;
				Reporter.log("Error : user unable to select all IEDs using Select All check box in IED listing window");
			}
			return isSelectAllWorking;
		}

		// This method is to check if icd file can be loaded in file system tab
		public static Boolean loadicdFileInFileSystem() throws Exception
		{
			WebDriverUtils.implicitlyWait();
			String loadStatus = null;
			Boolean status = null;
			//Navigate to SCL files page
			SCLFiles().click();
			//check if file already available
			Boolean isFileAlreadyLoaded = CheckFileInFileSystem("Ed2TestIED");
			if (isFileAlreadyLoaded == false)
			{
				String filename1 = "Ed2TestIED.icd";
				sclFileLoad(filename1);
			}
			//verifying load successful
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++)
			{
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) 
				{
					//check if load successful for Ed2TestIED.ICD
					String actual_file = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("Ed2TestIED"))
					{
						//click on load ied btn against the file
						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/a[1]/img"))
						.click();
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(2000);
						//check select all ied checkbox
						selectAllIEDs().click();
						//click load btn in Select IEDs pop up 
						WebDriverUtils.findElementById("loadIedList","smallWait").click();
						Browsers.driver.switchTo().activeElement();
						//get the load status msg
						loadStatus = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]","smallWait").getText();
						//close load status msg
						Browsers.driver.findElement(By.id("ok")).click();
						break outerloop;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) 
				{
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
				}
			}
			if (loadStatus.equals("Loading was successfull"))
			{
				status = true;
				Reporter.log("icd file loaded in file system tab successfully");
			}
			else
			{
				status = false;
				Reporter.log("Error : unable to load icd file in file system tab");
			}
			return status;
		}

		

		


	
	// This method is to verify deleting all files from file system table using
		// delete all button
		public static Boolean deleteAllFileInFilesystemTable() throws Exception {
			WebDriverUtils.implicitlyWait();
			SCLFiles().click();						//Navigating to SCL Files tab
			Browsers.driver.switchTo().frame("iframecontainer");
			String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking for no of pages
			int count3 = Integer.parseInt(pagination1);
			for (int i = 1; i <= count3; i++) {
				selectAllFiles().click();					//Selecting all files from the table
				SCLFilesSettings().click();			//clicking on settings button
				deleteSelectedBtn().click();		//clicking on delete select file button
				Browsers.driver.switchTo().activeElement();
				WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();    //clicking on delete yes button
				}
			
			Thread.sleep(2000);
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));     //checking if all rows are deleted or not
			int count1 = rows.size();
			if (count1 == 0) {
				Reporter.log("verified deleting all files from file system table using delete all button");
				return true;
			} else {
				Reporter.log("Error : unable to delete all files from file system table using delete all button");
				return false;
			}
		}
		
		
		
		// This method is to verify if scl file loading is working properly
				public static List<Boolean> sclFileLoadAndMessageLoadCheck(String filename1) throws Exception {
					WebDriverUtils.implicitlyWait();
					List<Boolean> statusList = new ArrayList<Boolean>();
					Boolean gseStatus = null;
					Boolean svStatus = null;
					List<String> expIedList = new ArrayList<String>();
					Browsers.driver.switchTo().defaultContent();
					SCLFiles().click();                               //Navigate to SCL files tab
					File file1 = new File(filename1);
					String absolutePath1 = file1.getAbsolutePath();
					absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
					String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
					String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
					try {
						if( isFileAvailable(absolutePath2, "ImportProject.exe"))
						{
							if( isFileAvailable(absolutePath2, filename1))
							{
								Browsers.driver.switchTo().frame("iframecontainer");
								//click on menu in SCL files
								SCLFilesSettings().click();
								//upload btn click
								Upload().click();
								//select file for loading
								ChooseFile().sendKeys(absolutePath3);
								//submit btn click
								Submit().click();
								if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
									Thread.sleep(2000);
									replaceFileYes().click();
								}
								Thread.sleep(2000);
								List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='iedTable']/tbody/tr"));
								int count1 = rows.size();
								for (int j = 1; j <= count1; j++) {
									String iedName = Browsers.driver.findElement(By.xpath("//table[@id='iedTable']/tbody/tr["+j+"]/td[2]")).getText();
									expIedList.add(iedName);
								}
									
								selectAllIEDs().click();							// Selecting Select All IEDs Check box
								loadBtn().click();									//Clicking on Load IEDs button
								Thread.sleep(2000);
								Browsers.driver.switchTo().activeElement();
								ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
							}
							else
							{
								Reporter.log("SCL file : " + filename1 + " is not available for file upload");
							}
						}
						else
						{
							Reporter.log("ImportProject.exe is not available for file upload");
						}
						}
						catch(Exception e)
				        {
				        	Reporter.log("exception occured : "+e);
				        }
					
					Browsers.driver.switchTo().defaultContent();
					GooseMessages.GOOSEMessagesTab().click();
					Browsers.driver.switchTo().frame("iframecontainer");
					List<WebElement> gseRows = Browsers.driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
					int gseRowsCount = gseRows.size();
					if(gseRowsCount==0)
					{
						gseStatus = false;
					}else {
					 for (int j = 0; j < gseRowsCount; j++) 
					 {
							if(!gseRows.get(j).getAttribute("class").contains("hasChildRow"))
							{
							String iedName = Browsers.driver
									.findElement(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr[" + j + "]/td[7]")).getText();		//Getting file name from each row
							if (expIedList.contains(iedName)) {                             //Checking if IED name is found in the table
								gseStatus = true;
								break;
							} else {
								gseStatus = false;
							}
							}
						}
					}
						Browsers.driver.switchTo().defaultContent();
						GooseMessages.SVMessagesTab().click();
						Browsers.driver.switchTo().frame("iframecontainer");
						 List<WebElement> svRows = Browsers.driver.findElements(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr"));
						 int svRowsCount = svRows.size();
						 if(svRowsCount == 0) {
							svStatus=false;
						 }else
						 {
						 for (int j = 0; j < svRowsCount; j++) {
								if(!svRows.get(j).getAttribute("class").contains("hasChildRow"))
								{
									String iedName = Browsers.driver
										.findElement(By.xpath("//*[@id=\"smvInfotable\"]/tbody/tr[" + j + "]/td[4]")).getText();		//Getting file name from each row
								if (expIedList.contains(iedName)) {                             //Checking if IED name is found in the table
									svStatus = true;
									break;
								} else {
									svStatus = false;
								}
								}
							}
						}
							statusList.add(gseStatus);
							statusList.add(svStatus);
					return statusList;
		}

		
		
		// This method is to verify if extensions are available in upload screen
		public static Boolean extensionAvailableCheck() throws Exception {
			WebDriverUtils.implicitlyWait();
			SCLFiles().click();					//Navigating to SCLFiles
			Browsers.driver.switchTo().frame("iframecontainer");
			SCLFilesSettings().click();			//Clicking on settings button
			Upload().click();					//Click on upload button in settings
			Boolean status1 = checkboxCid().isDisplayed();			//Checking if CID checkbox is available in upload screen
			Boolean status2 = checkboxIcd().isDisplayed();			//Checking if ICD checkbox is available in upload screen
			Boolean status3 = checkboxiid().isDisplayed();			//Checking if IID checkbox is available in upload screen
			Boolean status4 = checkboxScd().isDisplayed();			//Checking if SCD checkbox is available in upload screen
			Boolean status5 = checkboxSed().isDisplayed();			//Checking if SED checkbox is available in upload screen
			Boolean status6 = checkboxSsd().isDisplayed();			//Checking if SSD checkbox is available in upload screen
			List<Boolean> actual_status = Arrays.asList(status1,status2,status3,status4,status5,status6);
			List<Boolean> extected_status = Arrays.asList(true,true,true,true,true,true);
			if (actual_status.equals(extected_status)) {			//Checking if expected and actual status is same
				Reporter.log("extensions are available in upload screen");
				return true;
			} else {
				Reporter.log("Error : extensions not available in upload screen");
				return false;
			}
		}

		
		// This method is to verify error message on duplicate file upload
		public static Boolean duplicateFileUploadMsg() throws Exception {
			WebDriverUtils.implicitlyWait();
			String filename = "BCU_402T";
			String filename1 = "BCU_402T.scd";
			Boolean status = CheckFileInFileSystem(filename);  //Checking if expected file is present in the list
			if(status==false)		//if file is not present uploading the file
			{
			sclFileLoad(filename1);
			}
			SCLFiles().click();		//Navigating to SCL files 
			Browsers.driver.switchTo().frame("iframecontainer");
			SCLFilesSettings().click();		//Clicking on settings
			Upload().click();			//Selecting Upload button
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
			String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			try {
				if( isFileAvailable(absolutePath2, "ImportProject.exe"))
				{
					if( isFileAvailable(absolutePath2, filename1))
					{
						//click on menu in SCL files
						SCLFilesSettings().click();
						//upload btn click
						Upload().click();
						//select file for loading
						ChooseFile().sendKeys(absolutePath3);
						Submit().click();
						String actual_msg = "";
						if (WebDriverUtils.findElementById("modalLabel","smallWait").isDisplayed()) {
							actual_msg = WebDriverUtils.findElementByXpath("//div[@id='confirmModal']/div/div/div[2]/p[1]","smallWait").getText(); //Getting actual message on duplicate file upload
						}
						String expected_msg = "The selected file already exists. The existing file will be replaced.";  //expected message

						if (actual_msg.equals(expected_msg)) {			//checking if actual and expected message are same
							Reporter.log("error message is displayed on duplicate file upload");
							status= true;
						} else {
							Reporter.log("Error : error message not displayed on duplicate file upload");
							status = false;
						}
					}
					else
					{
						Reporter.log("SCL file is not available for file upload");
						status = false;
					}
				}
				else
				{
					Reporter.log("ImportProject.exe is not available for file upload");
					status = false;
				}
				}
				catch(Exception e)
		        {
		        	Reporter.log("exception occured : "+e);
				}
			return status;
		}
		
		
		

		
		
		
		
	
		
		// This method is to verify is check box check is working properly in files tab
		
		public static Boolean checkBoxFucntionFilesystem() throws Exception {
			WebDriverUtils.implicitlyWait();
			SCLFiles().click();   //Navigating to SCL files
			Browsers.driver.switchTo().frame("iframecontainer");
			List<WebElement> rowsCheck = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));  //Traversing through all the roes and checking if checkboxes are checked
			if(rowsCheck.size()==0)
			{
				sclFileLoad("Ch1Line1.CID");
				sclFileLoad("BCU_402T.scd");
			}
			WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/tbody/tr[1]/td[1]/input","smallWait").click(); //Clicking on check box of first row
			Boolean expected_status = true;
			Boolean actual_status = WebDriverUtils.findElementByXpath("//*[@id='filesystemtable']/tbody/tr[1]/td[1]/input","smallWait").isSelected(); //Checking if check box is selected
			if (actual_status.equals(expected_status)) {  //Returning true if check box is selected
				return true;
			} else {
				return false;
			}
		}
		
		// This method is to verify delete file in filesystem table
		public static Boolean deleteFileInfilesystemTable(String filename ,String fileExtension ) throws Exception {
			WebDriverUtils.implicitlyWait();
			String filename1= filename + "." + fileExtension;
			Boolean status = CheckFileInFileSystem(filename);   //Checking if file is available
			if(status==false)     //If file is not available the load the file
			{
				sclFileLoad(filename1);
			}
			Boolean deleteMsgStatus = null;
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through table to file the file and delete
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals(filename)) {   //Enter loop if file name matches
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr["+ j +"]/td[7]/div/a/img","smallWait").click();  //Click on delete button
						WebDriverUtils.findElementByLinkText("Delete","smallWait").click();
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(2000);
						if( WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[2]/p","smallWait").getText().equals("Are you sure you want to delete the selected file(s)?"))
						{
							Reporter.log("Delete alert message is displayed correctly");
							deleteMsgStatus=true;
						}
						else
						{
							Reporter.log("Delete alert message is not displayed correctly");
							deleteMsgStatus=false;
						}
						WebDriverUtils.findElementByXpath("//*[@id=\"deleteHref\"]/button","smallWait").click();  //Click on Yes button of delete tab
						break outerloop;
					} 
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
				}
			}
			

			Browsers.driver.switchTo().defaultContent();
			SCLFiles().click();  //Navigating to SCL files
			Browsers.driver.switchTo().frame("iframecontainer");
			Boolean status1 =null;
			String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through table to check if deleted file is available
			int count1 = Integer.parseInt(pagination1);
			if(count1==0) {
				status1=true;
			}
			else{ 
			
			outerloop: 
				for (int i = 1; i <= count1; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count2 = rows.size();
				
					for (int j = 1; j <= count2; j++) {
				
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("filename")) {    //If file is available then return false else return true
						
						status1= false;
						break outerloop;
					} 
					else {
						status1= true;
					}
				}
				int count3 = i + 1;
				if (count3 <= count1) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count3 + "]/a","smallWait").click();
				}
			}
				}
			
			if(deleteMsgStatus.equals(true) && status1.equals(true))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		
		// This method is to verify cancel delete file in file system table
		public static Boolean canceldeleteFileInFileSystemTable() throws Exception {
			WebDriverUtils.implicitlyWait();
			String filename= "BCU_402T";
			String filename1= "BCU_402T.scd";
			Boolean status = CheckFileInFileSystem(filename);  //Checking if file is available in table
			if(status==false)  //If file is not available then load the file
			{
				sclFileLoad(filename1);
			}
			Browsers.driver.switchTo().defaultContent();
			SCLFiles().click();    //Navigating to SCL Files
			Browsers.driver.switchTo().frame("iframecontainer");
			
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through the table to find the file
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("BCU_402T")) {   //If the file is found enter rge loop
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/a/img","smallWait").click();  //Click on delete button
						WebDriverUtils.findElementByXpath("//*[@Class='deleteSclFile']/i","smallWait").click();
						Browsers.driver.switchTo().activeElement();
						WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[3]/button","smallWait").click(); //Cancel delete 
						break outerloop;
					} 
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
				}
			}
			
			Browsers.driver.navigate().refresh();   //Refreshing the page
			SCLFiles().click();   //Navigating to SCL Files
			Browsers.driver.switchTo().frame("iframecontainer");
			Boolean status1 =null;
			String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing through the table to file the file
			int count1 = Integer.parseInt(pagination1);
			
			outerloop: 
				for (int i = 1; i <= count1; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count2 = rows.size();
				for (int j = 1; j <= count2; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("BCU_402T")) {  // if file is found then return true else return false
						
						status1= true;
						break outerloop;
					} 
					else {
						status1= false;
					}
				}
				int count3 = i + 1;
				if (count3 <= count1) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count3 + "]/a","smallWait").click();
				}
			}
			return status1;
		}
		
		// This method is to verify cancel delete file in file system table using close button of alert box
				public static Boolean canceldeleteFileInFileSystemTableUsingClose() throws Exception {
					WebDriverUtils.implicitlyWait();
					String filename= "BCU_402T";
					String filename1= "BCU_402T.scd";
					Boolean status = CheckFileInFileSystem(filename);  //Checking if file is available in table
					if(status==false)  //If file is not available then load the file
					{
						sclFileLoad(filename1);
					}
					Browsers.driver.switchTo().defaultContent();
					SCLFiles().click();    //Navigating to SCL Files
					Browsers.driver.switchTo().frame("iframecontainer");
					String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through the table to find the file
					int count = Integer.parseInt(pagination);
					outerloop: for (int i = 1; i <= count; i++) {
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count1 = rows.size();
						for (int j = 1; j <= count1; j++) {
							String actual_file = Browsers.driver
									.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
							if (actual_file.equals("BCU_402T")) {   //If the file is found enter rge loop
								WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/a/img","smallWait").click();  //Click on delete button
								WebDriverUtils.findElementByXpath("//*[@Class='deleteSclFile']/i","smallWait").click();
								Browsers.driver.switchTo().activeElement();
								WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[1]/button/span","smallWait").click(); // Click on Close button of delete alert box
								break outerloop;
							} 
						}
						int count2 = i + 1;
						if (count2 <= count) {
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
					}
					
					Browsers.driver.navigate().refresh();   //Refreshing the page
					SCLFiles().click();   //Navigating to SCL Files
					Browsers.driver.switchTo().frame("iframecontainer");
					Boolean status1 =null;
					String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing through the table to file the file
					int count1 = Integer.parseInt(pagination1);
					
					outerloop: 
						for (int i = 1; i <= count1; i++) {
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count2 = rows.size();
						for (int j = 1; j <= count2; j++) {
							String actual_file = Browsers.driver
									.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();
							if (actual_file.equals("BCU_402T")) {  // if file is found then return true else return false
								
								status1= true;
								break outerloop;
							} 
							else {
								status1= false;
							}
						}
						int count3 = i + 1;
						if (count3 <= count1) {
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count3 + "]/a","smallWait").click();
						}
					}
					return status1;
				}
		
		
		// This method is to check if files can be deleted from deleteAll btn in settings
		public static void removefileUsingDeleteAllFileSystem() throws Exception {
			WebDriverUtils.implicitlyWait();
			SCLFiles().click();   //Navigating to SCL Files
			Boolean status = CheckFileInFileSystem("BCU_402T");   //Checking if files are present in table
			if (status == false) {    //loading file if not present
				sclFileLoad("BCU_402T.scd");
			}
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");    //Selecting  files and deleting using delete All button in settings
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("BCU_402T")) {					//Entering the loop when file is found
						Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
						.click();
						SCLFilesSettings().click();      //Click on settings button
						deleteSelectedBtn().click();	//Click on Delete All button
						Browsers.driver.switchTo().activeElement();
						WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();  // Click on Yes button of delete window
						Browsers.driver.switchTo().activeElement();
						break outerloop;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
					}
			}
		}
		
		
		
		// This method is to verify rename file in file system table
		public static Boolean renameFileInFilesystemTable() throws Exception {
			WebDriverUtils.implicitlyWait();
			Boolean status = CheckFileInFileSystem("BCU_402T");   //Checking if expected file is available in table
			if(status == false)   //Loading the expected file if not present    
			{
				sclFileLoad("BCU_402T.scd");
			}
			Browsers.driver.switchTo().defaultContent();
			SCLFiles().click();    //Navigating to SCL files
			Browsers.driver.switchTo().frame("iframecontainer");
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through the table to find the file and rename it
			int count = Integer.parseInt(pagination);
			outerloop: for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (actual_file.equals("BCU_402T")) {  //Entering the loop if file found
						
						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
						.click();
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[2]/a","smallWait").click();  //click on rename button
						Browsers.driver.switchTo().activeElement();
						WebDriverUtils.findElementById("fileRename","smallWait").sendKeys("TC_28");    //Renaming the file 
						WebDriverUtils.findElementByXpath("//*[@id=\"renameSclForm\"]/div[2]/button[1]","smallWait").click();   //Click on Ok button
						Browsers.driver.switchTo().defaultContent();
						Browsers.driver.navigate().refresh();
						break outerloop;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
					}
			}
			
			SCLFiles().click();
			Browsers.driver.switchTo().frame("iframecontainer");
			Boolean name_status = null;
			String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing the table again to check if file with changed file name is available
			int count2 = Integer.parseInt(pagination1);
			outerloop: for (int i = 1; i <= count2; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count3 = rows.size();
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
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count4 + "]/a","smallWait").click();
					}
			}
			return name_status;
		}
		
		
		// This method is to verify cancel rename file in file system table
				public static Boolean cancelrenameFileInFilesystemTable() throws Exception {
					WebDriverUtils.implicitlyWait();
					Boolean status = CheckFileInFileSystem("BCU_402T");   //Checking if expected file is available in table
					if(status == false)   //Loading the expected file if not present    
					{
						sclFileLoad("BCU_402T.scd");
					}
					Browsers.driver.switchTo().defaultContent();
					SCLFiles().click();    //Navigating to SCL files
					Browsers.driver.switchTo().frame("iframecontainer");
					String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");   //Traversing through the table to find the file and rename it
					int count = Integer.parseInt(pagination);
					outerloop: for (int i = 1; i <= count; i++) {
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count1 = rows.size();
						// int checkboxCount =0;
						for (int j = 1; j <= count1; j++) {
							String actual_file = Browsers.driver
									.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
							if (actual_file.equals("BCU_402T")) {  //Entering the loop if file found
								
								 Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
									.click();
									WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[2]/a","smallWait").click();  //click on rename button
								Browsers.driver.switchTo().activeElement();
								WebDriverUtils.findElementById("fileRename","smallWait").sendKeys("TC_28");    //Renaming the file 
								WebDriverUtils.findElementById("mod_rename_cancel","smallWait").click();   //Click on Close button
								Browsers.driver.switchTo().defaultContent();
								Browsers.driver.navigate().refresh();
								break outerloop;
							}
						}
						int count2 = i + 1;
						if (count2 <= count) {
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
							}
					}
					
					SCLFiles().click();
					Browsers.driver.switchTo().frame("iframecontainer");
					Boolean name_status = null;
					String pagination1 = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");  //Traversing the table again to check if file with changed file name is available
					int count2 = Integer.parseInt(pagination1);
					outerloop: for (int i = 1; i <= count2; i++) {
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count3 = rows.size();
						for (int j = 1; j <= count3; j++) {
							String actual_file = Browsers.driver
									.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
							if (actual_file.equals("BCU_402T")) {
								
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
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count4 + "]/a","smallWait").click();
							}
					}
					return name_status;
				}
		
	
		
		  // This method is to verify that after the successful loading of ssd file, details like IEDname, Access point and Edition are listed.
	    public static Boolean loadingWindowssdFile() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	        Boolean status = null;
	        List<String> act_list = new ArrayList<String>();
	        List<String> exp_list = new ArrayList<String>();
	        exp_list.add("IED Name");
	        exp_list.add("Access Point");
	        exp_list.add("Edition");
	        //navigate to SCL Files page
	        SCLFiles().click();
	        Browsers.driver.switchTo().frame("iframecontainer");
	        //check if file already available
	        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("REL670");
	        if (isFileAlreadyLoaded == false)
	        {
	            String filename1 = "REL670.ssd";
	           sclFileLoad(filename1);
	        }
	        //verifying load successful
	        String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
	        int count = Integer.parseInt(pagination);
	        outerloop: for (int i = 1; i <= count; i++)
	        {
	            List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
	            int count1 = rows.size();
	            for (int j = 1; j <= count1; j++)
	            {
	                String actual_file = Browsers.driver
	                        .findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
	                if (actual_file.equals("REL670"))
	                {
	                    //click on load ied btn against the file
	                    Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
						.click();
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[1]/a","smallWait").click();
						Browsers.driver.switchTo().activeElement();
	                    Thread.sleep(2000);
	                    //get the column names displayed in list
	                    List<WebElement> columns = Browsers.driver.findElements(By.xpath("//*[@id=\"iedTable\"]/thead/tr/th"));
	                    int columnsize = columns.size();
	                    for (int k = 2; k <= columnsize; k++)
	                    {
	                    	WebElement column = Browsers.driver.findElement(By.xpath("//*[@id='iedTable']/thead/tr/th[" + k + "]"));
	                        if(!column.getAttribute("style").contains("none"))
	                        {
	                            act_list.add(column.getText());
	                        }
	                    }
	                    break outerloop;
	                }
	            }
	            int count2 = i + 1;
	            if (count2 <= count) {
	                WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
	               }
	        }
			
	        if (act_list.equals(exp_list))
	        {
	            status = true;
	            Reporter.log("IEDname, Access point and Edition are listed after successful loading of ssd file");
	        }
	        else
	        {
	            status = false;
	            Reporter.log("Error : IEDname, Access point and Edition not listed after successful loading of ssd file");
	        }
	        return status;
	    }
	    
	    // This method is to check if ssd file can be loaded in file system tab
	    public static Boolean loadssdFileInFileSystem() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	        String loadStatus = null;
	        Boolean status = null;
	       //Navigate to SCL files page
	        SCLFiles().click();
	        Browsers.driver.switchTo().frame("iframecontainer");
	        //check if file already available
	        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("REL670");
	        if (isFileAlreadyLoaded == false)
	        {
	            String filename1 = "REL670.ssd";
	            sclFileLoad(filename1);
	        }
	        //verifying load successful
	        String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
	        int count = Integer.parseInt(pagination);
	        outerloop: for (int i = 1; i <= count; i++)
	        {
	            List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
	            int count1 = rows.size();
	            for (int j = 1; j <= count1; j++)
	            {
	                //check if load successful for REL670.SSD
	                String actual_file = Browsers.driver
	                        .findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
	                if (actual_file.equals("REL670"))
	                {
	                   //click on load ied btn against the file
	                    Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
						.click();
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[1]/a","smallWait").click();
						Browsers.driver.switchTo().activeElement();
	                    //check select all ied checkbox
	                    selectAllIEDs().click();
	                    //click load btn in Select IEDs pop up
	                    WebDriverUtils.findElementById("loadIedList","smallWait").click();
	                   Browsers.driver.switchTo().activeElement();
	                    Thread.sleep(3000);
	                    //get the load status msg
	                    loadStatus = WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]","smallWait").getText();
	                    //close load status msg
	                    Browsers.driver.findElement(By.id("ok")).click();
	                    break outerloop;
	                }
	            }
	            int count2 = i + 1;
	            if (count2 <= count)
	            {
	                WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
	                }
	        }
			
	        if (loadStatus.equals("Loading was successfull"))
	        {
	            status = true;
	            Reporter.log("ssd file loaded in file system tab successfully");
	        }
	        else
	        {
	            status = false;
	            Reporter.log("Error : unable to load ssd file in file system tab");
	        }
	        return status;
	    }
	    
	
	    
		 // This method is to verify that after the successful loading of sed file, details like IEDname, Access point and Edition are listed.
	    public static Boolean singleIEDload() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	        Boolean status = null;
	        String actIedName = null;
	        Browsers.driver.switchTo().defaultContent();
	        //navigate to SCL Files page
	        SCLFiles().click();
	        Browsers.driver.switchTo().frame("iframecontainer");
	        //check if file already available
	        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("BCU_402T");
	        if (isFileAlreadyLoaded == true)
	        {
	        	Browsers.driver.switchTo().defaultContent();
	        	deleteFileInfilesystemTable("BCU_402T","scd");
	        }
	        Browsers.driver.switchTo().defaultContent();
	        SCLFiles().click();                               //Navigate to SCL files tab
			Browsers.driver.switchTo().frame("iframecontainer");
			String filename1 = "BCU_402T.scd";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
			String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			try {
				if( isFileAvailable(absolutePath2, "ImportProject.exe"))
				{
					if( isFileAvailable(absolutePath2, filename1))
					{
						//click on menu in SCL files
						SCLFilesSettings().click();
						//upload btn click
						Upload().click();
						//select file for loading
						ChooseFile().sendKeys(absolutePath3);
						Submit().click();
						actIedName = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[1]/td[2]","smallWait").getText();
						WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[1]/td[1]/input","smallWait").click();						// Selecting 1st IED Check box
						loadBtn().click();									//Clicking on Load IEDs button
						ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
						}
					else
					{
						Reporter.log("SCL file is not available for file upload");
						status = false;
					}
				}
				else
				{
					Reporter.log("ImportProject.exe is not available for file upload");
					status = false;
				}
				}
				catch(Exception e)
		        {
		        	Reporter.log("exception occured : "+e);
					
		     //   	Runtime.getRuntime().exec("src\\main\\resources\\TestData\\CloseWindowCH.exe");
		        }
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
			int count = Integer.parseInt(pagination);

				outerloop: 
				for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
				
					if (actual_file.equals("BCU_402T")) {                             //Checking if file name is found in the table
						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img")).click();
						Browsers.driver.findElement(By.linkText("Loaded IED Info")).click();
						List<WebElement> iedRows = Browsers.driver.findElements(By.xpath("//table[@id='iedprogressTable']/tbody/tr"));
						int iedRowCount = iedRows.size();
						for (int k = 1; k <= iedRowCount; k++) {
							Thread.sleep(2000);
							String iedName = Browsers.driver.findElement(By.xpath("//*[@id=\"iedprogressTable\"]/tbody/tr[" + j + "]/td[1]")).getText();		//Getting file name from each row
								if (iedName.equals(actIedName)) {
								if(Browsers.driver.findElement(By.xpath("//*[@id=\"iedprogressTable\"]/tbody/tr[" + j + "]/td[3]/i")).getAttribute("class").contains("green"))
								{
									Reporter.log("Correct IED is loaded");								
									status = true;
									break outerloop;
								}
								else {
									Reporter.log("Error: Correct IED is not loaded");	
									status = false;
								}
									
								}
							else
							{
								Reporter.log("Error: IED is not listed in the IED load table");
								status = false;
							}
							}
							} 							
							else {
								Reporter.log("Error: SCL file is not listed in file system table");	
								status = false;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
				}

			}
             return status;
	    }
	    
	    
	 // This method is to verify that after the successful loading of sed file, details like IEDname, Access point and Edition are listed.
	    public static Boolean multipleIEDload() throws Exception
	    {
	    	WebDriverUtils.implicitlyWait();
	        Boolean status = null;
	        String expIedName1 = null;
	        String expIedName2 = null;
	        List<String> expIedList = null;
	        Browsers.driver.switchTo().defaultContent();
	        //navigate to SCL Files page
	        SCLFiles().click();
	        Browsers.driver.switchTo().frame("iframecontainer");
	        //check if file already available
	        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("BCU_402T");
	        if (isFileAlreadyLoaded == true)
	        {
	        	Browsers.driver.switchTo().defaultContent(); 
	             deleteFileInfilesystemTable("BCU_402T","scd");
	        }
	        Browsers.driver.switchTo().defaultContent();
	        SCLFiles().click();                               //Navigate to SCL files tab
			Browsers.driver.switchTo().frame("iframecontainer");
			String filename1 = "BCU_402T.scd";
			File file1 = new File(filename1);
			String absolutePath1 = file1.getAbsolutePath();
			absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
			String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
			String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
			try {
				if( isFileAvailable(absolutePath2, "ImportProject.exe"))
				{
					if( isFileAvailable(absolutePath2, filename1))
					{
						//click on menu in SCL files
						SCLFilesSettings().click();
						//upload btn click
						Upload().click();
						//select file for loading
						ChooseFile().sendKeys(absolutePath3);
						Submit().click();
						expIedName1 = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[1]/td[2]","smallWait").getText();
						expIedName2 = WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[3]/td[2]","smallWait").getText();
						expIedList = Arrays.asList(expIedName1,expIedName2);
						WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[1]/td[1]/input","smallWait").click();				// Selecting 1st IED Check box
						WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/tbody/tr[3]/td[1]/input","smallWait").click();				// Selecting 2nd IED Check box
						loadBtn().click();									//Clicking on Load IEDs button
						ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
						}
					else
					{
						Reporter.log("SCL file is not available for file upload");
						status = false;
					}
				}
				else
				{
					Reporter.log("ImportProject.exe is not available for file upload");
					status = false;
				}
				}
				catch(Exception e)
		        {
		        	Reporter.log("exception occured : "+e);
				}
			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
			int count = Integer.parseInt(pagination);

			outerloop:
				for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
				int count1 = rows.size();
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver
							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
				
					if (actual_file.equals("BCU_402T")) {                             //Checking if file name is found in the table
						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img")).click();
						Browsers.driver.findElement(By.linkText("Loaded IED Info")).click();
						Thread.sleep(2000);
						for(int ieds=0;ieds<expIedList.size();ieds++)
						{
						List<WebElement> iedRows = Browsers.driver.findElements(By.xpath("//table[@id='iedprogressTable']/tbody/tr"));
						int iedRowCount = iedRows.size();
						for (int k = 1; k <= iedRowCount; k++) {
							Thread.sleep(2000);
							String iedName = Browsers.driver.findElement(By.xpath("//*[@id=\"iedprogressTable\"]/tbody/tr[" + k + "]/td[1]")).getText();		//Getting file name from each row
							if (iedName.equals(expIedList.get(ieds))) {
									
								if(Browsers.driver.findElement(By.xpath("//*[@id=\"iedprogressTable\"]/tbody/tr[" + k + "]/td[3]/i")).getAttribute("class").contains("green"))
								{
									Reporter.log("Correct IED is loaded");								
									status = true;
									if(ieds==(expIedList.size()-1))
									{
									break outerloop;	
									}else {
									break;
									}
								}
								else {
									Reporter.log("Error: Correct IED is not loaded");	
									status = false;
								}
									
								}
							else
							{
								Reporter.log("Error: IED is not listed in the IED load table");
								status = false;
							}
							}
							}		
							} 							
							else {
								Reporter.log("Error: SCL file is not listed in file system table");	
								status = false;
					}
				}
				int count2 = i + 1;
				if (count2 <= count) {
					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
				}

			}
             return status;
	    }
	    
	 // This method is to check if file is available in file system table
	 		public static Boolean FileUploadwithAllParametersCheck(String file) throws Exception {
	 			WebDriverUtils.implicitlyWait();
	 			SCLFiles().click();					//Navigating to SCL Files table
	 			Boolean status = false;
	 			Browsers.driver.switchTo().frame("iframecontainer");
	 			String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
	 			int count = Integer.parseInt(pagination);
	 			outerloop: 
	 				for (int i = 1; i <= count; i++) {
	 				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
	 				int count1 = rows.size();
	 				for (int j = 1; j <= count1; j++) {
	 					String actual_file = Browsers.driver
	 							.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
	 				
	 					if (actual_file.equals(file)) {                             //Checking if file name is found in the table
	 						Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
							.click();
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[1]/a","smallWait").click();
							Browsers.driver.switchTo().activeElement();
	 						if((WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[2]","smallWait").getText().equals("IED Name")) && (WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[3]","smallWait").getText().equals("Access Point")) && (WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[4]","smallWait").getText().equals("Edition")))
	 						{
	 							status = true;
	 							WebDriverUtils.findElementByXpath("//*[@id=\"closebox\"]","smallWait").click();
	 							Reporter.log( file + " file loaded with IED Name,Access point and Edition");
	 						break outerloop;
	 					} else {
	 						status = false;
	 						WebDriverUtils.findElementByXpath("//*[@id=\"closebox\"]","smallWait").click();
	 						Reporter.log("Error : " + file + " file not loaded with IED Name,Access point and Edition");
	 					}
	 					}
	 					else
	 					{
	 						status = false;
	 						Reporter.log(file + " file not loaded to file system table");
	 					}
	 				}
	 				int count2 = i + 1;
	 				if (count2 <= count) {
	 					WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
	 				}
	 			}
	 			return status;
	 		}
	    
		 
	    	 // This method is to verify that user is able to load scl file with GOOSE control block=0,R-GOOSE block=0,SV block=0
		    public static Boolean fileLoadWithZeroMessages() throws Exception
		    {
		    WebDriverUtils.implicitlyWait();
	        Boolean status = null;
	        GooseMessages.clearDataInGSE();
	        Browsers.driver.switchTo().defaultContent();
	        //navigate to SCL Files page
	        SCLFiles().click();
	        Browsers.driver.switchTo().frame("iframecontainer");
	        //check if file already available
	        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("filewithzeromessages");
	        if (isFileAlreadyLoaded == true)
	        {
	        	Browsers.driver.switchTo().defaultContent();
	        	deleteFileInfilesystemTable("filewithzeromessages","icd");
	        }
	        Browsers.driver.switchTo().defaultContent();
	        SCLFiles().click();                               //Navigate to SCL files tab
			String filename1 = "filewithzeromessages.icd";
			List<Boolean> expMsgLoadList = Arrays.asList(false,false);
			List<Boolean> actMsgLoadList = sclFileLoadAndMessageLoadCheck(filename1);
			Browsers.driver.switchTo().defaultContent();
			Boolean parameterStatus = FileUploadwithAllParametersCheck("filewithzeromessages");
			if(actMsgLoadList.equals(expMsgLoadList) && parameterStatus.equals(true))
             {
            	 status = true;
             }
             else
             {
            	 status=false;
             }
             return status;
	    }
		    
		 // This method is to verify sisco error while loading file.
		    public static Boolean siscoErrorfileload() throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		        Boolean status = null;
		        SCLFiles().click();
		        Browsers.driver.switchTo().frame("iframecontainer");
		        //check if file already available
		        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("siscoerror");
		        if (isFileAlreadyLoaded == true)
		        {
		        	Browsers.driver.switchTo().defaultContent();
		        	deleteFileInfilesystemTable("siscoerror","scd");
		        }
		        Browsers.driver.switchTo().defaultContent();
		        SCLFiles().click();                               //Navigate to SCL files tab
				Browsers.driver.switchTo().frame("iframecontainer");
				String filename1 = "siscoerror.scd";
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							//submit btn click
							Submit().click();
							selectAllIEDs().click();
							loadBtn().click();									//Clicking on Load IEDs button
							Thread.sleep(2000);
							if(WebDriverUtils.findElementByXpath("//*[@id=\"retMsg\"]/span","smallWait").getText().contains("Following error occured while processing scl file :'Unable to find data elements in SCL tree structure'."))    //Checking for the sisco error message
							{
								status = true;
								Reporter.log("SISCO error is displayed properly");
							}
							else
							{
								status = false;
								Reporter.log("SISCO error is not displayed properly");
							}
							ClosebtnInLoadStatus().click();						//Clicking on Close button of successful load pop up
							}
						else
						{
							Reporter.log("SCL file is not available for file upload");
							status = false;
						}
					}
					else
					{
						Reporter.log("ImportProject.exe is not available for file upload");
						status = false;
					}
					}
					catch(Exception e)
			        {
			        	Reporter.log("exception occured : "+e);
			        }
				
	             return status;
		    }
		    
		 // This method is to verify that after the successful loading of scl file with only GSE messages, details like IEDname, Access point and Edition are listed.
		    public static Boolean sclFileloadWithOnlyGSEMessages() throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		        Boolean status = null;
		        GooseMessages.clearDataInGSE();
		        Browsers.driver.switchTo().defaultContent();
		        SCLFiles().click();
		        Browsers.driver.switchTo().frame("iframecontainer");
		        //check if file already available
		        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("BCU_402T");
		        if (isFileAlreadyLoaded == true)
		        {
		        	Browsers.driver.switchTo().defaultContent();
		        	deleteFileInfilesystemTable("BCU_402T","scd");
		        }
		       
				String filename1 = "BCU_402T.scd";
				List<Boolean> expMsgLoadList = Arrays.asList(true,false);
				List<Boolean> actMsgLoadList = sclFileLoadAndMessageLoadCheck(filename1);
				Browsers.driver.switchTo().defaultContent();
				Boolean parameterStatus = FileUploadwithAllParametersCheck("BCU_402T");
				if(actMsgLoadList.equals(expMsgLoadList) && parameterStatus.equals(true))
	             {
	            	 status = true;
	             }
	             else
	             {
	            	 status=false;
	             }
	             return status;
		    }
		    
		    // This method is to verify that after the successful loading of scl file with only SV messages, details like IEDname, Access point and Edition are listed.
		    public static Boolean sclFileloadWithOnlySVMessages() throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		        Boolean status = null;
		        Browsers.driver.switchTo().defaultContent();		       
				GooseMessages.SVMessagesTab().click();
				Browsers.driver.switchTo().frame("iframecontainer");
				GooseMessages.settingsInSV().click();
				GooseMessages.clearDataBtnInGSE().click();
				Browsers.driver.switchTo().activeElement();
				WebDriverUtils.findElementById("deleteHref","smallWait").click();
		        Browsers.driver.switchTo().defaultContent();
		        SCLFiles().click();
		        Browsers.driver.switchTo().frame("iframecontainer");
		        //check if file already available
		        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("filewithsvmessages");
		        if (isFileAlreadyLoaded == true)
		        {
		        	Browsers.driver.switchTo().defaultContent();
		        	deleteFileInfilesystemTable("filewithsvmessages","icd");
		        }
		       
				String filename1 = "filewithsvmessages.icd";
				List<Boolean> expMsgLoadList = Arrays.asList(false,true);
				List<Boolean> actMsgLoadList = sclFileLoadAndMessageLoadCheck(filename1);
				Browsers.driver.switchTo().defaultContent();
				Boolean parameterStatus = FileUploadwithAllParametersCheck("filewithsvmessages");
				if(actMsgLoadList.equals(expMsgLoadList) && parameterStatus.equals(true))
	             {
	            	 status = true;
	             }
	             else
	             {
	            	 status=false;
	             }
	             return status;
		    }
		    
		    
		    // This method is to verify that after the successful loading of scl file with GSE and SV messages, details like IEDname, Access point and Edition are listed.
		    public static Boolean sclFileloadWithGSEAndSVMessages() throws Exception
		    {
		    	WebDriverUtils.implicitlyWait();
		        Boolean status = null;		        
		        Browsers.driver.switchTo().defaultContent();
		        GooseMessages.clearDataInGSE();
		        Browsers.driver.switchTo().defaultContent();
		        WebDriverUtils.findElementByXpath("//*[@class=\"navbar navbar-static-top\"]//a[@title='Back']","smallWait").click();
		        GooseMessages.clearDataInSV();
		        Browsers.driver.switchTo().defaultContent();
		        //navigate to SCL Files page
		        SCLFiles().click();
		        Browsers.driver.switchTo().frame("iframecontainer");
		        //check if file already available
		        Boolean isFileAlreadyLoaded = CheckFileInFileSystem("filewithgseandsvmessages");
		        if (isFileAlreadyLoaded == true)
		        {
		        	Browsers.driver.switchTo().defaultContent();
		        	deleteFileInfilesystemTable("filewithgseandsvmessages","cid");
		        }
		        
				String filename1 = "filewithgseandsvmessages.cid";
				List<Boolean> expMsgLoadList = Arrays.asList(true,true);
				List<Boolean> actMsgLoadList = sclFileLoadAndMessageLoadCheck(filename1);
				Browsers.driver.switchTo().defaultContent();
				Boolean parameterStatus = FileUploadwithAllParametersCheck("filewithgseandsvmessages");
				
				
				if(actMsgLoadList.equals(expMsgLoadList) && parameterStatus.equals(true))
	             {
	            	 status = true;
	            	 Reporter.log("Details like IEDname, Access point and Edition are listed after the successful loading of scl file with GSE and SV messages");
	             }
	             else
	             {
	            	 status=false;
	            	 Reporter.log("Error : Details like IEDname, Access point and Edition not listed after the successful loading of scl file with GSE and SV messages");
	             }
	             return status;
		    }
		
		   
		    
		   
		  
		    

		
			 // This method is to verify if X button is displayed in load IED success page and pop up is closed on click of close button
			public static boolean XBtnInIEDLoadSuccessPageCheck(String filename1) throws Exception {
				WebDriverUtils.implicitlyWait();
				Boolean closeBtnstatus = null;
				Boolean popUpClosestatus = null;
				SCLFiles().click();                               //Navigate to SCL files tab
				Browsers.driver.switchTo().frame("iframecontainer");
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							ChooseFile().sendKeys(absolutePath3);
							//submit btn click
							Submit().click();
							Thread.sleep(2000);
							//Click on Ok button if modal window with title "File Exists" appears
							String modalWindowTitle = (Browsers.driver.findElement(By.xpath("//*[@id=\"confirmModal\"]//*[@id=\"modalLabel\"]")).getText());
							if (modalWindowTitle.contains("File Exists")) {
								Thread.sleep(2000);
								replaceFileYes().click();
							}
							selectAllIEDs().click();							// Selecting Select All IEDs Check box
							loadBtn().click();									//Clicking on Load IEDs button
							Thread.sleep(2000);
							if(WebDriverUtils.findElementById("modal_showmod_close_btn","smallWait").isDisplayed())			//Checking if close button is available
							{
								Reporter.log("X button is displayed properly");
								closeBtnstatus = true;
							}
							else
							{
								Reporter.log("Error: X button is not displayed properly");
								closeBtnstatus = false;
							}
							WebDriverUtils.findElementByXpath("//*[@id=\"modal_showmod_close_btn\"]/span","smallWait").click();						//Clicking on Close button of successful load pop up
							if(Browsers.driver.findElement(By.id("modalLabel")).isDisplayed())  //Checking if pop up is closed on click of close button
							{
								Reporter.log("Error: IED Load popup is not closed sucessfully on click of close button");
								popUpClosestatus = false;
							}
							else
							{
								Reporter.log("IED Load popup closed sucessfully on click of close button");
								popUpClosestatus = true;
							}
						}
						else
						{
							Reporter.log("SCL file is not available for file upload");  //Returning false if scl file is not available
							}
					}
					else
					{
						Reporter.log("ImportProject.exe is not available for file upload"); //Returning false if upload exe is not available
						}
					}
					catch(Exception e)
			        {
			        	Reporter.log("exception occured : "+e);
					}
				
				Boolean fileAvailableStatus = CheckFileInFileSystem("BCU_402T");
					
					
				if((closeBtnstatus.equals(true)) && (popUpClosestatus.equals(true)) && (fileAvailableStatus.equals(true)))  //Returning true if Close button is displayed and pop up is closed on click of close button 
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			
			
			
			 // This method is to verify if IED is loaded or not on click of close button
			public static boolean IEDLoadstatusCheck(String filename1) throws Exception {
				WebDriverUtils.implicitlyWait();
				Boolean status = null;
				String filename = "BCU_402T";
				SCLFiles().click();                               //Navigate to SCL files tab
				Browsers.driver.switchTo().frame("iframecontainer");
				File file1 = new File(filename1);
				String absolutePath1 = file1.getAbsolutePath();
				absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
				String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
				String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
				try {
					if( isFileAvailable(absolutePath2, "ImportProject.exe"))
					{
						if( isFileAvailable(absolutePath2, filename1))
						{
							//click on menu in SCL files
							SCLFilesSettings().click();
							//upload btn click
							Upload().click();
							//select file for loading
							//ChooseFile().click();
							ChooseFile().sendKeys(absolutePath3);
							//load the file through file explorer
							Submit().click();
							if (Browsers.driver.findElement(By.id("modalLabel")).getText().contains("File Exists")) {    //Clicking on Replace file option in case pop up appears
								Thread.sleep(2000);
								replaceFileYes().click();
							}
							WebDriverUtils.findElementById("closebox","smallWait").click();
						}
						else
						{
							Reporter.log("SCL file is not available for file upload");  //Returning false if scl file is not available
							status = false;
						}
					}
					else
					{
						Reporter.log("ImportProject.exe is not available for file upload"); //Returning false if upload exe is not available
						status = false;
					}
					}
					catch(Exception e)
			        {
			        	Reporter.log("exception occured : "+e);
					}
				
				
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");		//Checking no of pages in the table
				int count = Integer.parseInt(pagination);

					outerloop: 
					for (int i = 1; i <= count; i++) {
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) {
						String actual_file = Browsers.driver
								.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[2]")).getText();		//Getting file name from each row
					
						if (actual_file.equals(filename)) {                             //Checking if file name is found in the table
							//*[@id="filesystemtable"]/tbody/tr[1]/td[7]/div/a/img
							Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img")).click();	
							WebDriverUtils.findElementByXpath("//*[@class=\"loadedIEDInfo\"]/i","smallWait").click();
							Browsers.driver.switchTo().activeElement();
							if(WebDriverUtils.findElementByXpath("//*[@id=\"iedprogressTable\"]/tbody/tr/td[3]/i","smallWait").getAttribute("class").contains("red"))
							{
								Reporter.log("IED is loaded successfully");
							status = true;
							break outerloop;
							}
							else
							{
								Reporter.log("IED is not loaded successfully");
								status = false;
							}
						} else {
							Reporter.log("File is not available in file system table");
							status = false;
						}
					}
					int count2 = i + 1;
					if (count2 <= count) {
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
					}
				}
		 		return status;
			}
			
			
			// This method is to verify elements of Rename popup
			public static Boolean renamePopUpElementsCheck() throws Exception
			{
				WebDriverUtils.implicitlyWait();
				Boolean status = null;
				Boolean renameTextbox = null;
				Boolean renameTextboxlength = null;
				Boolean closeBtn = null;
				Boolean continueBtn = null;
				Boolean xBtn = null;
				Boolean cancelStatus = null;
				Boolean renameStatus = null;
				//Navigate to SCL files page
				SCLFiles().click();
				//check if file already available
				System.out.println("size "+Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr")).size());
				if (Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr")).size()==0)
				{
					String filename1 = "Ch1Line1.CID";
					sclFileLoad(filename1);
				}
				
				String actual_filename = Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[1]/td[2]")).getText();
				Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/a/img")).click();
				WebDriverUtils.findElementByClass("renameSclFile", "smallWait").click();
				Thread.sleep(3000);	
				if(WebDriverUtils.findElementById("fileRename","smallWait").isDisplayed())   //Checking if rename textbox is displayed
				{
					renameTextbox = true;
					Reporter.log("Rename textbox is displayed in Rename popup");
				}
				else
				{
					renameTextbox = false;
					Reporter.log("Rename textbox is not displayed in Rename popup");
				}
				if(WebDriverUtils.findElementByXpath("//*[@id=\"renameSclForm\"]/div[2]/button[1]","smallWait").isDisplayed())   //Checking if continue btn is displayed
				{
					continueBtn = true;
					Reporter.log("Continue button is displayed in Rename popup");
				}
				else
				{
					continueBtn = false;
					Reporter.log("Continue button is not displayed in Rename popup");
				}
				
				if(WebDriverUtils.findElementById("mod_rename_cancel","smallWait").isDisplayed())   //Checking if Close btn is displayed
				{
					closeBtn = true;
					Reporter.log("Close button is displayed in Rename popup");
				}
				else
				{
					closeBtn = false;
					Reporter.log("Close button is not displayed in Rename popup");
				}
				
				if(WebDriverUtils.findElementById("modal_ren_close_btn","smallWait").isDisplayed())   //Checking if X btn is displayed
				{
					xBtn = true;
					Reporter.log("X button is displayed in Rename popup");
				}
				else
				{
					xBtn = false;
					Reporter.log("X button is not displayed in Rename popup");
				}
				
				if(WebDriverUtils.findElementById("fileRename","smallWait").getAttribute("maxlength").equals("200"))   //Checking if rename textbox is accepting 20 characters or not
				{
					renameTextboxlength = true;
					Reporter.log("Rename textbox is accepting 200 characters only in Rename popup");
				}
				else
				{
					renameTextboxlength = false;
					Reporter.log("Rename textbox is accepting more than 200 characters in Rename popup");
				}
				
				WebDriverUtils.findElementById("fileRename","smallWait").sendKeys("TC_20");    //Renaming the file 
				WebDriverUtils.findElementById("mod_rename_cancel","smallWait").click();   //Click on Close button
				if(Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[1]/td[2]")).getText().equals(actual_filename))
				{
					Reporter.log("Filename did not change on cancelling the rename");
					cancelStatus = true;
				}
				else
				{
					Reporter.log("Error: Filename changed on cancelling the rename");
					cancelStatus = false;
					
				}
			
				Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[1]/td[7]/div/a/img")).click();
				WebDriverUtils.findElementByClass("renameSclFile", "smallWait").click();
				WebDriverUtils.findElementById("fileRename","smallWait").sendKeys("TC_20");    //Renaming the file 
				Thread.sleep(2000);
				WebDriverUtils.findElementById("//*[@id=\\\"renameSclForm\\\"]/div[2]/button[1]","smallWait").click();   //Click on Ok button
				if(Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[1]/td[2]")).getText().equals(actual_filename))
				{
					Reporter.log("Error: Filename changed on cancelling the rename");
					renameStatus = false;
				}
				else
				{
					Reporter.log("Filename did not change on cancelling the rename");
					renameStatus = true;
				}
				
				
				
			/*	//verifying load successful
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
				int count = Integer.parseInt(pagination);
				outerloop: for (int i = 1; i <= count; i++)
				{
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) 
					{
						//check if load successful for Ch1Line1.ICD
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals("Ch1Line1"))
						{
							Thread.sleep(2000);
							//click on load ied btn against the file
							 Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
								.click();
								WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[2]/a","smallWait").click();
							Thread.sleep(3000);	
							if(WebDriverUtils.findElementById("fileRename","smallWait").isDisplayed())   //Checking if rename textbox is displayed
							{
								renameTextbox = true;
								Reporter.log("Rename textbox is displayed in Rename popup");
							}
							else
							{
								renameTextbox = false;
								Reporter.log("Rename textbox is not displayed in Rename popup");
							}
							if(WebDriverUtils.findElementByXpath("//*[@id=\"renameSclForm\"]/div[2]/button[1]","smallWait").isDisplayed())   //Checking if continue btn is displayed
							{
								continueBtn = true;
								Reporter.log("Continue button is displayed in Rename popup");
							}
							else
							{
								continueBtn = false;
								Reporter.log("Continue button is not displayed in Rename popup");
							}
							
							if(WebDriverUtils.findElementById("mod_rename_cancel","smallWait").isDisplayed())   //Checking if Close btn is displayed
							{
								closeBtn = true;
								Reporter.log("Close button is displayed in Rename popup");
							}
							else
							{
								closeBtn = false;
								Reporter.log("Close button is not displayed in Rename popup");
							}
							
							if(WebDriverUtils.findElementById("fileRename","smallWait").getAttribute("maxlength").equals("200"))   //Checking if rename textbox is accepting 20 characters or not
							{
								renameTextboxlength = true;
								Reporter.log("Rename textbox is accepting 200 characters only in Rename popup");
							}
							else
							{
								renameTextboxlength = false;
								Reporter.log("Rename textbox is accepting more than 200 characters in Rename popup");
							}
							break outerloop;
						}
					}
					int count2 = i + 1;
					if (count2 <= count) 
					{
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
		 		*/	
				
				if((renameTextbox.equals(true)) && (renameTextboxlength.equals(true))  && (closeBtn.equals(true))  && (continueBtn.equals(true)) && (xBtn.equals(true)) && (cancelStatus.equals(true)) && (renameStatus.equals(true)))
				{
					status = true;
				}
				else
				{
					status = false;
				}
				return status;
			} 
			
			public static void deleteAllSCLFiles() throws Exception
			{
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();					//Navigating to SCL Files table
				Browsers.driver.switchTo().frame("iframecontainer");
				WebElement fileSystemTable = WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody", "smallWait");
				List<WebElement> files = fileSystemTable.findElements(By.tagName("tr"));
				if(files.size() != 0)
				{
					//click select all checkbox
					selectAllFiles().click();
					//click delete selected in main dropdown menu
					SCLFilesSettings().click();			//clicking on settings button
					deleteSelectedBtn().click();	//Click on Delete All button
					Browsers.driver.switchTo().activeElement();
					WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();  // Click on Yes button of delete window
					Thread.sleep(2000);
				}
				Reporter.log("Deleted all SCL Files.");
			}
			
			public static Boolean emptyRecords() throws Exception
			{
				Boolean status = null;
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();					//Navigating to SCL Files table
				Browsers.driver.switchTo().frame("iframecontainer");
				WebElement fileSystemTable = WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody", "smallWait");
				List<WebElement> files = fileSystemTable.findElements(By.tagName("tr"));
				if(files.size() == 0)
				{
					status = true;
					Reporter.log("File system table is empty.");
				}
				else
				{
					status = false;
					Reporter.log("Error : File system table is empty.");
				}
				return status;
			}
			
			public static int numberOfSCLFileEntries() throws Exception
			{
				int numberOfEntries = 0;
				Browsers.driver.switchTo().defaultContent();
				SCLFiles().click();					//Navigating to SCL Files table
				Browsers.driver.switchTo().frame("iframecontainer");
				WebElement fileSystemTable = WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody", "smallWait");
				List<WebElement> files = fileSystemTable.findElements(By.tagName("tr"));
				numberOfEntries = files.size();
				Reporter.log("File system table contains " + numberOfEntries + " entries.");
				return numberOfEntries;
			}
			// This method is to verify if warning is displaying on submitting without renaming the file
						public static Boolean warningOnSubmitWithoutRename() throws Exception
						{
							WebDriverUtils.implicitlyWait();
							Boolean warningMessage = null;
							
							//Navigate to SCL files page
							SCLFiles().click();
							//check if file already available
							Boolean isFileAlreadyLoaded = CheckFileInFileSystem("Ch1Line1");
							if (isFileAlreadyLoaded == false)
							{
								String filename1 = "Ch1Line1.CID";
								sclFileLoad(filename1);
							}
							
							//verifying load successful
							String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
							int count = Integer.parseInt(pagination);
							outerloop: for (int i = 1; i <= count; i++)
							{
								List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
								int count1 = rows.size();
								for (int j = 1; j <= count1; j++) 
								{
									//check if load successful for Ch1Line1.ICD
									String actual_file = Browsers.driver
											.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
									if (actual_file.equals("Ch1Line1"))
									{
										Thread.sleep(2000);
										//click on load ied btn against the file
										 Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
											.click();
											WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[2]/a","smallWait").click();
										Thread.sleep(3000);	
										if(WebDriverUtils.findElementById("fileRename","smallWait").getAttribute("validationMessage").contentEquals("Please fill out this field."))   //Checking if rename textbox is displayed
										{
											warningMessage= true;
											Reporter.log("Rename textbox is displayed in Rename popup");
										}
										else
										{
											warningMessage = false;
											Reporter.log("Rename textbox is not displayed in Rename popup");
										}
										
										break outerloop;
									}
								}
								int count2 = i + 1;
								if (count2 <= count) 
								{
									WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
									}
							}
					 		
							return warningMessage;
						} 
			
			// This method is to verify load IED popup is displayed on click of Load IED btn
			public static Boolean loadIEDPopUpCheck() throws Exception
			{
				WebDriverUtils.implicitlyWait();
				Boolean popupDisplayedStatus = null;
				//Navigate to SCL files page
				SCLFiles().click();
				Browsers.driver.switchTo().frame("iframecontainer");
				//check if file already available
				Boolean isFileAlreadyLoaded = CheckFileInFileSystem("Ch1Line1");
				if (isFileAlreadyLoaded == false)
				{
					String filename1 = "Ch1Line1.CID";
					sclFileLoad(filename1);
				}
				//verifying load successful
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");
				int count = Integer.parseInt(pagination);
				outerloop: for (int i = 1; i <= count; i++)
				{
					List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
					int count1 = rows.size();
					for (int j = 1; j <= count1; j++) 
					{
						//check if load successful for Ch1Line1.ICD
						String actual_file = Browsers.driver
								.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
						if (actual_file.equals("Ch1Line1"))
						{
							//click on load ied btn against the file
							 Browsers.driver.findElement(By.xpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/a/img"))
								.click();
								WebDriverUtils.findElementByXpath("//*[@id=\"filesystemtable\"]/tbody/tr[" + j + "]/td[7]/div/ul/li[1]/a","smallWait").click();
							Browsers.driver.switchTo().activeElement();
							Thread.sleep(3000);	
							if(WebDriverUtils.findElementById("loadListofIeds","smallWait").isDisplayed())   //Checking if load IED pop up is displayed
							{
								popupDisplayedStatus = true;
								Reporter.log("load IED pop up is displayed on click of Load IED btn");
							}
							else
							{
								popupDisplayedStatus = false;
								Reporter.log("Error: load IED pop up is not displayed on click of Load IED btn");
							}
							break outerloop;
						}
					}
					int count2 = i + 1;
					if (count2 <= count) 
					{
						WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
				}
		 	
				return popupDisplayedStatus;
			} 
			
		public static void deleteSCLFile(String filename) throws Exception
		{
			Boolean status = CheckFileInFileSystem(filename);   //Checking if files are present in table
			if (status.equals(true)) 
			{
				String pagination = Browsers.driver.findElement(By.id("totatlpages")).getAttribute("value");    //Selecting  files and deleting using delete All button in settings
				int count = Integer.parseInt(pagination);
				outerloop: 
					for (int i = 1; i <= count; i++) 
					{
						List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
						int count1 = rows.size();
						for (int j = 1; j <= count1; j++) 
						{
							String actual_file = Browsers.driver
									.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[2]")).getText();
							if (actual_file.equals(filename)) 
							{					//Entering the loop when file is found
								Browsers.driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr[" + j + "]/td[1]/input"))
								.click();
								SCLFilesSettings().click();      //Click on settings button
								deleteSelectedBtn().click();	//Click on Delete All button
								Browsers.driver.switchTo().activeElement();
								WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button","smallWait").click();  // Click on Yes button of delete window
								Browsers.driver.switchTo().activeElement();
								break outerloop;
							}
						}
						int count2 = i + 1;
						if (count2 <= count) 
						{
							WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a","smallWait").click();
						}
					}
			}
			
		}	
}
