package com.kalkitech.doble.testcases.SCLFiles;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_1;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SCLFileLoadingTest_1 {
	
	@BeforeClass
	public void beforeClass() throws Exception
	{
		Reporter.log("Starting execution of SCL Files loading tests");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		//Browsers.driver.switchTo().defaultContent();
	}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*	//SL_09 & 11-Verify that user can delete files  from web server file system  and delete alert msg check
@Test()
public void deleteFileInfilesystemTableTest() throws Exception
{
System.out.println("SL_09,11 : deleteFileInfilesystemTableTest");
Boolean status = SCLFileLoading.deleteFileInfilesystemTable("BCU_402T","scd");
Reporter.log("SL_09,11 : deleteFileInfilesystemTableTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_10-Checking whether file is retained or not on click of Cancel Button
@Test()
public void canceldeleteFileInFileSystemTableTest() throws Exception
{
System.out.println("SL_10 : canceldeleteFileInFileSystemTableTest");
Boolean status = SCLFileLoading.canceldeleteFileInFileSystemTable();
Reporter.log("SL_10 : canceldeleteFileInFileSystemTableTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_12-Checking whether file is retained or not on click of Close Button
@Test()
public void canceldeleteFileInFileSystemTableUsingCloseTest() throws Exception
{
System.out.println("SL_12 : canceldeleteFileInFileSystemTableUsingCloseTest");
Boolean status = SCLFileLoading.canceldeleteFileInFileSystemTableUsingClose();
Reporter.log("SL_12 : canceldeleteFileInFileSystemTableUsingCloseTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}






//This method is to verify if warning is displaying on submitting without renaming the file
@Test()
public void warningOnSubmitWithoutRenameTest() throws Exception
{
System.out.println("warningOnSubmitWithoutRenameTest");
Boolean status = SCLFileLoading.warningOnSubmitWithoutRename();
Reporter.log("warningOnSubmitWithoutRenameTest " + "status : "+ status.toString());	
Assert.assertTrue(status);
}



//SL_054, SL_055
@Test()
public void selectAllClickInSelectIEDsPopUpTest() throws Exception
{
System.out.println("SL_054, SL_055 : selectAllClickInSelectIEDsPopUpTest");
Boolean status = SCLFileLoading.selectAllClickInSelectIEDsPopUp();
Reporter.log("SL_054, SL_055 : selectAllClickInSelectIEDsPopUpTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
} 

//SL_057
@Test()
public void singleIEDloadTest() throws Exception
{
System.out.println("SL_057 : singleIEDloadTest");
Boolean status = SCLFileLoading.singleIEDload();
Reporter.log("SL_057 : singleIEDloadTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_057,58
@Test()
public void multipleIEDloadTest() throws Exception
{
System.out.println("SL_057,58 : multipleIEDloadTest");
Boolean status = SCLFileLoading.multipleIEDload();
Reporter.log("SL_057,58 : multipleIEDloadTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_056
@Test()
public void loadIEDPopUpCheckTest() throws Exception
{
System.out.println("SL_056 : loadIEDPopUpCheckTest");
Boolean status = SCLFileLoading.loadIEDPopUpCheck();
Reporter.log("SL_056 : loadIEDPopUpCheckTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_057,58
@Test()
public void closeBtnClickInIEDsStatusInfoPopUpTest() throws Exception
{
System.out.println("SL_057,58 : closeBtnClickInIEDsStatusInfoPopUpTest");
Boolean status = SCLFileLoading.closeBtnClickInIEDsStatusInfoPopUp();
Reporter.log("SL_057,58 : closeBtnClickInIEDsStatusInfoPopUpTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_059,62
@Test()
public void renamePopUpElementsCheckTest() throws Exception
{
System.out.println("SL_059,62 : renamePopUpElementsCheckTest");
Boolean status = SCLFileLoading.renamePopUpElementsCheck();
Reporter.log("SL_059,062 : renamePopUpElementsCheckTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_060-Verify user can rename the file
@Test()
public void cancelrenameFileInFilesystemTableTest() throws Exception
{
System.out.println("SL_060 : cancelrenameFileInFilesystemTableTest");
Boolean status = SCLFileLoading.cancelrenameFileInFilesystemTable();
Reporter.log("SL_060 : cancelrenameFileInFilesystemTableTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_061-Verify user can rename the file
@Test()
public void renameFileInFileSystemTableTest() throws Exception
{
System.out.println("SL_061 : renameFileInFileSystemTableTest");
Boolean status = SCLFileLoading.renameFileInFilesystemTable();
Reporter.log("SL_061 : renameFileInFileSystemTableTest " + "status : "
+ status.toString());	
Assert.assertTrue(status);
}

//SL_064-Verify that user can delete multiple files  from web server file system 
@Test()
public void removeFileUsingDeleteBtnFileSystemTest() throws Exception
{
System.out.println("SL_064 : removeFileUsingDeleteBtnFileSystemTest");
SCLFileLoading.removefileUsingDeleteAllFileSystem();
Boolean status = SCLFileLoading.CheckFileInFileSystem("BCU_402T");
Reporter.log("SL_064 : removeFileUsingDeleteBtnFileSystemTest " + "status : "
+ status.toString());	
Assert.assertFalse(status);
}


*/
	@BeforeMethod
	public void beforeTest() throws Exception
	{
		Reporter.log("test start");
		Browsers.driver.switchTo().defaultContent();
		
	}

	
			//SL_01
			@Test()
			public void UIElementsCheckTest() throws Exception
			{
				System.out.println("SL_01 : UIElementsCheckTest");
				Boolean status = SCLFileLoading_1.UIElementsCheck();
				Reporter.log("SL_01 : UIElementsCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
					//SL_02
			@Test()
			public void settingsElementsCheckTest() throws Exception
			{
				System.out.println("SL_02 : settingsElementsCheckTest");
				Boolean status = SCLFileLoading_1.settingsElementsCheck();
				Reporter.log("SL_02 : settingsElementsCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
				//SL_03,04-This method is to verify is search functionality  is working properly in files system tab
			@Test()
			public void searchFunctionFileSystemTest() throws Exception
			{
					System.out.println("SL_03,04 : searchFunctionFileSystemTest");
					Boolean status = SCLFileLoading_1.searchFunctionFileSystem();
					Reporter.log("SL_03,04 : searchFunctionFileSystemTest " + "status : "+ status.toString());	
					Assert.assertTrue(status);
			}
		
			//SL_05
			@Test()
			public void searchFunctionFileSystemWithRandomcharacterSearchTest() throws Exception
			{
				System.out.println("SL_05 : searchFunctionFileSystemWithRandomcharacterSearchTest");
				Boolean status = SCLFileLoading_1.searchFunctionFileSystemWithRandomcharacterSearch();
				Reporter.log("SL_05 : searchFunctionFileSystemWithRandomcharacterSearchTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_07,08
			@Test()
			public void deleteSelectedClickWithoutSelectingFileTest() throws Exception
			{
				System.out.println("SL_07,08 : deleteSelectedClickWithoutSelectingFileTest");
				Boolean status = SCLFileLoading_1.deleteSelectedClickWithoutSelectingFile();
				Reporter.log("SL_07,08 : deleteSelectedClickWithoutSelectingFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_09 & 11-Verify that user can delete files  from web server file system  and delete alert msg check
			@Test()
			public void deleteFileInfilesystemTableTest() throws Exception
			{
				System.out.println("SL_09,11 : deleteFileInfilesystemTableTest");
				Boolean status = SCLFileLoading_1.deleteFileInfilesystemTable("BCU_402T","scd");
				Reporter.log("SL_09,11 : deleteFileInfilesystemTableTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_10-Checking whether file is retained or not on click of Cancel Button
			@Test()
			public void canceldeleteFileInFileSystemTableTest() throws Exception
			{
				System.out.println("SL_10 : canceldeleteFileInFileSystemTableTest");
				Boolean status = SCLFileLoading_1.canceldeleteFileInFileSystemTable();
				Reporter.log("SL_10 : canceldeleteFileInFileSystemTableTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_12-Checking whether file is retained or not on click of Close Button
			@Test()
			public void canceldeleteFileInFileSystemTableUsingCloseTest() throws Exception
			{
				System.out.println("SL_12 : canceldeleteFileInFileSystemTableUsingCloseTest");
				Boolean status = SCLFileLoading_1.canceldeleteFileInFileSystemTableUsingClose();
				Reporter.log("SL_12 : canceldeleteFileInFileSystemTableUsingCloseTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			
				//SL_013-Verify that user can delete all files  from  file system 
			@Test()
			public void deleteAllFileInFilesystemTableTest() throws Exception
			{
				System.out.println("SL_13 : deleteAllFileInFilesystemTableTest");
				Boolean status = SCLFileLoading_1.deleteAllFileInFilesystemTable();
				Reporter.log("SL_13 : deleteAllFileInFilesystemTableTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			
			//SL_-Verify that user can delete multiple files  from web server file system 
			@Test()
			public void removeFileUsingDeleteAllFileSystemTest() throws Exception
			{
				System.out.println("SL_12 : removeFileUsingDeleteAllFileSystemTest");
				SCLFileLoading_1.removefileUsingDeleteAllFileSystem();
				Boolean status = SCLFileLoading_1.CheckFileInFileSystem("BCU_402T");
				Reporter.log("SL_12 : removeFileUsingDeleteAllFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertFalse(status);
			}
			
				//SL_014-Verify that if upload pop up is displayed on click of Upload button and all file type check boxes are enabled
			@Test()
			public void uploadPopUpAndElementsCheckTest() throws Exception
			{
				System.out.println("SL_14 : uploadPopUpAndElementsCheckTest");
				Boolean status = SCLFileLoading_1.uploadPopUpAndElementsCheck();
				Reporter.log("SL_14 : uploadPopUpAndElementsCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
				//SL_015-// This method is to verify if scl file loading is working properly
			@Test()
			public void IEDLoadSuccessMsgCheckTest() throws Exception
			{
				System.out.println("SL_15 : IEDLoadSuccessMsgTest");
				Boolean status = SCLFileLoading_1.IEDLoadSuccessMsgCheck("BCU_402T.scd");
				Reporter.log("SL_15 : IEDLoadSuccessMsgCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
				//SL_016-This method is to verify if Close button is displayed and pop up is closed on click of close button
			@Test()
			public void closeBtnInIEDLoadSuccessPageCheckTest() throws Exception
			{
				System.out.println("SL_16 : closeBtnInIEDLoadSuccessPageCheckTest");
				Boolean status = SCLFileLoading_1.closeBtnInIEDLoadSuccessPageCheck("BCU_402T.scd");
				Reporter.log("SL_16 : closeBtnInIEDLoadSuccessPageCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}					
				//SL_017-This method is to verify if X button is displayed and pop up is closed on click of close button
			@Test()
			public void XBtnInIEDLoadSuccessPageCheckTest() throws Exception
			{
				System.out.println("SL_17 : XBtnInIEDLoadSuccessPageCheckTest");
				Boolean status = SCLFileLoading_1.XBtnInIEDLoadSuccessPageCheck("BCU_402T.scd");
				Reporter.log("SL_17 : XBtnInIEDLoadSuccessPageCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
				//SL_18,20-This method is to verify if Select IEDs pop up displays on click of Submit button in upload page
			@Test()
			public void IEDLoadPageElementsCheckTest() throws Exception
			{
				System.out.println("SL_18,20 : IEDLoadPageElementsCheckTest");
				Boolean status = SCLFileLoading_1.IEDLoadPageElementsCheck("BCU_402T.scd");
				Reporter.log("SL_18,20 : IEDLoadPageElementsCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_021-This method is to verify if IED is loaded or not on click of close button
			@Test()
			public void IEDLoadstatusCheckTest() throws Exception
			{
				System.out.println("SL_21 : IEDLoadstatusCheckTest");
				Boolean status = SCLFileLoading_1.IEDLoadstatusCheck("BCU_402T.scd");
				Reporter.log("SL_21 : IEDLoadstatusCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_022-027- This method is to verify if scl file loading is working properly
			@Test()
			public void sclFileLoadTest() throws Exception
			{
				System.out.println("SL_022-027 : sclFileLoadTest");
				List<Boolean> actual_status = new ArrayList<Boolean>();
				List<Boolean> expected_status =Arrays.asList(true,true,true,true,true);
				SCLFileLoading_1.deleteAllFileInFilesystemTable();                //Deleting all existing files
				SCLFileLoading_1.sclFileLoad("Ed2TestIED.icd");					//Loading ICD file
				SCLFileLoading_1.sclFileLoad("Controller1_Outbound_SCL_NoProdIP.IID");  //Loading IID file
				SCLFileLoading_1.sclFileLoad("BCU_402T.scd");							//Loading SCD file
				SCLFileLoading_1.sclFileLoad("411L.CID");							//Loading CID file
				SCLFileLoading_1.sclFileLoad("1.sed");							//Loading SED file
			//	SCLFileLoading.sclFileLoad("IOP 2017 SLD R2.ssd");				//Loading SSD file
				Boolean actual_status1 = SCLFileLoading_1.CheckFileInFileSystem("Ed2TestIED");   //Checking ICD file is available or not
				Boolean actual_status2 = SCLFileLoading_1.CheckFileInFileSystem("Controller1_Outbound_SCL_NoProdIP"); //Checking IID file is available or not
				Boolean actual_status3 = SCLFileLoading_1.CheckFileInFileSystem("BCU_402T");   //Checking SCD file is available or not
				Boolean actual_status4 = SCLFileLoading_1.CheckFileInFileSystem("411L");			//Checking CID file is available or not
				Boolean actual_status5 = SCLFileLoading_1.CheckFileInFileSystem("1");      //Checking SED file is available or not
			//	Boolean actual_status6 = SCLFileLoading.CheckFileInFileSystem("IOP 2017 SLD R2");    //Checking SSD file is available or not
				actual_status.add(actual_status1);
				actual_status.add(actual_status2);
				actual_status.add(actual_status3);
				actual_status.add(actual_status4);
				actual_status.add(actual_status5);
			//	actual_status.add(actual_status6);
				Reporter.log("SL_022-027 : sclFileLoadTest " + "status : "	+ actual_status.toString());
				Assert.assertEquals(actual_status, expected_status);
			}

			
			//This method is to verify if warning is displaying on submitting without renaming the file
			@Test()
			public void warningOnSubmitWithoutRenameTest() throws Exception
			{
				System.out.println("warningOnSubmitWithoutRenameTest");
				Boolean status = SCLFileLoading_1.warningOnSubmitWithoutRename();
				Reporter.log("warningOnSubmitWithoutRenameTest " + "status : "+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_027-This method is to verify if extensions are available in upload screen
			@Test()
			public void extensionAvailableCheckTest() throws Exception
			{
				System.out.println("SL_27 : extensionAvailableCheckTest");
				Boolean status = SCLFileLoading_1.extensionAvailableCheck();
				Reporter.log("SL_27 : extensionAvailableCheckTest " + "status : "+ status.toString());	
				Assert.assertTrue(status);
			}
			
				//SL_032-This method is to verify if warning message is displaying on submit without uploading file
			@Test()
			public void warningMsgOnSubmitWithoutUploadTest() throws Exception
			{
				System.out.println("SL_32 : warningMsgOnSubmitWithoutUploadTest");
				Boolean status = SCLFileLoading_1.warningMsgOnSubmitWithoutUpload();
				Reporter.log("SL_32 : warningMsgOnSubmitWithoutUploadTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
			
			//SL_035-This method is to verify column names in filesystem table
			@Test()
			public void columnCheckInfilesystemTableTest() throws Exception
			{
				System.out.println("SL_35 : columnCheckInfilesystemTableTest");
				Boolean status = SCLFileLoading_1.columnCheckInfilesystemTable();
				Reporter.log("SL_35 : columnCheckInfilesystemTableTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
			
			//SL_036,37-If user clicks on yes button, check the old file is replaced by new one
			@Test()
			public void replaceDuplicateFileUploadTest() throws Exception
			{
				System.out.println("SL_36,37 : replaceDuplicateFileUploadTest");
				Boolean status = SCLFileLoading_1.replaceDuplicateFileUpload();
				Reporter.log("SL_36,37 : replaceDuplicateFileUploadTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
				//SL_038-If user clicks on no button, file loading gets cancelled
			@Test()
			public void cancelReplaceDuplicateFileUploadTest() throws Exception
			{
				System.out.println("SL_38 : cancelReplaceDuplicateFileUploadTest");
				Boolean status = SCLFileLoading_1.cancelReplaceDuplicateFileUpload();
				Reporter.log("SL_38 : cancelReplaceDuplicateFileUploadTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
			
			//SL_039-Verify that user is able to check/uncheck "select all" check box of file lists
			@Test()
			public void selectFilesUsingSelectAllFileSystemTest() throws Exception
			{
				System.out.println("SL_39 : selectFilesUsingSelectAllFileSystemTest");
				Boolean status = SCLFileLoading_1.selectFilesUsingSelectAllFileSystem();
				Reporter.log("SL_39 : selectFilesUsingSelectAllFileSystemTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
			
			//SL_041
			@Test()
			public void loadicdFileInFileSystemTest() throws Exception
			{
				System.out.println("SL_41 : loadicdFileInFileSystemTest");
				SCLFileLoading_1.deleteAllFileInFilesystemTable();				//Deleteing files from system
				SCLFileLoading_1.sclFileLoad("Ed2TestIED.icd");					//Loading ICD file
				Boolean status = SCLFileLoading_1.CheckFileInFileSystem("Ed2TestIED"); 
				Reporter.log("SL_41 : loadicdFileInFileSystemTest " + "status : "+ status.toString());
				Assert.assertTrue(status);
			}
			
			//SL_042
			@Test()
			public void loadingWindowicdFileTest() throws Exception
			{
				System.out.println("SL_042 : loadingWindowicdFileTest");
				Boolean status = SCLFileLoading_1.loadingWindowicdFile();
				Reporter.log("SL_042 : loadingWindowicdFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//CID file
			//SL_043
			@Test()
			public void loadcidFileInFileSystemTest() throws Exception
			{
				System.out.println("SL_043 : loadcidFileInFileSystemTest");
				Boolean status = SCLFileLoading_1.loadcidFileInFileSystem();
				Reporter.log("SL_043 : loadcidFileInFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_044
			@Test()
			public void loadingWindowcidFileTest() throws Exception
			{
				System.out.println("SL_044 : loadingWindowcidFileTest");
				Boolean status = SCLFileLoading_1.loadingWindowcidFile();
				Reporter.log("SL_044 : loadingWindowcidFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}	
			
			//IID file
			//SL_045
			@Test()
			public void loadiidFileInFileSystemTest() throws Exception
			{
				System.out.println("SL_045 : loadiidFileInFileSystemTest");
				Boolean status = SCLFileLoading_1.loadiidFileInFileSystem();
				Reporter.log("SL_045 : loadiidFileInFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}	
		
			//SL_046
			@Test()
			public void loadingWindowiidFileTest() throws Exception
			{
				System.out.println("SL_046 : loadingWindowiidFileTest");
				Boolean status = SCLFileLoading_1.loadingWindowiidFile();
				Reporter.log("SL_046 : loadingWindowiidFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SCD file 
			//SL_047
			@Test()
			public void loadscdFileInFileSystemTest() throws Exception
			{
				System.out.println("SL_047 : loadscdFileInFileSystemTest");
				Boolean status = SCLFileLoading_1.loadscdFileInFileSystem();
				Reporter.log("SL_047 : loadscdFileInFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}	
		
			//SL_048
			@Test()
			public void loadingWindowscdFileTest() throws Exception
			{
				System.out.println("SL_048 : loadingWindowscdFileTest");
				Boolean status = SCLFileLoading_1.loadingWindowscdFile();
				Reporter.log("SL_048 : loadingWindowscdFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SED file
			//SL_049
			@Test()
			public void loadsedFileInFileSystemTest() throws Exception
			{
				System.out.println("SL_049 : loadsedFileInFileSystemTest");
				Boolean status = SCLFileLoading_1.loadsedFileInFileSystem();
				Reporter.log("SL_049 : loadsedFileInFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}	
		
			//SL_050
			@Test()
			public void loadingWindowsedFileTest() throws Exception
			{
				System.out.println("SL_050 : loadingWindowsedFileTest");
				Boolean status = SCLFileLoading_1.loadingWindowsedFile();
				Reporter.log("SL_050 : loadingWindowsedFileTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
				 //SSD file
		    //SL_050
		    @Test()
		    public void loadssdFileInFileSystemTest() throws Exception
		    {
		        System.out.println("SL_050 : loadssdFileInFileSystemTest");
		        Boolean status = SCLFileLoading_1.loadssdFileInFileSystem();
		        Reporter.log("SL_050 : loadssdFileInFileSystemTest " + "status : "
		                + status.toString());   
		        Assert.assertTrue(status);
		    }   
		   
		    //SL_051
		    @Test()
		    public void loadingWindowssdFileTest() throws Exception
		    {
		        System.out.println("SL_051 : loadingWindowssdFileTest");
		        Boolean status = SCLFileLoading_1.loadingWindowssdFile();
		        Reporter.log("SL_051 : loadingWindowssdFileTest " + "status : "
		                + status.toString());   
		        Assert.assertTrue(status);
		    }
		    
		  //SL_054, SL_055
			@Test()
			public void selectAllClickInSelectIEDsPopUpTest() throws Exception
			{
				System.out.println("SL_054, SL_055 : selectAllClickInSelectIEDsPopUpTest");
				Boolean status = SCLFileLoading_1.selectAllClickInSelectIEDsPopUp();
				Reporter.log("SL_054, SL_055 : selectAllClickInSelectIEDsPopUpTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			} 
			
			//SL_057
			@Test()
			public void singleIEDloadTest() throws Exception
			{
				System.out.println("SL_057 : singleIEDloadTest");
				Boolean status = SCLFileLoading_1.singleIEDload();
				Reporter.log("SL_057 : singleIEDloadTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_057,58
			@Test()
			public void multipleIEDloadTest() throws Exception
			{
				System.out.println("SL_057,58 : multipleIEDloadTest");
				Boolean status = SCLFileLoading_1.multipleIEDload();
				Reporter.log("SL_057,58 : multipleIEDloadTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_056
			@Test()
			public void loadIEDPopUpCheckTest() throws Exception
			{
				System.out.println("SL_056 : loadIEDPopUpCheckTest");
				Boolean status = SCLFileLoading_1.loadIEDPopUpCheck();
				Reporter.log("SL_056 : loadIEDPopUpCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_057,58
			@Test()
			public void closeBtnClickInIEDsStatusInfoPopUpTest() throws Exception
			{
				System.out.println("SL_057,58 : closeBtnClickInIEDsStatusInfoPopUpTest");
				Boolean status = SCLFileLoading_1.closeBtnClickInIEDsStatusInfoPopUp();
				Reporter.log("SL_057,58 : closeBtnClickInIEDsStatusInfoPopUpTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_059,62
			@Test()
			public void renamePopUpElementsCheckTest() throws Exception
			{
				System.out.println("SL_059,62 : renamePopUpElementsCheckTest");
				Boolean status = SCLFileLoading_1.renamePopUpElementsCheck();
				Reporter.log("SL_059,062 : renamePopUpElementsCheckTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_060-Verify user can rename the file
			@Test()
			public void cancelrenameFileInFilesystemTableTest() throws Exception
			{
				System.out.println("SL_060 : cancelrenameFileInFilesystemTableTest");
				Boolean status = SCLFileLoading_1.cancelrenameFileInFilesystemTable();
				Reporter.log("SL_060 : cancelrenameFileInFilesystemTableTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_061-Verify user can rename the file
			@Test()
			public void renameFileInFileSystemTableTest() throws Exception
			{
				System.out.println("SL_061 : renameFileInFileSystemTableTest");
				Boolean status = SCLFileLoading_1.renameFileInFilesystemTable();
				Reporter.log("SL_061 : renameFileInFileSystemTableTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_064-Verify that user can delete multiple files  from web server file system 
			@Test()
			public void removeFileUsingDeleteBtnFileSystemTest() throws Exception
			{
				System.out.println("SL_064 : removeFileUsingDeleteBtnFileSystemTest");
				SCLFileLoading_1.removefileUsingDeleteAllFileSystem();
				Boolean status = SCLFileLoading_1.CheckFileInFileSystem("BCU_402T");
				Reporter.log("SL_064 : removeFileUsingDeleteBtnFileSystemTest " + "status : "
						+ status.toString());	
				Assert.assertFalse(status);
			}
			
			//SL_065
			@Test()
			public void siscoErrorfileloadTest() throws Exception
			{
				System.out.println("SL_065 : siscoErrorfileloadTest");
				Boolean status = SCLFileLoading_1.siscoErrorfileload();
				Reporter.log("SL_065 : siscoErrorfileloadTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			//SL_066,067
			@Test()
			public void fileLoadWithZeroMessagesTest() throws Exception
			{
				System.out.println("SL_066,67 : fileLoadWithZeroMessagesTest");
				Boolean status = SCLFileLoading_1.fileLoadWithZeroMessages();
				Reporter.log("SL_066,67	 : fileLoadWithZeroMessagesTest " + "status : "
						+ status.toString());	
				Assert.assertTrue(status);
			}
			
			
				
			//SL_068,069
				@Test()
				public void sclFileloadWithOnlyGSEMessagesTest() throws Exception
				{
					System.out.println("SL_068,069 : sclFileloadWithOnlyGSEMessagesTest");
					Boolean status = SCLFileLoading_1.sclFileloadWithOnlyGSEMessages();
					Reporter.log("SL_068,069 : sclFileloadWithOnlyGSEMessagesTest " + "status : "
							+ status.toString());	
					Assert.assertTrue(status);
				}
				
					//SL_073,074
					@Test()
					public void sclFileloadWithOnlySVMessagesTest() throws Exception
					{
						System.out.println("SL_073,074 : sclFileloadWithOnlySVMessagesTest");
						Boolean status = SCLFileLoading_1.sclFileloadWithOnlySVMessages();
						Reporter.log("SL_073,074 : sclFileloadWithOnlySVMessagesTest " + "status : "
								+ status.toString());	
						Assert.assertTrue(status);
					}
					
					//SL_075,076
					@Test()
					public void sclFileloadWithGSEAndSVMessagesTest() throws Exception
					{
						System.out.println("SL_075,076 : sclFileloadWithGSEAndSVMessagesTest");
						Boolean status = SCLFileLoading_1.sclFileloadWithGSEAndSVMessages();
						Reporter.log("SL_075,076 : sclFileloadWithGSEAndSVMessagesTest " + "status : "
								+ status.toString());	
						Assert.assertTrue(status);
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
			
		}
		
		@AfterClass
		public void afterClass()
		{
			
			Reporter.log("test ends");
			Browsers.driver.quit();
		}
}
