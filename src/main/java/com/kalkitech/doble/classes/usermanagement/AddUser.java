/*package com.kalkitech.doble.classes.usermanagement;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.classes.login.Login;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.CommonUtils;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class AddUser extends BaseClass {


	//private static final String ACCNTSETTNGBTNXPATH = "/html/body/div/header/nav/div/ul/li[1]/a/span";
	private static final String USERTABLINKTEXT = "User Account";
	private static final String USERTABXPATH = "//*[@id=\"systemuserhome\"]/a/span";
	private static final String USERLISTTABLEID = "dtable";
	private static final String SETTINGSICONXPATH = "//li[@class ='dropdown notifications-menu']/a/i";
	private static final String ADDBTNID = "addUser";
	private static final String FIRSTNAMEID = "aFirstName";
	private static final String LASTNAMEID = "aLastName";
	private static final String USERNAMEID = "aUserName";
	private static final String EMAILID = "aEmail";
	private static final String STATUSID = "status";
	private static final String PASSWORDID = "aPassword";
	private static final String CONFIRMPWDID = "aConfirmPassword";
	private static final String ACNTPASSWORD = "currentpass";
	private static final String NEWPWDID = "newpassword";
	//private static final String CONFIRMPASSID = "confirmpass";
	private static final String ADDUSERID = "add";
	private static final String CLOSEBTNXPATH = "//*[@id=\"register-form\"]/div[8]/button[2]";
	////private static final String LOGOUTXPATH = "/html/body/div[1]/header/nav/div/ul/li/ul/li[5]/a/i";
	//private static final String ADMINLOGOUTXPATH = "/html/body/div[1]/header/nav/div/ul/li/a";
	private static final String ROLEXPATH = "//form[@id='register-form']/div[7]/div[1]/select";

	public AddUser(WebDriver driver) {
		super(driver);
	}

	// This method is to verify if User tab is available
	public static boolean UsertabAvailable() throws Exception {
		Thread.sleep(2000);
		Boolean status = CommonUtils.findByLinkText(USERTABLINKTEXT).isDisplayed();
		return status;
	}

	// Checking if add user page is available
	public static void UserpageAvailable() throws Exception {
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
	}

	// This method is to verify if User list table is available
	public static boolean UserlistAvailable() throws Exception {
		Thread.sleep(5000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(5000);
		Boolean status = CommonUtils.findById(USERLISTTABLEID).isDisplayed();
		return status;
	}

	// This method is to verify if only administrator can view “Users” tab
	public static boolean Viewusertab(String userName, String passWord) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean status = CommonUtils.findByLinkText(USERTABLINKTEXT).isDisplayed();
		return status;
	}

	// This method is to verify if Add User btn is available
	public static boolean AdduserbtnAvailable() throws Exception {
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		Boolean status = CommonUtils.findById(ADDBTNID).isDisplayed();
		return status;

	}

	// This method is to verify if firstname takes only string
	public static boolean firstnameType() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Thread.sleep(2000);
		String actual_type = CommonUtils.findById(FIRSTNAMEID).getAttribute("type");
		String expected_type = "text";
		if (actual_type.equals(expected_type)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to verify if lastname takes only string
	public static boolean lastnameType() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Thread.sleep(2000);
		String actual_type = CommonUtils.findById(LASTNAMEID).getAttribute("type");
		String expected_type = "text";
		if (actual_type.equals(expected_type)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to verify Checking if add user page is available
	public static boolean adduserPageAvailable() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(4000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(4000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(4000);
		CommonUtils.findById(ADDBTNID).click();
		Thread.sleep(4000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		// element add user in user tab in admin page
		String actual_string = WebDriverUtils.findElementByXpath("//*[@id='addModal']/div/div/div[1]/b").getText();
		String expected_string = "Add User";
		if (actual_string.equals(expected_string)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to verify Checking if all fields are available in add user
	// page
	public static boolean adduserPageFieldsCheck() throws Exception {
		ArrayList<Boolean> actual_status = new ArrayList<Boolean>();
		ArrayList<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		Thread.sleep(4000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(4000);
		CommonUtils.findById(ADDBTNID).click();
		Thread.sleep(4000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(4000);
		Boolean status_fn = CommonUtils.findById(FIRSTNAMEID).isDisplayed();
		Boolean status_ln = CommonUtils.findById(LASTNAMEID).isDisplayed();
		Boolean user_name = CommonUtils.findById(USERNAMEID).isDisplayed();
		Boolean password = CommonUtils.findById(PASSWORDID).isDisplayed();
		Boolean confirm_password = CommonUtils.findById(CONFIRMPWDID).isDisplayed();
		Boolean status_email = CommonUtils.findById(EMAILID).isDisplayed();
		Boolean status_status = CommonUtils.findById(STATUSID).isDisplayed();
		actual_status.add(status_fn);
		actual_status.add(status_ln);
		actual_status.add(user_name);
		actual_status.add(password);
		actual_status.add(confirm_password);
		actual_status.add(status_email);
		actual_status.add(status_status);
		if (actual_status.equals(expected_status)) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean addRole(List<String> userdetails) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Boolean status = null;
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		String user=userdetails.get(1);
		System.out.print(user);
		outerloop: for (int i = 1; i <= count; i++)
		{
			List<WebElement> rows =  Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++)
			{
				String actual_user =  Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]")).getText();
				if (actual_user.equals(user))
				{
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[7]/a[1]/i")).click();
					Thread.sleep(2000);
					Browsers.driver.switchTo().activeElement();
					Browsers.driver.findElement(By.xpath("//*[@id=\"ustatus\"]")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"ustatus\"]/option[2]")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("//*[@id=\"saveChanges\"]/div[5]/button[1]")).click();
					Thread.sleep(2000);
					Login.logout();
					Thread.sleep(2000);
					status = true;
					break outerloop;
				}
				else
				{
					status = false;

				}
			}
		}
		return status;

	}

	// creating user using same email
	public static boolean sameNameEmailCreation(List<String> userdetails) throws Exception {
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String email = userdetails.get(3);
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
		CommonUtils.findById(USERNAMEID).sendKeys(username);
		CommonUtils.findById(PASSWORDID).sendKeys(password);
		CommonUtils.findById(CONFIRMPWDID).sendKeys(password);
		CommonUtils.findById(EMAILID).sendKeys(email);
		Thread.sleep(2000);
		CommonUtils.findById(ADDUSERID).click();
		Thread.sleep(2000);
		return true;
	}

	// This method is to check if user is added
	public static void addUser(List<String> userdetails) throws Exception {
		WebDriverUtils.implicitlyWait();
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String cpassword = userdetails.get(2);
		String email = userdetails.get(3);
		Boolean test = RemoveUser.CheckUser(username);
		if (test.equals(false)) {
			CommonUtils.findByLinkText(USERTABLINKTEXT).click();
			Thread.sleep(2000);
			CommonUtils.findByXpath(SETTINGSICONXPATH).click();
			Thread.sleep(2000);
			CommonUtils.findById(ADDBTNID).click();
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(2000);
			CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
			CommonUtils.findById(USERNAMEID).sendKeys(username);
			CommonUtils.findById(PASSWORDID).sendKeys(password);
			CommonUtils.findById(CONFIRMPWDID).sendKeys(cpassword);
			CommonUtils.findById(EMAILID).sendKeys(email);
			CommonUtils.findById(ADDUSERID).click();
			Thread.sleep(2000);
		}
	}

	// This method is to check if user can change password
	public static boolean changePwd(String pass) throws Exception {
		Thread.sleep(2000);
		CommonUtils.findByXpath("/html/body/div[1]/header/nav/div/ul/li[4]/a").click();
		Thread.sleep(2000);
		// pwd change element in account setting
		Browsers.driver.findElement(By.xpath("/html/body/div[1]/header/nav/div/ul/li[4]/ul/li[3]/a")).click();
		Thread.sleep(2000);
		CommonUtils.findById(ACNTPASSWORD).sendKeys(pass);
		CommonUtils.findById(NEWPWDID).sendKeys("Abcd@1234");
		//confirm pwd xpath element in account settings
		CommonUtils.findByXpath("//*[@id=\"confirmpass\"]").sendKeys("Abcd@1234");
		Thread.sleep(2000);
		// reset pwd element in account settings page
		Browsers.driver.findElement(By.xpath("//*[@id=\"resetpwdForm\"]/div/div[1]/div/span/button/i")).click();
		Thread.sleep(2000);
		//close button for modal window click
		Browsers.driver.findElement(By.xpath("//*[@id=\"errorMsgModal\"]/div/div/div[3]/button")).click();
		return true;
	}

	// This method is to check if errormsg is displayed on different password and
	// confirm password
	public static boolean errorCheckOnPasswordMismatch(List<String> userdetails) throws Exception {
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String cn_password = userdetails.get(3);
		String email = userdetails.get(4);
		Thread.sleep(4000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(4000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
		Thread.sleep(2000);
		CommonUtils.findById(USERNAMEID).sendKeys(username);
		Thread.sleep(2000);
		CommonUtils.findById(PASSWORDID).sendKeys(password);
		Thread.sleep(2000);
		CommonUtils.findById(CONFIRMPWDID).sendKeys(cn_password);
		Thread.sleep(2000);
		CommonUtils.findById(EMAILID).sendKeys(email);
		Thread.sleep(2000);
		CommonUtils.findById(ADDUSERID).click();
		Thread.sleep(2000);
		String act_msg = CommonUtils.findById(CONFIRMPWDID).getAttribute("validationMessage");
		String exp_msg = "Passwords Don't Match";
		Thread.sleep(3000);
		if (act_msg.equals(exp_msg)) {
			WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
			return true;
		} else {
			return false;
		}
	}

	// method to check if any username grater than limit
	public static boolean limitUsername(List<String> userdetails) throws Exception {
		Boolean stat = false;
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String cn_password = userdetails.get(3);
		String email = userdetails.get(4);
		int uname = username.length();
		Thread.sleep(4000);
		Thread.sleep(4000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
		CommonUtils.findById(USERNAMEID).sendKeys(username);
		if (uname > 40) {
			stat = true;
		}
		CommonUtils.findById(PASSWORDID).sendKeys(password);
		CommonUtils.findById(CONFIRMPWDID).sendKeys(cn_password);
		CommonUtils.findById(EMAILID).sendKeys(email);
		CommonUtils.findById(ADDBTNID).click();
		return stat;

	}

	// This method is to check if errormsg is displayed on entering already existing
	// userName
	public static boolean errorOnAlreadyExistingUserName(List<String> userdetails) throws Exception {
		try {
			Thread.sleep(2000);
			String firstname = userdetails.get(0);
			String username = userdetails.get(1);
			String password = userdetails.get(2);
			String cn_password = userdetails.get(3);
			String email = userdetails.get(4);
			Thread.sleep(4000);
			CommonUtils.findByXpath(USERTABXPATH).click();
			Thread.sleep(2000);
			CommonUtils.findByXpath(SETTINGSICONXPATH).click();
			Thread.sleep(2000);
			CommonUtils.findById(ADDBTNID).click();
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(2000);
			CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
			Thread.sleep(2000);
			CommonUtils.findById(USERNAMEID).sendKeys(username);
			Thread.sleep(2000);
			CommonUtils.findById(PASSWORDID).sendKeys(password);
			Thread.sleep(2000);
			CommonUtils.findById(CONFIRMPWDID).sendKeys(cn_password);
			CommonUtils.findById(EMAILID).sendKeys(email);
			Thread.sleep(2000);
			CommonUtils.findById(ADDUSERID).click();
			// driver.switchTo().alert();
			Thread.sleep(2000);
			String act_msg =  Browsers.driver.switchTo().alert().getText();
			String exp_msg = "Failed to save the info. User Name may exists";
			Thread.sleep(3000);
			Browsers.driver.switchTo().alert().accept();
			if (act_msg.equals(exp_msg)) {
				Thread.sleep(2000);
				WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
				return true;
			}
			return true;
		} catch (NoAlertPresentException ex) {

			return false;

		}
	}

	// check password can be generated with all charaters
	public static boolean allPossiblePassword(List<String> userdetails) throws Exception {
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String cn_password = userdetails.get(3);
		String email = userdetails.get(4);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
		CommonUtils.findById(USERNAMEID).sendKeys(username);
		CommonUtils.findById(PASSWORDID).sendKeys(password);
		CommonUtils.findById(CONFIRMPWDID).sendKeys(cn_password);
		CommonUtils.findById(EMAILID).sendKeys(email);
		CommonUtils.findById(ADDUSERID).click();
		String expected = cn_password;
		if (password.equals(expected)) {
			WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
			Reporter.log("Password can be generated with all charaters");
			return true;
		} else
		{
			Reporter.log("Error : Password could not be generated with all charaters");
			return false;
		}
	}

	// This method is to check if errormsg is displayed on weak password
	public static boolean errorCheckOnWeakPassword() throws Exception {
		Thread.sleep(5000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		String act_msg = CommonUtils.findById(PASSWORDID).getAttribute("title");
		String exp_msg = "Enter a password, it must contain at least 1 lowercase and 1 uppercase character 1 number and special character least 8 characters  and not more than 20 characters in length";
		Thread.sleep(3000);
		if (act_msg.equals(exp_msg)) {
			WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
			return true;
		} else {
			return false;
		}
	}

	// method to check if error displayed on password containg charaters more than
	// limit
	public static boolean errorOnPasswordLimit() throws Exception {
		Thread.sleep(5000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		String act_msg = CommonUtils.findById(PASSWORDID).getAttribute("title");
		String exp_msg = "Enter a password, it must contain at least 1 lowercase and 1 uppercase character 1 number and special character least 8 characters  and not more than 20 characters in length";
		Thread.sleep(3000);
		if (act_msg.equals(exp_msg)) {
			WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
			return true;
		} else {
			return false;
		}

	}

	// This method is to check types of roles
	public static boolean rolesCheck() throws Exception {
		Thread.sleep(2000);
		ArrayList<String> act_roles = new ArrayList<String>();
		ArrayList<String> exp_roles = new ArrayList<String>();
		exp_roles.add("User");
		exp_roles.add("Operator");
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		WebElement element = CommonUtils.findByXpath(ROLEXPATH);
		List<WebElement> allOptions = WebDriverUtils.selectAllOptions(element);
		for (int i = 0; i < allOptions.size(); i++) {
			String text = allOptions.get(i).getText();
			act_roles.add(text);
		}
		Thread.sleep(3000);
		if (act_roles.equals(exp_roles)) {
			WebDriverUtils.findElementByXpath("//*[@id='register-form']/div[8]/button[2]").click();
			return true;
		} else {
			return false;
		}
	}

	// This method is to check id add button is available in add user page
	public static boolean addBtnInAddUserPage() throws Exception {
		Thread.sleep(4000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(4000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		Boolean status =  CommonUtils.findById(ADDUSERID).isDisplayed();
		if (status.equals(true)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check id close button is available in add user page
	public static boolean closeBtnInAddUserPage() throws Exception {
		Thread.sleep(2000);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		Boolean status = CommonUtils.findByXpath(CLOSEBTNXPATH).isDisplayed();
		if (status.equals(true)) {
			return true;
		} else {
			return false;
		}
	}

	// This method is to check if user is not added on close btn
	public static Boolean userNotAddedOnClose(List<String> userdetails) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		String firstname = userdetails.get(0);
		String username = userdetails.get(1);
		String password = userdetails.get(2);
		String email = userdetails.get(3);
		CommonUtils.findByLinkText(USERTABLINKTEXT).click();
		Thread.sleep(2000);
		CommonUtils.findByXpath(SETTINGSICONXPATH).click();
		Thread.sleep(2000);
		CommonUtils.findById(ADDBTNID).click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		CommonUtils.findById(FIRSTNAMEID).sendKeys(firstname);
		CommonUtils.findById(USERNAMEID).sendKeys(username);
		CommonUtils.findById(PASSWORDID).sendKeys(password);
		CommonUtils.findById(CONFIRMPWDID).sendKeys(password);
		CommonUtils.findById(EMAILID).sendKeys(email);
		Thread.sleep(2000);
		CommonUtils.findByXpath(CLOSEBTNXPATH).click();
		return true;
	}
}*/