/*package com.kalkitech.doble.testcases.SCLFiles;

import static org.testng.Assert.assertEquals;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SCLFileLoadingTest_old {

	@BeforeMethod
	public void beforeTest() throws Exception
	{
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		/*
		 * ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		 * String Username = ExcelLib.getCellData(1, 0); String password =
		 * ExcelLib.getCellData(1, 1); Login.LoginTest(Username, password);
		 */

	

	/*	//SL_001- This method is to verify if scl file loading is working properly
	@Test(priority = 0)
	public void sclFileLoadTest() throws Exception
	{
		System.out.println("To load SCL files and load it in repository");
		List<Boolean> actual_status = new ArrayList<Boolean>();
		List<Boolean> expected_status =Arrays.asList(true,true,true,true,true);
		SCLFileLoading.deleteAllFileInFilesystemTable();                //Deleting all existing files
		SCLFileLoading.sclFileLoad("Ed2TestIED.ICD");					//Loading ICD file
		SCLFileLoading.sclFileLoad("Controller1_Outbound_SCL_NoProdIP.IID");  //Loading IID file
		SCLFileLoading.sclFileLoad("BCU_402T.SCD");							//Loading SCD file
		SCLFileLoading.sclFileLoad("411L.CID");							//Loading CID file
		SCLFileLoading.sclFileLoad("1.sed");							//Loading SED file
	//	SCLFileLoading.sclFileLoad("IOP 2017 SLD R2.ssd");				//Loading SSD file
		Boolean actual_status1 = SCLFileLoading.CheckFileInFileSystem("Ed2TestIED");   //Checking ICD file is available or not
		Boolean actual_status2 = SCLFileLoading.CheckFileInFileSystem("Controller1_Outbound_SCL_NoProdIP"); //Checking IID file is available or not
		Boolean actual_status3 = SCLFileLoading.CheckFileInFileSystem("BCU_402T");   //Checking SCD file is available or not
		Boolean actual_status4 = SCLFileLoading.CheckFileInFileSystem("411L");			//Checking CID file is available or not
		Boolean actual_status5 = SCLFileLoading.CheckFileInFileSystem("1");      //Checking SED file is available or not
	//	Boolean actual_status6 = SCLFileLoading.CheckFileInFileSystem("IOP 2017 SLD R2");    //Checking SSD file is available or not
		actual_status.add(actual_status1);
		actual_status.add(actual_status2);
		actual_status.add(actual_status3);
		actual_status.add(actual_status4);
		actual_status.add(actual_status5);
	//	actual_status.add(actual_status6);
		System.out.println("actual_status is "+actual_status);
		Assert.assertEquals(actual_status, expected_status);
	}

	//SL_009-This method is to verify if warning message is displaying on submit without uploading file
	@Test(priority = 1)
	public void warningMsgOnSubmitWithoutUploadTest() throws Exception
	{
		System.out.println("To show warning msg on sumit if we upload a duplicate file");
		Boolean actual_status = SCLFileLoading.warningMsgOnSubmitWithoutUpload();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//SL_012-This method is to verify error message on duplicate file upload
	@Test(priority = 3)
	public void duplicateFileUploadMsgTest() throws Exception
	{
		System.out.println("To upload a duplicate file and show the error msg");
		Thread.sleep(1000);
		Boolean actual_status = SCLFileLoading.duplicateFileUploadMsg();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status,"Error:Duplicate file uploaded");
	}

	//SL_007-This method is to verify if extensions are available in upload screen
	@Test(priority = 2)
	public void extensionAvailableCheckTest() throws Exception
	{
		System.out.println("To check if the extensions for file upload are available or not");
		Boolean actual_status = SCLFileLoading.extensionAvailableCheck();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//SL_019-This method is to verify is search functionality  is working properly in files system tab
	@Test(priority = 4)
	public void searchFunctionFileSystemTest() throws Exception
	{
		System.out.println("To seach files in file system in the repository page");
		Boolean actual_status = SCLFileLoading.searchFunctionFileSystem();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

//SL_059-This method is to verify is check box check  is working properly in files system tab
	@Test(priority = 5)
	public void checkBoxFucntionFileSystemTest() throws Exception
	{
		System.out.println("To check the checkbox function in file system in repository");
		Boolean actual_status = SCLFileLoading.checkBoxFucntionFilesystem();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	/*		//SL_018-This method is to verify column names in filesystem table
	@Test(priority = 6)
	public void columnCheckInfilesystemTableTest() throws Exception
	{
		System.out.println("To check columns in file system");
		Boolean actual_status = SCLFileLoading.columnCheckInfilesystemTable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
	//SL_022-Verify that user can delete files  from web server file system 
	@Test(priority = 11)
	public void deleteFileInfilesystemTableTest() throws Exception
	{
		System.out.println("To delete file in file system in repository");
		Boolean actual_status = SCLFileLoading.deleteFileInfilesystemTable();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}

	//SL_024-Confirmation message should be displayed before deleting the files
	@Test(priority = 10)
	public void canceldeleteFileInFileSystemTableTest() throws Exception
	{
		System.out.println("To cancel the delete file option from file system");
		Boolean actual_status = SCLFileLoading.canceldeleteFileInFileSystemTable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
/*	//SL_013-If user clicks on yes button, check the old file is replaced by new one
	@Test(priority = 13)
	public void replaceDuplicateFileUploadTest() throws Exception
	{
		System.out.println("To replace the duplicate file in file system");
		Boolean actual_status = SCLFileLoading.replaceDuplicateFileUpload();
		
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
/*	//SL_014-If user clicks on no button, file loading gets cancelled
	@Test(priority = 14)
	public void cancelReplaceDuplicateFileUploadTest() throws Exception
	{
		System.out.println("To cancel the replace duplicate file in file upload");
		Boolean actual_status = SCLFileLoading.cancelReplaceDuplicateFileUpload();
		Boolean expected_status = true;
		Assert.assertEquals(actual_status, expected_status);
	}
		//SL_025-Verify that user can delete multiple files  from web server file system 
	@Test(priority = 19)
	public void removeFileUsingDeleteAllFileSystemTest() throws Exception
	{
		System.out.println("To remove all user using delete all option");
		SCLFileLoading.removefileUsingDeleteAllFileSystem();
		Boolean actual_status = SCLFileLoading.CheckFileInFileSystem("BCU_402T");
		Thread.sleep(2000);
		Boolean expected_status = false;
		assertEquals(actual_status, expected_status);
	}
	//SL_026-Verify that user is able to check/uncheck "select all" check box of file lists
	@Test(priority = 16)
	public void selectFilesUsingSelectAllFileSystemTest() throws Exception
	{
		System.out.println("To select file all files using select all option");
		Boolean actual_status = SCLFileLoading.selectFilesUsingSelectAllFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_028-Verify user can rename the file
	@Test(priority = 18)
	public void renameFileInFileSystemTableTest() throws Exception
	{
		System.out.println("To rename file in file in file syatem");
		Boolean actual_status = SCLFileLoading_old.renameFileInFilesystemTable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
/*	//SL_027-Verify that user can delete all files  from  file system 
	@Test(priority = 22)
	public void deleteAllFileInFilesystemTableTest() throws Exception
	{
		System.out.println("To delete all files in file system");
		Boolean actual_status = SCLFileLoading.deleteAllFileInFilesystemTable();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
/*	//SL_057-Verify close button is working in IED select window
	@Test(priority = 20)
	public void loadFileInFileSystemTest() throws Exception
	{
		System.out.println("To load/upload file in file system");
		Boolean actual_status = SCLFileLoading.loadFileInFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_008
	@Test(priority = 21)
	public void loadicdFileInFileSystemTest() throws Exception
	{
		System.out.println("To load ICD file in File system");
		Boolean actual_status = SCLFileLoading.loadicdFileInFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_045
	@Test()
	public void loadingWindowicdFileTest() throws Exception
	{
		System.out.println("To load a windows ICD file in repository");
		Boolean actual_status = SCLFileLoading.loadingWindowicdFile();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_046-Verify that user can  load cid files to application.
	@Test()
	public void loadcidFileInFileSystemTest() throws Exception
	{
		System.out.println("To load CID file in file system");
		Boolean actual_status = SCLFileLoading.loadcidFileInFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_047
	@Test()
	public void loadingWindowcidFileTest() throws Exception
	{
		System.out.println("To load a windows cid file");
		Boolean actual_status = SCLFileLoading.loadingWindowcidFile();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	
	//SL_048
	@Test()
	public void loadiidFileInFileSystemTest() throws Exception
	{
		System.out.println("To load a iid file");
		Boolean actual_status = SCLFileLoading.loadiidFileInFileSystem();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_049-
	@Test()
	public void loadingWindowiidFileTest() throws Exception
	{
		System.out.println("To load a window iid file");
		Boolean actual_status = SCLFileLoading.loadingWindowiidFile();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_050-Verify that user can  load scd files to application.
	@Test()
	public void loadscdFileInFileSystemTest() throws Exception
	{
		System.out.println("To load a scd file in file system");
		Boolean actual_status = SCLFileLoading.loadscdFileInFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_051
	@Test()
	public void loadingWindowscdFileTest() throws Exception
	{
		System.out.println("To load window scd file");
		Boolean actual_status = SCLFileLoading.loadingWindowscdFile();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_052
	@Test()
	public void loadsedFileInFileSystemTest() throws Exception
	{
		System.out.println("To load sed file in file system");
		Boolean actual_status = SCLFileLoading.loadsedFileInFileSystem();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_053
	@Test()
	public void loadingWindowsedFileTest() throws Exception
	{
		System.out.println("To load a windows sed file in file system");
		Boolean actual_status = SCLFileLoading.loadingWindowsedFile();
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
	}
	//SL_056
	@Test()
	public void loadMultiAccessPointsFileInFileSystemTest() throws Exception
	{
		Boolean actual_status = SCLFileLoading.loadMultiAccessPointsFileInFileSystem();
		Thread.sleep(2000);
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);
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


}*/
