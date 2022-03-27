/*package com.kalkitech.doble.testcases.login;

import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.Reporter;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.openqa.selenium.By;
import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.Constants;
import com.kalkitech.doble.genericLib.ExcelLib;
import com.kalkitech.doble.genericLib.ScreenShots;
import com.kalkitech.doble.genericLib.WebDriverUtils;


public class LoginTest {

  @BeforeMethod
  public void beforeTest() {
    Reporter.log("test start");
    Browsers.fn_LaunchBrowser(Constants.browser);
    WebDriverUtils.fn_OpenURL(Constants.Url);

  }
  //LO-005-Verify that user is able to login with Default login credentials (Name: user, Password: password)
  @Test(priority = 2)
  public void positiveLoginTest() throws Exception {
    ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
    String Username = ExcelLib.getCellData(1, 0);
    String password = ExcelLib.getCellData(1, 1);
    Login.LoginTest(Username, password);
    Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("userhome"));
  }
  
  //LO-065-Verify that on click on logout, user logs out of application
  @Test(priority = 6)
  public void logoutTest() throws Exception {
	System.out.println("logout from the page");  
    ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
    String Username = ExcelLib.getCellData(2, 0);
    String password = ExcelLib.getCellData(2, 1);
    Login.LoginTest(Username, password);
    Login.logout();
    Assert.assertTrue(Browsers.driver.getCurrentUrl().endsWith("login"));

  }
  
  //LO-007,006 Checking for Invalid credentials
  @Test(priority = 3)
  public void invalidUserandPWLoginTest() throws Exception {
	System.out.println("To check username and pwd are invalid or not");
    ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
    String Username = ExcelLib.getCellData(4, 0);
    String password = ExcelLib.getCellData(4, 1);
    Login.LoginTest(Username, password);
    String bodyText = Browsers.driver.findElement(By.xpath("//*[@id=\"loginInfo\"]/div[3]/div")).getText();
    Assert.assertTrue(bodyText.contains("Invalid username and password."));

  }

  //LO-007 login with valid user id and incorrect password
  @Test(priority = 4)
  public void invalidUserNameLoginTest() throws Exception {
	System.out.println("To check the invalid username in login page");
    ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
    String Username = ExcelLib.getCellData(3, 0);
    String password = ExcelLib.getCellData(3, 1);
    Login.LoginTest(Username, password);
    String bodyText = Browsers.driver.findElement(By.xpath("//*[@id=\"loginInfo\"]/div[3]/div")).getText();
    System.out.println(bodyText);
    Assert.assertTrue(bodyText.contains("Invalid username and password."));

  }

  //LO-006 login with incorrect user id and valid password
  @Test(priority = 5)
  public void invalidPWLoginTest() throws Exception {
	System.out.println("To check if pwd works with invalid login or pwd");
    ExcelLib.setExcelFile("src/main/resources/TestData/Login.xlsx", "Login");
    String Username = ExcelLib.getCellData(3, 0);
    String password = ExcelLib.getCellData(3, 1);
    Login.LoginTest(Username, password);
    String bodyText = Browsers.driver.findElement(By.xpath("//*[@id=\"loginInfo\"]/div[3]/div")).getText();
    Assert.assertTrue(bodyText.contains("Invalid username and password."));

  }

  //LO-002 This method is to verify if Username textbox is available in login page
  @Test(priority = 0)
  public void userNameTextboxAvailableTest() throws Exception {
   System.out.println("To check username checkbox available in the login page");
   Boolean actual_status = Login.usernameTextboxAvailable();
   Boolean expected_status = true;
   Assert.assertEquals(actual_status, expected_status);
  }

  //LO_003-This method is to verify if password textbox is available in login page
  @Test(priority = 1)
  public void passwordTextBoxAvailableTest() throws Exception {
	System.out.println("To check the pwd checkbox is available or not");
    Boolean actual_status = Login.passwordTextboxAvailable();
    Boolean expected_status = true;
    Assert.assertEquals(actual_status, expected_status);
  }

  //LO_001-Verify that login page contains Login button
  @Test(priority = 1)
  public void loginBtnAvailableTest() throws Exception {
    System.out.println("To login btn is available before starting the test");
    Boolean actual_status = Login.loginBtnAvailable();
    Boolean expected_status = true;
    Assert.assertEquals(actual_status, expected_status);
  }

  //LO-002-Checking if username textbox is enabled
  @Test
  public void userNameTextboxEnabledTest() throws Exception {
	System.out.println("To check the username column checkbox is enabled or not");  
    WebDriverUtils.fn_OpenURL(Constants.Url);
    Boolean actual_status = Login.usernameTextboxEnabled();
    Boolean expected_status = true;
    Assert.assertEquals(actual_status, expected_status);
  }

  //LO-003-Checking if password textbox is enabled
  @Test
  public void passwordTextboxEnabledTest() throws Exception {
    System.out.println("To check the pwd checkbox is enable or not");
    WebDriverUtils.fn_OpenURL(Constants.Url);
    Boolean actual_status = Login.passwordTextboxEnabled();
    Boolean expected_status = true;
    Assert.assertEquals(actual_status, expected_status);
  }
  @AfterMethod
  public void tearDown(ITestResult result) {

    // Here will compare if test is failing then only it will enter into if condition
    if (ITestResult.FAILURE == result.getStatus()) {
      try {
        String testName = result.getMethod().getConstructorOrMethod().getName();
        ScreenShots.takeSnapshot(Browsers.driver, testName, "src/main/resources/ScreenShots/");
      }
      catch(Exception e) {

        Reporter.log("Exception while taking screenshot " + e.getMessage());
      }

    }

    Reporter.log("test ends");
    Browsers.driver.quit();

  }
}*/