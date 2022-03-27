/*package com.kalkitech.doble.testcases.endToEndLiveData;



import static org.testng.Assert.assertEquals;

import java.io.File;
import java.util.List;

import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.kalkitech.doble.classes.livedata.LiveData;
import com.kalkitech.doble.classes.livedata.LiveDataTabular;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.Demo3;
//import com.kalkitech.doble.genericLib.Demo3;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class EndToEndLiveData {

	@BeforeMethod
	public void beforeTest() throws Exception {
		//colasoft automation
		String filename1 = "CH1Line1Pcap";
		File file1 = new File(filename1);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		absolutePath1 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename1;
		Runtime runtime = Runtime.getRuntime();
		runtime.exec("src\\main\\resources\\TestData\\pktpl.exe"+" "+absolutePath1);
		Thread.sleep(20000);
		//start of main test
		Reporter.log("test start");
		Browsers.fn_LaunchBrowser(Constants.browser);
		WebDriverUtils.fn_OpenURL(Constants.Url);
		ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
		String Username = ExcelLib.getCellData(1, 0);
		String password = ExcelLib.getCellData(1, 1);
		Login.LoginTest(Username, password);
		Thread.sleep(4000);
		LiveData.LiveDataTab().click();
		Thread.sleep(4000);
		LiveData.LiveDataTabular().click();

	}
	@Test
	public void endtoendGSETabular() throws Exception
	{
		System.out.println("The end to end testing of GSE for live data tabular");
		Thread.sleep(3000);
		Boolean actual_status=false;
		List<List<String>>combinedList= LiveDataTabular.endtoendGSE();
		if(combinedList!=null)
		{
			actual_status= Demo3.compareXLSheetConfigMaster("Config","Master",combinedList);
		}
		else
			actual_status=false;
		Boolean expected_status = true;
		assertEquals(actual_status, expected_status);

	}
	@AfterMethod

	public void tearDown(ITestResult result) {

		// Here will compare if test is failing then only it will enter into if
		// condition
		if (ITestResult.FAILURE == result.getStatus()) {
			try {
				String testName = result.getMethod().getConstructorOrMethod().getName();

				ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
			} catch (Exception e) {

				Reporter.log("Exception while taking screenshot " + e.getMessage());
			}

		}

		Reporter.log("test ends");
		Browsers.driver.quit();

	}

}

*/