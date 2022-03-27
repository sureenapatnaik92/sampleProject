/*package com.kalkitech.doble.classes.trigger;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Trigger extends BaseClass {

	public Trigger(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// Element -trigger in menu
	public static WebElement trigger() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"trigger\"]/a/span[1]");
			Reporter.log("trigger is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: trigger is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-trigger list in menu
	public static WebElement triggerlist() throws Exception {
		try {

			element = WebDriverUtils.findElementByXpath("//*[@id=\"trigger-list\"]/a/span");
			Reporter.log("trigger list is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: trigger list is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element -Error modal popup
	public static WebElement errorModal() throws Exception {
		try {
			element = WebDriverUtils.findElementById("errorMsg");
			Reporter.log("errorMsg is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: errorMsg is not found in menu");
			throw (e);
		}
		return element;
	}

	// Menu - Settings in Project
	public static WebElement triggerMenuSettings() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("Trigger Settings is found in repository");
		} catch (Exception e) {
			Reporter.log("Error: Trigger Settings is not found in repository");
			throw (e);
		}
		return element;
	}

	// Element - trigger editor in menu
	public static WebElement TriggerEditorMenu() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Trigger Editor");
			Reporter.log("Trigger Editor is found in settings");
		} catch (Exception e) {
			Reporter.log("Error: Trigger Editor is not found in settings");
			throw (e);
		}
		return element;
	}

	// Element- Edit trigger in trigger list
	public static WebElement EditTrigger(int rowIndex) throws Exception {
		try {
			element = Browsers.driver.findElement(By.xpath("//table[@id=\"dtable\"]/tbody/tr[" + rowIndex + "]/td[7]/a[2]/i"));
			Reporter.log("Trigger Editor is found in settings");
		} catch (Exception e) {
			Reporter.log("Error: Edit button is not found");
			throw (e);
		}
		return element;
	}

	//Element-find boolean type in trigger editor
	public static WebElement findBoolDataType() throws Exception {
		try {

			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//*[@class=\"childTableDiv\"]/table/tbody/tr"));
			int rowcount = rows.size();
			for (int i = 1; i <= rowcount; i = i + 2) {
				element = WebDriverUtils
						.findElementByXpath("//*[@class='childTableDiv']/table/tbody/tr[" + i + "]/td[2]");
				String dataType = element.getText();
				if (dataType.equals("Bool")) {
					Reporter.log("Bool found ");
					return element;
				}
			}
		} catch (Exception e) {
			Reporter.log("Error: Bool is not found ");
			throw (e);
		}
		return element;
	}

	//Element-validation button in trigger editor
	public static WebElement Validationbutton() throws Exception {
		try {
			element = Browsers.driver.findElement(By.id("validatebtn"));
			Reporter.log("Validation found ");
		} catch (Exception e) {
			Reporter.log("Error: Validation button is not found ");
			throw (e);
		}
		return element;
	}

	//Element-trigger editor canvas
	public static WebElement findCanvas() throws Exception {
		try {
			element = Browsers.driver.findElement(By.xpath("//*[local-name()='svg']"));
			Reporter.log("canvas is found ");
		} catch (Exception e) {
			Reporter.log("Error: canvas is not found ");
			throw (e);
		}
		return element;
	}

	//Element-
	public static WebElement rowElement() throws Exception {
		try {
			element = Browsers.driver.findElement(By.xpath(
					"//html/body/div[2]/div/div[1]/aside/section/div/div/div/div/div[1]/div/table/tbody/tr[1]/td[1]"));
		} catch (Exception e) {
			Reporter.log("Error: row is not found ");
			throw (e);
		}
		return element;
	}

	//To close manual trigger after configuration
	public static Boolean MtriggerClose() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(5000);
		trigger().click();
		Thread.sleep(5000);
		triggerlist().click();
		Thread.sleep(5000);
		triggerMenuSettings().click();
		Thread.sleep(5000);
		WebDriverUtils.findElementByXpath("//*[@id=\"manualTrigger\"]").click();
		Thread.sleep(5000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		WebDriverUtils.findElementByXpath("/html/body/div[10]/div/div/div/button").click();
		return true;
	}

	//To edit trigger from trigger list page
	public static Boolean EditTriggerInTriggerlist(String triggerName, String expected_successmsg) throws Exception {
		WebDriverUtils.implicitlyWait();
		boolean status = false;
		Thread.sleep(5000);
		trigger().click();
		Thread.sleep(5000);
		triggerlist().click();
		Thread.sleep(5000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count3 = Integer.parseInt(pagination1);
		outerloop: for (int i = 1; i <= count3; i++) {
			WebElement simpleTable = Browsers.driver.findElement(By.id("dtable"));
			List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
			// Print data from each row
			int rowIndex = 0;
			for (WebElement row : rows) {
				// rowIndex++;
				List<WebElement> cols = row.findElements(By.tagName("td"));
				int colIndexi = 0;
				for (WebElement col : cols) {
					if (colIndexi == 1) {
						if (triggerName.equalsIgnoreCase(col.getText())) {
							element = EditTrigger(rowIndex);
							element.click();
							Thread.sleep(4000);
							Browsers.driver.switchTo().activeElement();
							Browsers.driver.switchTo().frame(0);
							Thread.sleep(4000);
							Validationbutton().click();
							Thread.sleep(4000);
							Browsers.driver.switchTo().activeElement();
							Thread.sleep(4000);
							String actual_successmsg = errorModal().getText();
							// String expected_successmsg = "Trigger validation succeded";
							if (actual_successmsg.equals(expected_successmsg)) {
								status = true;
								break outerloop;
							}
						}
					}
					colIndexi++;
				}
				rowIndex++;
			}
			int count5 = i + 1;
			if (count5 <= count3) {
				WebDriverUtils
				.findElementByXpath(
						"/html/body/div[1]/div[3]/section/div/div/div/div[2]/nav/ul/li[" + count5 + "]/a")
				.click();
			}
		}
		return status;
	}

	//To configure manual trigger
	public static Boolean ManualTrigger() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = true;
		Thread.sleep(5000);
		trigger().click();
		Thread.sleep(5000);
		triggerMenuSettings().click();
		Thread.sleep(5000);
		WebDriverUtils.findElementByXpath("//*[@id=\"manualTrigger\"]").click();
		Thread.sleep(5000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(5000);
		WebDriverUtils.findElementByXpath("//*[@id=\"manualTriggercheck4\"]").click();
		Thread.sleep(5000);
		WebDriverUtils.findElementByXpath("/html/body/div[8]/div/div/form/div[2]/a/button").click();
		return status;
	}

	//To open trigger Editor page
	public static Boolean OpenTriggerEditor() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = true;
		Thread.sleep(5000);
		trigger().click();
		Thread.sleep(5000);
		triggerMenuSettings().click();
		Thread.sleep(5000);
		TriggerEditorMenu().click();
		Thread.sleep(5000);
		return status;

	}
}*/
