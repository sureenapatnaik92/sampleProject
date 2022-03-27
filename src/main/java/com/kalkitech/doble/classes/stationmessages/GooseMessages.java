package com.kalkitech.doble.classes.stationmessages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class GooseMessages extends BaseClass {

	public GooseMessages(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;
	
	
	// Element - Station messages tab
		public static WebElement StationMessagesTab() throws Exception {
			try {

				element = WebDriverUtils.findElementByLinkText("Station Messages","smallWait");
				} catch (Exception e) {

				Reporter.log("Error:Station Messages Tab is not found in menu");
				throw (e);
			}
			return element;
		}
		
		// Element - GOOSE messages tab
		public static WebElement GOOSEMessagesTab() throws Exception {
			try {

				element = WebDriverUtils.findElementById("stationmsggse","smallWait");
				Reporter.log("GOOSE Messages Tab in Station Message is found in menu");

			} catch (Exception e) {

				Reporter.log("Error:GOOSE Messages Tab is not found in menu");
				throw (e);

			}
			return element;
		}
		
		// Element - SV messages tab
				public static WebElement SVMessagesTab() throws Exception {
					try {

						element = WebDriverUtils.findElementByLinkText("Sampled Values","smallWait");
						} catch (Exception e) {

						Reporter.log("Sampled Values Messages Tab is not found in menu");
						throw (e);

					}
					return element;
				}
		
		//Element- settings menu in Goose Messages
		public static WebElement settingsInGSE() throws Exception {
			try {

				element = WebDriverUtils.findElementByXpath("//*[@class=\"dropdown-toggle\"]/img","smallWait");
				} catch (Exception e) {

				Reporter.log("Error: settings In GSE messages is not found");
				throw (e);

			}
			return element;
		}
		
		//Element- settings menu in SV Messages
				public static WebElement settingsInSV() throws Exception {
					try {

						element = WebDriverUtils.findElementByXpath("//*[@class=\"dropdown-toggle\"]/img","smallWait");
						} catch (Exception e) {

						Reporter.log("Error: settings In SV messages is not found");
						throw (e);

					}
					return element;
				}

		// Element - clear data button in settings menu in GSE tab
		public static WebElement clearDataBtnInGSE() throws Exception {
			try {

				element = WebDriverUtils.findElementById("clearData","smallWait");
				} catch (Exception e) {

				Reporter.log("Error:clearData button is not found in menu");
				throw (e);

			}
			return element;
		}
		
		
		
	// to clear GSE message TAB
		public static void clearDataInGSE() throws Exception {
			Thread.sleep(2000);
			Browsers.driver.switchTo().defaultContent();
			GOOSEMessagesTab().click();
			Thread.sleep(2000);
			Browsers.driver.switchTo().frame("iframecontainer");
			settingsInGSE().click();
			Thread.sleep(2000);
			clearDataBtnInGSE().click();
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(2000);
			WebDriverUtils.findElementById("deleteHref","smallWait").click();
		}
		
		// to clear SV message TAB for SCL Files
				public static void clearDataInSV() throws Exception {
					Thread.sleep(2000);
					/*	StationMessagesTab().click();
					Thread.sleep(2000);
						StationMessagesTab().click();
					Thread.sleep(2000);*/
					Browsers.driver.switchTo().defaultContent();
					SVMessagesTab().click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().frame("iframecontainer");
					settingsInSV().click();
					Thread.sleep(2000);
					clearDataBtnInGSE().click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					WebDriverUtils.findElementById("deleteHref","smallWait").click();
				}
		
		


}
