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

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class SCLFileLoadingTest {

	@BeforeClass
	public void beforeClass() throws Exception
	{
		Reporter.log("Starting execution of SCL Files loading tests");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		//Browsers.driver.switchTo().defaultContent();
	}

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
		Boolean status = SCLFileLoading.UIElementsCheck();
		Reporter.log("SL_01 : UIElementsCheckTest " + "status : "
				+ status.toString());	
		Assert.assertTrue(status);
	}

	//SL_02
	@Test()
	public void settingsElementsCheckTest() throws Exception
	{
		System.out.println("SL_02 : settingsElementsCheckTest");
		Boolean status = SCLFileLoading.settingsElementsCheck();
		Reporter.log("SL_02 : settingsElementsCheckTest " + "status : "
				+ status.toString());	
		Assert.assertTrue(status);
	}

	//SL_03-This method is to verify is search functionality  is working properly in files system tab
	@Test()
	public void searchFunctionInFileSystemTest() throws Exception
	{
		System.out.println("SL_03 : searchFunctionInFileSystemTest");
		Boolean searchStatus = SCLFileLoading.searchFunctionInFileSystem();
		Reporter.log("SL_03 : searchFunctionInFileSystemTest " + "status : "+ searchStatus.toString());	
		Assert.assertTrue(searchStatus);
	}

	

	//SL_04
	@Test()
	public void deleteSelectedFunctionalityTest() throws Exception
	{
		System.out.println("SL_04 : deleteSelectedFunctionalityTest");
		Boolean status = SCLFileLoading.deleteSelectedFunctionality();
		Reporter.log("SL_04 : deleteSelectedFunctionalityTest " + "status : "
				+ status.toString());	
		Assert.assertTrue(status);
	}

	//SL_05-Verify that if upload pop up is displayed on click of Upload button and all file type check boxes are enabled
		@Test()
		public void uploadWithSelectAllIEDsCheckboxTest() throws Exception
		{
			System.out.println("SL_05 : uploadWithSelectAllIEDsCheckboxTest");
			Boolean status = SCLFileLoading.uploadWithSelectAllIEDsCheckbox("BCU_402T","scd");
			Reporter.log("SL_05 : uploadWithSelectAllIEDsCheckboxTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}

							
		//SL_06-This method is to verify if Select IEDs pop up displays on click of Submit button in upload page
		@Test()
		public void IEDLoadPageElementsCheckTest() throws Exception
		{
			System.out.println("SL_06 : IEDLoadPageElementsCheckTest");
			Boolean status = SCLFileLoading.IEDLoadPageElementsCheck();
			Reporter.log("SL_06 : IEDLoadPageElementsCheckTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}

		
		//SL_08- This method is to verify if scl file loading is working properly
		@Test()
		public void sclFileLoadTest() throws Exception
		{
			System.out.println("SL_08 : sclFileLoadTest");
			List<Boolean> actual_status = new ArrayList<Boolean>();
			List<Boolean> expected_status =Arrays.asList(true,true,true,true,true);
			SCLFileLoading.deleteAllFileInFilesystemTable();                //Deleting all existing files
			SCLFileLoading.sclFileLoad("Ed2TestIED.icd");					//Loading ICD file
			SCLFileLoading.sclFileLoad("Controller1_Outbound_SCL_NoProdIP.IID");  //Loading IID file
			SCLFileLoading.sclFileLoad("BCU_402T.scd");							//Loading SCD file
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
			Reporter.log("SL_08 : sclFileLoadTest " + "status : "	+ actual_status.toString());
			Assert.assertEquals(actual_status, expected_status);
		}
	
		//SL_09-This method is to verify if warning message is displaying on submit without uploading file
		@Test()
		public void warningMsgOnSubmitWithoutUploadTest() throws Exception
		{
			System.out.println("SL_09 : warningMsgOnSubmitWithoutUploadTest");
			Boolean status = SCLFileLoading.warningMsgOnSubmitWithoutUpload();
			Reporter.log("SL_09 : warningMsgOnSubmitWithoutUploadTest " + "status : "+ status.toString());
			Assert.assertTrue(status);
		}

		//SL_010-This method is to verify column names in filesystem table
		@Test()
		public void columnCheckInfilesystemTableTest() throws Exception
		{
			System.out.println("SL_10 : columnCheckInfilesystemTableTest");
			Boolean status = SCLFileLoading.columnCheckInfilesystemTable();
			Reporter.log("SL_10 : columnCheckInfilesystemTableTest " + "status : "+ status.toString());
			Assert.assertTrue(status);
		}
	
		//SL_11 This method is to verify replacement,cancel replacement and replacement warning message of same file
		@Test()
		public void replaceFileFunctionalityTest() throws Exception
		{
			System.out.println("SL_11: replaceFileFunctionalityTest");
			Boolean status = SCLFileLoading.replaceFileFunctionality();
			Reporter.log("SL_11 : replaceFileFunctionalityTest " + "status : "+ status.toString());
			Assert.assertTrue(status);
		}
		
		//SL_12-Verify that user is able to check/uncheck  check box of file lists
		@Test()
		public void checkAndUncheckFilesInableTest() throws Exception
		{
			System.out.println("SL_12 : checkAndUncheckFilesInableTest");
			Boolean status = SCLFileLoading.checkAndUncheckFilesInable();
			Reporter.log("SL_12 : checkAndUncheckFilesInableTest " + "status : "+ status.toString());
			Assert.assertTrue(status);
		}
	
	
		//SL_014-This method is to verify that after the successful loading of IEDs, columns: IEDname, Access point and Edition are listed.
		@Test()
		public void fileLoadAndColumnsCheckTest() throws Exception
		{
			System.out.println("SL_14 : loadicdFileInFileSystemTest");
			List<Boolean> actual_status = new ArrayList<Boolean>();
			List<Boolean> expected_status =Arrays.asList(true,true,true,true,true);
			if(SCLFileLoading.CheckFileInFileSystem("Ed2TestIED").equals(false)) {
			SCLFileLoading.sclFileLoad("Ed2TestIED.icd");					//Loading ICD file
			}
			Boolean statusICD = SCLFileLoading.fileLoadCheck("Ed2TestIED",".icd");
			
			if(SCLFileLoading.CheckFileInFileSystem("Controller1_Outbound_SCL_NoProdIP").equals(false)) {
				SCLFileLoading.sclFileLoad("Controller1_Outbound_SCL_NoProdIP.IID");					//Loading ICD file
				}
			
			Boolean statusIID = SCLFileLoading.fileLoadCheck("Controller1_Outbound_SCL_NoProdIP",".IID");
				
			if(SCLFileLoading.CheckFileInFileSystem("BCU_402T").equals(false)) {
				SCLFileLoading.sclFileLoad("BCU_402T.scd");					//Loading ICD file
			}
			Boolean statusSCD = SCLFileLoading.fileLoadCheck("BCU_402T",".scd");
						
			if(SCLFileLoading.CheckFileInFileSystem("411L").equals(false)) {
				SCLFileLoading.sclFileLoad("411L.CID");					//Loading ICD file
			}
			Boolean statusCID = SCLFileLoading.fileLoadCheck("411L",".CID");
							
			if(SCLFileLoading.CheckFileInFileSystem("1").equals(false)) {
				SCLFileLoading.sclFileLoad("1.sed");					//Loading ICD file
			}
			Boolean statusSED = SCLFileLoading.fileLoadCheck("1",".sed");
			
			actual_status.add(statusICD);
			actual_status.add(statusIID);
			actual_status.add(statusSCD);
			actual_status.add(statusCID);
			actual_status.add(statusSED);
			System.out.println("act "+actual_status);
			//	actual_status.add(actual_status6);
			Reporter.log("SL_14 : loadicdFileInFileSystemTest " + "status : "+ actual_status.toString());
			Assert.assertEquals(actual_status, expected_status);
			
		}
	
	
		//SL_022
		@Test()
		public void siscoErrorfileloadTest() throws Exception
		{
			System.out.println("SL_022 : siscoErrorfileloadTest");
			Boolean status = SCLFileLoading.siscoErrorfileload();
			Reporter.log("SL_022 : siscoErrorfileloadTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}

		//SL_023
		@Test()
		public void fileLoadWithZeroMessagesTest() throws Exception
		{
			System.out.println("SL_023 : fileLoadWithZeroMessagesTest");
			Boolean status = SCLFileLoading.fileLoadWithZeroMessages();
			Reporter.log("SL_023	 : fileLoadWithZeroMessagesTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}



		//SL_024,25
		@Test()
		public void sclFileloadWithOnlyGSEMessagesTest() throws Exception
		{
			System.out.println("SL_024,25 : sclFileloadWithOnlyGSEMessagesTest");
			Boolean status = SCLFileLoading.sclFileloadWithOnlyGSEMessages();
			Reporter.log("SL_024,25 : sclFileloadWithOnlyGSEMessagesTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}

		//SL_027
		@Test()
		public void sclFileloadWithOnlySVMessagesTest() throws Exception
		{
			System.out.println("SL_027 : sclFileloadWithOnlySVMessagesTest");
			Boolean status = SCLFileLoading.sclFileloadWithOnlySVMessages();
			Reporter.log("SL_027 : sclFileloadWithOnlySVMessagesTest " + "status : "
					+ status.toString());	
			Assert.assertTrue(status);
		}

		//SL_026
		@Test()
		public void sclFileloadWithGSEAndSVMessagesTest() throws Exception
		{
			System.out.println("SL_026 : sclFileloadWithGSEAndSVMessagesTest");
			Boolean status = SCLFileLoading.sclFileloadWithGSEAndSVMessages();
			Reporter.log("SL_26 : sclFileloadWithGSEAndSVMessagesTest " + "status : "
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
