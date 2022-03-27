/*package com.kalkitech.doble.classes.usermanagement;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.CommonUtils;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class RemoveUser extends BaseClass {

	public RemoveUser(WebDriver driver) {
		super(driver);

	}

	static WebElement element = null;


	public static final String DELETEALLUSERSID="deleteAllUsers";
	public static final String SELECTALLID="select_all";
	public static final String USERACCOUNTLINKTEXT="User Account";
	public static final String DELETEUSERXPATH="//*[@id=\"deleteAllUsers\"]";
	public static final String DELETEALLUSERXPATH="//a[@id='deleteHref']/button";
	private static final String SETTINGSICONXPATH = "//li[@class ='dropdown notifications-menu']/a/i";


	//This method is to check if user can be deleted
	public static void removeUser(String user) throws Exception {
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement>rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			//int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]")).getText();
				if (actual_user.equals(user)) {
					// dlete icon click element
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[2]/i")).click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					//delete user btn element
					CommonUtils.findByXpath(DELETEALLUSERXPATH).click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				//remove icon element in user list
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
	}

	// This method is to check if user is available in table
	public static Boolean CheckUser(String user) throws Exception {
		Thread.sleep(2000);
		Boolean status = null;
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		Thread.sleep(1000);
		outerloop: for (int i = 1; i <= count; i++) {
			Thread.sleep(2000);
			System.out.print(driver);
			WebElement table = Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody"));
			List<WebElement>rows=table.findElements(By.tagName("tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_user = Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]")).getText();
				if (actual_user.equals(user)) {
					status = true;
					break outerloop;
				} else {
					status = false;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				//remove icon element in user list
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
			}
		}
		return status;
	}
	
	//check for duplicate user name
	public static Boolean CheckUserNameDuplicate(String user) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean status = false;
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List < WebElement > rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]")).getText();
				if (actual_user.equals(user)) {
					String text1 =  Browsers.driver.switchTo().alert().getText();
					String text2 = "Failed to save Info. User Name may exists";
					if (text1.equals(text2)) {
						status = true;
						break outerloop;

					}
				}
				else {
					status = false;
				}
			}

		}
		return status;
	}

	//This method is to check if Delete button is available for all users
	public static Boolean removeUserbuttonAvailable() throws Exception {

		WebDriverUtils.implicitlyWait();
		Boolean status1 = null;
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		//int count = 0;

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List < WebElement > rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			//int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				Boolean status2 =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[2]/i")).isDisplayed();
				Thread.sleep(2000);
				if (status2.equals(true)) {
					status1 = true;
				}
				else {
					status1 = false;
					break outerloop;
				}

			}

			int count2 = i + 1;
			if (count2 <= count) {
				//remove icon element in user list
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		return status1;
	}

	//This method is to check if deleted user can login
	public static void removeUserloginCheck(String user, String password) throws Exception {

		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		//int count = 0;

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List < WebElement > rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			//int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_user.equals(user)) {
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[2]/i")).click();
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
				//remove icon element in user list
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}

		Thread.sleep(2000);
		Login.logout();
		Thread.sleep(5000);
		Login.LoginTest(user, password);
		Thread.sleep(3000);
	}

	//This method is to check if all the users in the page are selected on click of select All check box
	public static Boolean selectAllCheckBoxFunction() throws Exception {

		WebDriverUtils.implicitlyWait();
		Boolean actual_status = null;
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findById(SELECTALLID).click();
		Thread.sleep(2000);
		List < WebElement > rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
		int count1 = rows.size();
		//int checkboxCount =0;
		for (int j = 1; j <= count1; j++) {
			Boolean status =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[1]/input")).isSelected();
			if (status.equals(true)) {
				actual_status = true;
			}
			else {
				actual_status = false;
				break;

			}
		}
		return actual_status;
	}

	//This method is to check if user can be deleted
	public static void removeUserUsingDeleteAll(String user) throws Exception {

		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERACCOUNTLINKTEXT).click();
		Thread.sleep(2000);
		//int count = 0;

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		outerloop: for (int i = 1; i <= count; i++) {
			List < WebElement > rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			//int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]")).getText();
				if (actual_user.equals(user)) {
					Thread.sleep(2000);
					//clic kthe user
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[1]/input")).click();
					Thread.sleep(4000);
					CommonUtils.findByXpath(SETTINGSICONXPATH).click();
					Thread.sleep(4000);
					//delete btn element in user list
					CommonUtils.findByXpath(DELETEUSERXPATH).click();
					Thread.sleep(4000);
					Browsers.driver.switchTo().activeElement();
					CommonUtils.findByXpath(DELETEALLUSERXPATH).click();
					Thread.sleep(2000);
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				//update icon element in user list
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
	}

}*/