/*package com.kalkitech.doble.classes.usermanagement;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.CommonUtils;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class EditUser extends BaseClass {

	public EditUser(WebDriver driver) {
		super(driver);
	}

	static WebElement element = null;

	//	///*[@id="changePwd-form"]/div[3]/button[1]

	private static final String SAVECHANGEPWDID = "//*[@id=\"changePwd-form\"]/div[3]/button[1]";
	private static final String CONFIRMPWDID = "confirmpass";
	private static final String NEWPASSWORDID = "newpassword";
	private static final String SAVEBTNXPATH = "//button[contains(text(),'Save')]";
	private static final String UPDATESTATUSID = "ustatus";
	private static final String EMAILID = "uEmail";
	private static final String LASTNAMEID = "uLastName";
	private static final String FIRSTNAMEID = "uFirstName";

	// This method is to check if user can be edited
	public static Boolean editUser(String firstname, String changedName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("User Account").click();
		Thread.sleep(2000);
		Boolean status1 = false;
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		Thread.sleep(2000);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]"))
						.getText();
				if (actual_user.equals(firstname)) {
					//element-edit menu in add user
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[1]/i")).click();
					Thread.sleep(3000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					CommonUtils.findById(FIRSTNAMEID).clear();
					Thread.sleep(2000);
					CommonUtils.findById(FIRSTNAMEID).sendKeys(changedName);
					Thread.sleep(2000);
					CommonUtils.findByXpath(SAVEBTNXPATH).click();
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					String expected_user =  Browsers.driver
							.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]")).getText();
					if (expected_user.equals(changedName)) {
						status1 = true;
					} else {
						status1 = false;
					}
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils
				.findElementByXpath(
						"/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a")
				.click();
				Thread.sleep(3000);
			}

		}
		return status1;
	}

	// This method is to check if edit user btn is available for all users
	public static Boolean editUserBtnAvailable() throws Exception {
		Thread.sleep(2000);
		Boolean status1 = null;
		WebDriverUtils.findElementByLinkText("User Account").click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);

		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {

				Boolean status =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[1]/i"))
						.isDisplayed();
				Thread.sleep(2000);
				if (status.equals(true)) {
					status1 = true;
				} else {
					status1 = false;
					break outerloop;
				}
			}

			int count2 = i + 1;
			if (count2 <= count) {
				//edit user btn element
				WebDriverUtils.findElementByXpath("/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}

		}
		return status1;
	}

	// This method is to check if on click of edit,UI navigates to edit user page
	public static Boolean editUserpageAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("User Account").click();
		Thread.sleep(2000);
		//edit user icon element in add user page
		Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[1]/td[7]/a[1]/i")).click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		String actual_string = WebDriverUtils.findElementByXpath("//*[@id='updateModal']/div/div/div[1]/b").getText();
		String expected_string = "Edit/View User";
		if (actual_string.equals(expected_string)) {
			WebDriverUtils.findElementByXpath("//*[@id='saveChanges']/div[5]/button[2]").click();
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if edit user page contains firstname ,lastname
	// ,email,role and status
	public static Boolean editUserpageFieldscheck() throws Exception {
		WebDriverUtils.implicitlyWait();
		ArrayList<Boolean> actual_status = new ArrayList<Boolean>();
		ArrayList<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("User Account").click();
		Thread.sleep(2000);
		//edit user icon element in add user page
		Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[1]/td[7]/a[1]/i")).click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Boolean status_fn = CommonUtils.findById(FIRSTNAMEID).isDisplayed();
		Boolean status_ln = CommonUtils.findById(LASTNAMEID).isDisplayed();
		Boolean status_email =CommonUtils.findById(EMAILID).isDisplayed();
		Boolean status_status = CommonUtils.findById(UPDATESTATUSID).isDisplayed();
		actual_status.add(status_fn);
		actual_status.add(status_ln);
		actual_status.add(status_email);
		// actual_status.add(status_role);
		actual_status.add(status_status);
		if (actual_status.equals(expected_status)) {
			WebDriverUtils.findElementByXpath("//*[@id='saveChanges']/div[5]/button[2]").click();
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if password can be changed
	public static void changePassword(String userName, String passWord) throws Exception {
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("User Account").click();
		Thread.sleep(2000);
		// int count = 0;
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		Thread.sleep(2000);
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]"))
						.getText();

				if (actual_user.equals(userName))

				{
					//edit user icon element in add user page
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[3]/i")).click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(2000);
					CommonUtils.findById(NEWPASSWORDID).sendKeys(passWord);
					Thread.sleep(2000);
					CommonUtils.findById(CONFIRMPWDID).sendKeys(passWord);
					Thread.sleep(2000);
					//*[@id="changePwd-form"]/div[3]/button[1]
					CommonUtils.findByXpath(SAVECHANGEPWDID).click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Thread.sleep(3000);
					//element-error msg modal
					Browsers.driver.findElement(By.xpath("//*[@id=\"errorMsgModal\"]/div/div/div[3]/button")).click();
					break outerloop;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils
				.findElementByXpath(
						"/html/body/div[1]/div[1]/section/div/div/div/div[2]/nav/ul/li[" + count2 + "]/a")
				.click();
				Thread.sleep(3000);
			}

		}

	}

}*/