package com.kalkitech.doble.genericLib;

import org.openqa.selenium.WebElement;
import org.testng.Reporter;

public class CommonUtils {

	public static WebElement findById(String id) {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementById(id,"smallWait");
			Reporter.log("Webelement id found " + id);

		} catch (Exception e) {
			Reporter.log("Webelement id not found " + id);
			throw (e);
		}
		return element;
	}

	public static WebElement findByName(String name) {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByName(name,"smallWait");
			element.click();
			Reporter.log("Webelement name found " + name);
		} catch (Exception e) {
			Reporter.log("Webelement name not found " + name);
			throw (e);
		}

		return element;
	}

	public static WebElement findByXpath(String xpath) throws Exception {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByXpath(xpath,"smallWait");
			Reporter.log("Xpath found" + xpath);
		} catch (Exception e) {
			Reporter.log("Xpath not found" + xpath);
			throw (e);
		}
		return element;
	}

	public static WebElement findByLinkText(String text) throws Exception {
		WebElement element = null;
		try {
			element = WebDriverUtils.findElementByLinkText(text,"smallWait");
			Reporter.log("Text found" + text);
		} catch (Exception e) {
			Reporter.log("Text     not found" + text);
			throw (e);
		}
		return element;
	}

}
