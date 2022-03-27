/*package com.kalkitech.doble.classes.dashboard;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Reporter;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.project.Project_old;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Dashboard extends BaseClass {

	public Dashboard(WebDriver driver) {
		super(driver);
	}

	private static WebElement element = null;
	private static WebElement toelement = null;

	// SM Tab locator
	public static WebElement GSEMessagesColumnsTab() throws Exception {
		try {
			element = WebDriverUtils.findElementByClass("toggle");
			Reporter.log("Goose Messages columns are found in menu");
		} catch (Exception e) {
			Reporter.log("Error: Goose Messages columns are not found in menu");
			throw (e);
		}
		return element;
	}

	// Dashboard tab locator in menu
	public static WebElement dashboardTab() throws Exception {
		try {
			element = WebDriverUtils.findElementById("userhome");
			Reporter.log("Dashboard is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: Dashboard is not found in menu");
			throw (e);
		}
		return element;
	}

	// Create project tab locator in Project
	public static WebElement createProject() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Create Project");
			Reporter.log("create project is found in menu");
		} catch (Exception e) {
			Reporter.log("Error: create project is not found in menu");
			throw (e);
		}
		return element;
	}

	// Settings tab in main menu
	public static WebElement settingsInMainMenu() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Settings");
			Reporter.log("Settings is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Settings is not found in menu");
			throw (e);
		}
		return element;
	}

	// Live Data tab in menus
	public static WebElement liveDataTab() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Live Data");
			Reporter.log("Live Data is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Live Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// Save configuration in Live Data tabular and graph
	public static WebElement saveconfiguration() throws Exception {
		try {
			element = WebDriverUtils.findElementById("saveConfiguration");
			Reporter.log("saveconfiguration is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:saveconfiguration is not found in menu");
			throw (e);
		}
		return element;
	}

	// Add Icon in Live Data Graph and Tabular
	public static WebElement addIcon() throws Exception {
		try {
			element = WebDriverUtils.findElementById("addConfiguration");
			Reporter.log("addConfiguration is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:addConfiguration is not found in menu");
			throw (e);
		}
		return element;
	}

	// Graph Tab locator in Menus
	public static WebElement graphTab() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Graph");
			Reporter.log("Graph Tab is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Graph Tab is not found in menu");
			throw (e);
		}
		return element;
	}

	// Save project locator in Project page
	public static WebElement saveProject() throws Exception {
		try {
			element = WebDriverUtils.findElementById("newProject");
			Reporter.log("save project is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:save prject is not found in menu");
			throw (e);
		}
		return element;
	}

	// Delete project locator in project page
	public static WebElement deleteProjects() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteSelProjects");
			Reporter.log("deleteprojects is found in User tab");
		} catch (Exception e) {
			Reporter.log("Error:deleteprojects is found in User tab");
			throw (e);
		}
		return element;
	}

	// Save button locator in Dashboard after changing Ip
	public static WebElement saveBtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("iedSave");
			Reporter.log("save btn is found in edit tab");
		} catch (Exception e) {
			Reporter.log("Error:save btn not is found in edit tab");
			throw (e);
		}
		return element;
	}

	// Delete button in Admin page user tab
	public static WebElement deleteButton() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteHref");
			Reporter.log("delete Button is found in User tab");
		} catch (Exception e) {
			Reporter.log("Error:delete Button is found in User tab");
			throw (e);
		}
		return element;
	}

	// Project tab in menus
	public static WebElement projectTab() throws Exception {
		try {
			element = WebDriverUtils.findElementById("project");
			Reporter.log("project is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:project Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// Open button in project Page list
	public static WebElement openButtonIcon(int rowIndex) throws Exception {
		try {
			element = WebDriverUtils
					.findElementByXpath("//table[@id=\"dtable\"]/tbody/tr[" + rowIndex + "]/td[4]/a[1]");
			Reporter.log("Open button is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:role textbox is not found");
			throw (e);
		}
		return element;
	}

	// Download icon in project page
	public static WebElement downloadIcon(int rowIndex) throws Exception {
		try {
			element = WebDriverUtils
					.findElementByXpath("//table[@id=\"dtable\"]/tbody/tr[" + rowIndex + "]/td[4]/a[2]");
			Reporter.log("download button is found");
		} catch (Exception e) {
			Reporter.log("download button is not found");
			throw (e);
		}
		return element;
	}

	// IED status table locator in dashboard
	public static WebElement iedStatusTableAvailable() throws Exception {
		try {
			element = WebDriverUtils.findElementById("iedTable");
			Reporter.log("IED status Table is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:IED status table Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// Project name locator in Project page
	public static WebElement projectName() throws Exception {
		try {
			element = WebDriverUtils.findElementById("projectName");
			Reporter.log("TextBox is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:TextBox Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// IED Status Table in Dashboard
	public static WebElement iedStatusTableColumns() throws Exception {
		try {
			element = WebDriverUtils.findElementById("iedTable");
			Reporter.log("IED Table is found in menu");
		} catch (Exception e) {
			Reporter.log("IED Table Data is not found in menu");
			throw (e);
		}
		return element;
	}

	// Project save icon in Project page
	public static WebElement projectsavesettingsicon() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td/div/ul/li/a/i");
			Reporter.log("project save button icon is found");
		} catch (Exception e) {
			Reporter.log("Error:project save button icon is not found");
			throw (e);
		}
		return element;
	}

	// Dropdown-notifications-menu after project save in Project page
	public static WebElement ProjectDropdownMenu() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("Dropdown-notifications-menu in Project section is found");
		} catch (Exception e) {
			Reporter.log("Error: Dropdown-notifications-menu in Project section is not found");
			throw (e);
		}
		return element;
	}

	// open project button in Project page locator
	private static WebElement openProjectButtonPopup() throws Exception {
		try {
			element = WebDriverUtils.findElementById("openprojectbtn");
			Reporter.log("open project popup found in menu");
		} catch (Exception e) {
			Reporter.log("open project popup is not found in menu");
			throw (e);
		}
		return element;
	}

	// SCL file icon while creating project in Project page
	public static WebElement sclFiles() throws Exception {
		try {
			element = WebDriverUtils.findElementById("t1");
			Reporter.log("SCL Files icon is found");
		} catch (Exception e) {
			Reporter.log("Error:SCL Files icon is not found");
			throw (e);
		}
		return element;
	}

	// trigger icon while creating project in Project page
	public static WebElement triggers() throws Exception {
		try {
			element = WebDriverUtils.findElementById("t2");
			Reporter.log("triggers icon is found");
		} catch (Exception e) {
			Reporter.log("Error:triggers icon is not found");
			throw (e);
		}
		return element;
	}

	// Live Data icon while creating project in Project page
	public static WebElement liveData() throws Exception {
		try {
			element = WebDriverUtils.findElementById("t3");
			Reporter.log("Live Data icon is found");
		} catch (Exception e) {
			Reporter.log("Error:Live data icon is not found");
			throw (e);
		}
		return element;
	}

	// IP address locator in Dashboard
	public static WebElement ipAddress() throws Exception {
		try {
			element = WebDriverUtils.findElementById("ipAddress");
			Reporter.log("ip address in Table");
		} catch (Exception e) {
			Reporter.log("Error:IP address not found");
			throw (e);
		}
		return element;
	}

	// Method to verify if IED Status Table are available
	public static Boolean iedStatusAvailable() throws Exception {
		Thread.sleep(2000);
		Boolean status = iedStatusTableAvailable().isDisplayed();
		return status;
	}

	//
	public static Boolean commonFunction(List<String> projects) throws Exception {
		Boolean status = false;
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		if (count > 0) {
			for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
				int count1 = rows.size();
				// int count1=10;
				for (int j = 1; j <= count1; j++) {
					String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
							.getText();
					for (int k = 0; k < projects.size(); k++) {
						if (actual_file.equals(projects.get(k))) {
							Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[1]/input"))
							.click();
						}
					}
				}
			}
		}
		Browsers.driver.switchTo().defaultContent();
		Thread.sleep(2000);
		projectsavesettingsicon().click();
		Thread.sleep(2000);
		saveProject().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		projectName().sendKeys("abcde");
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//a[@id='saveAsProject']/button").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		status = true;
		return status;
	}

	// User can edit IP in IED Table
	public static Boolean createSelectedProjects(List<String> projects) throws Exception {
		Boolean actual_status = null;
		Thread.sleep(2000);
		projectTab().click();
		Thread.sleep(1000);
		ProjectDropdownMenu().click();
		Thread.sleep(2000);
		createProject().click();
		Thread.sleep(2000);
		triggers().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().frame("tgrFrame");
		actual_status = commonFunction(projects);
		Thread.sleep(2000);
		liveData().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().frame("lgrphFrame");
		actual_status = commonFunction(projects);
		return actual_status;
	}

	// Checking Status of IEDs in Dashboard
	public static Boolean checkStatusforAllIEDs() throws Exception {
		dashboardTab().click();
		Thread.sleep(2000);
		Boolean iedtable = iedStatusAvailable();
		Thread.sleep(2000);
		if (iedtable) {
			String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
			int count = Integer.parseInt(pagination);
			for (int i = 1; i <= count; i++) {
				//to get the Ip table in dashboard
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='iedTable']/tbody/tr"));// IED table
				int count1 = rows.size();
				for (int j = 1; j < count1; j++) {
					String statusofIp = Browsers.driver.findElement(By.xpath("//*[@id=\"iedTable\"]/tbody/tr[" + j + "]/td[4]"))
							.getText();// To get status of IPs in dashboard
					if (statusofIp == null)
						return false;
					break;
				}
			}
		}
		return true;
	}

	// To edit Ip in Dashboard
	public static Boolean editIPIEDTable() throws Exception {
		Boolean status = false;
		Boolean iedtable = iedStatusAvailable();
		Thread.sleep(2000);
		if (iedtable) {
			Thread.sleep(2000);
			String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
			int count = Integer.parseInt(pagination);
			if (count > 0) {
				Browsers.driver.findElement(By.xpath("//*[@id=\"iedTable\"]/tbody/tr")).click();// getting IED table in dashboard
				Thread.sleep(2000);
				Browsers.driver.switchTo().activeElement();
				Thread.sleep(1000);
				ipAddress().clear();
				Thread.sleep(1000);
				//change the current ip from ip list
				ipAddress().sendKeys("192.168.123.1");
				Thread.sleep(1000);
				saveBtn().click();
				Browsers.driver.switchTo().activeElement();
				Thread.sleep(3000);
				String expected_ip = Browsers.driver.findElement(By.xpath("//table[@id='iedTable']/tbody/tr[1]/td[3]"))
						.getText();// select a particular IP Address from IED status table
				if (expected_ip.equals("192.168.123.1")) {
					status = true;
					return status;
				} else
					return false;
			} else
				return false;
		}
		return status;
	}

	// to enter invalid ip address and check
	public static Boolean invalidIPIEDTable() throws Exception {
		Boolean status = false;
		Project_old.clearData();
		SCLFileLoading_old.selectOneIED();
		dashboardTab().click();
		Thread.sleep(2000);
		Boolean iedtable = iedStatusAvailable();
		Thread.sleep(2000);
		if (iedtable) {
			Thread.sleep(2000);
			String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
			int count = Integer.parseInt(pagination);
			if (count > 0) {
				Browsers.driver.findElement(By.xpath("//*[@id=\"iedTable\"]/tbody/tr")).click();// IED table click
				Thread.sleep(1000);
				Browsers.driver.switchTo().activeElement();
				Thread.sleep(1000);
				ipAddress().clear();
				Thread.sleep(2000);
				ipAddress().sendKeys("1000.168.123.1");// change the IP
				Thread.sleep(2000);
				saveBtn().click();// Save the IP
				String actual_msg = WebDriverUtils.Alert_getText();
				if (actual_msg.equals("You have entered an invalid IP address!")) {
					status = true;
					return status;
				} else
					return false;
			} else
				return false;
		}
		return status;
	}

	//// User can select the scl files,trigger configuration and live data graph for
	//// project creation
	public static Boolean selectSCLorSV() throws Exception {
		Boolean status = false;
		Thread.sleep(2000);
		projectTab().click();
		Thread.sleep(1000);
		ProjectDropdownMenu().click();
		Thread.sleep(2000);
		createProject().click();
		Thread.sleep(2000);
		sclFiles().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().frame("sclFrame");
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		if (count > 0) {
			for (int i = 1; i <= count; i++) {
				List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
				int count1 = rows.size();
				// int count1=10;
				for (int j = 1; j <= count1; j++) {
					// open or load project from project list(project load icon detector)
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[1]/input")).click();
					Thread.sleep(2000);
				}
			}
		} else {
			return false;
		}
		Browsers.driver.switchTo().defaultContent();
		Thread.sleep(2000);
		projectsavesettingsicon().click();
		Thread.sleep(2000);
		saveProject().click();
		Thread.sleep(2000);
		// delete existing project then add it.
		projectName().sendKeys("abcde1");
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//a[@id='saveAsProject']/button").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		status = true;
		return status;
	}

	//Method to select live data for project creation
	public static Boolean selectLiveData() throws Exception {
		Thread.sleep(2000);
		Boolean status = false;
		Thread.sleep(1000);
		liveDataTab().click();
		Thread.sleep(1000);
		graphTab().click();
		Thread.sleep(1000);
		element = GooseMessages_old.gooseMessageInLiveDataGraphColumns();
		toelement = GooseMessages_old.gooseLiveDataTable();
		Thread.sleep(10000);
		Actions builder = new Actions(Browsers.driver);
		builder.clickAndHold(element).moveToElement(toelement).build();
		builder.dragAndDrop(element, toelement).build().perform();
		Thread.sleep(4000);
		saveconfiguration().click();
		status = true;
		return status;
	}

	// Method to verify columns are available or not
	public static Boolean columnCheckInIEDTable() throws Exception {
		Thread.sleep(2000);
		ArrayList<String> actual_columns = new ArrayList<String>();
		dashboardTab().click();
		Thread.sleep(2000);
		for (int i = 1; i <= 4; i++) {
			String text = WebDriverUtils.findElementByXpath("//*[@id='iedTable']/thead/tr/th[" + i + "]").getText();
			Thread.sleep(2000);
			actual_columns.add(text);
		}
		ArrayList<String> extected_columns = new ArrayList<String>();
		extected_columns.add("IED Name");
		extected_columns.add("Access Point");
		extected_columns.add("IP Address");
		extected_columns.add("Status");
		if (actual_columns.equals(extected_columns)) {
			return true;
		} else {
			return false;
		}

	}

	// method to check open project
	public static Boolean openProjectSkipMatches(String projectName) throws Exception {
		boolean status = false;
		projectTab().click();
		Thread.sleep(1000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("dtable"));
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		// Print data from each row
		int rowIndex = 0;
		outerloop: for (WebElement row : rows) {
			List<WebElement> cols = row.findElements(By.tagName("td"));
			int colIndexi = 0;
			for (WebElement col : cols) {
				if (colIndexi == 1) {
					if (projectName.equalsIgnoreCase(col.getText())) {
						element = openButtonIcon(rowIndex);
						element.click();
						Thread.sleep(1000);
						Browsers.driver.switchTo().activeElement();
						openProjectButtonPopup().click();
						Thread.sleep(2000);
						status = true;
						break outerloop;
					}
				}
				colIndexi++;
			}
			rowIndex++;
		}
		return status;
	}

	//Check for multiple projects in project page
	public static Boolean checkMultipleProjectExists(List<String> projects) throws Exception {
		Boolean status = false;
		Thread.sleep(2000);
		Thread.sleep(1000);
		projectTab().click();
		Thread.sleep(1000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		if (count == 0) {
			status = false;
		}
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
						.getText();// check the required project name from project table
				for (int k = 0; k < projects.size(); k++) {
					if (actual_file.equals(projects.get(k))) {
						status = true;
					}
				}
			}
		}
		return status;
	}

	//Delete a single project from project list
	public static void deleteOneProject(String projectName) throws Exception {
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("Project").click();
		Thread.sleep(2000);
		// int count = 0;
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// int checkboxCount =0;
			for (int j = 1; j <= count1; j++) {
				String actual_project = Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]"))
						.getText();// to find the project from list
				if (actual_project.equals(projectName)) {
					// click on delete tab locator
					Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[4]/a[3]")).click();
				}
			}
		}
		Thread.sleep(2000);
		ProjectDropdownMenu().click();
		Thread.sleep(2000);
		deleteProjects().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
	}

	// Delete projects with names abcdef and hellohii
	public static void deleteProjects(List<String> projectNames) throws Exception {
		Thread.sleep(2000);
		WebDriverUtils.findElementByLinkText("Project").click();
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		// Iterate through pages
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// Iterate through entries in the table on a particular page
			for (int j = 1; j <= count1; j++) {
				String actual_project = Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[2]"))
						.getText();//project2
				// search for project names with string "abcdef" and "hellohii" and click on checkbox
				for (int k = 0; k < projectNames.size(); k++) {
					if (actual_project.equals(projectNames.get(k))) {
						// Checkbox marked for deletion
						Browsers.driver.findElement(By.xpath("//table[@id='dtable']/tbody/tr[" + j + "]/td[1]/input")).click();
						Thread.sleep(2000);
					}
				}
			}
			Thread.sleep(2000);
			// Deleting the projects using "Delete button" under Settings menu
			ProjectDropdownMenu().click();
			Thread.sleep(2000);
			deleteProjects().click();
			Thread.sleep(2000);
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(2000);
			//Click on Delete button in Confirmation Dialog box
			WebDriverUtils.findElementByXpath("//a[@id='deleteHref']/button").click();
			Thread.sleep(2000);
			Browsers.driver.switchTo().activeElement();
			Thread.sleep(2000);
		}
	}

	// Create project in project
	public static void createProject(String projectName) throws Exception {
		Thread.sleep(2000);
		projectTab().click();
		Thread.sleep(1000);
		ProjectDropdownMenu().click();
		Thread.sleep(2000);
		createProject().click();
		Thread.sleep(2000);
		sclFiles().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().frame("sclFrame");
		Thread.sleep(2000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			// int count1=10;
			for (int j = 1; j <= count1; j++) {
				Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[1]/input")).click();
				Thread.sleep(2000);
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("/html/body/div/nav/ul/li[" + count2 + "]/a").click();
				Thread.sleep(3000);
			}
		}
		Browsers.driver.switchTo().defaultContent();
		Thread.sleep(2000);
		projectsavesettingsicon().click();
		Thread.sleep(2000);
		saveProject().click();
		Thread.sleep(2000);
		Thread.sleep(2000);
		projectName().sendKeys(projectName);
		Thread.sleep(2000);
		WebDriverUtils.findElementByXpath("//a[@id='saveAsProject']/button").click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(2000);
	}

	// Check for a project if exists in project list in project page
	public static Boolean checkProjectExists(String projectName) throws Exception {
		Boolean status = false;
		System.out.println("file name " + projectName);
		Thread.sleep(2000);
		Thread.sleep(1000);
		projectTab().click();
		Thread.sleep(1000);
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(pagination);
		if (count == 0) {
			status = false;
		}
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
						.getText();
				System.out.println("actual file is " + actual_file);
				if (actual_file.equals(projectName)) {
					status = true;
					break outerloop;
				}
			}
		}
		return status;
	}

	// Download project from project page
	public static Boolean downloadProject(String projectName) throws Exception {
		boolean status = false;
		projectTab().click();
		Thread.sleep(1000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("dtable"));
		System.out.println("got the table");
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		// Print data from each row
		int rowIndex = 0;
		outerloop: for (WebElement row : rows) {
			List<WebElement> cols = row.findElements(By.tagName("td"));
			int colIndexi = 0;
			for (WebElement col : cols) {
				if (colIndexi == 1) {
					System.out.print(col.getText() + "\t");
					if (projectName.equalsIgnoreCase(col.getText())) {
						System.out.print("inside if ");
						element = downloadIcon(rowIndex);
						element.click();
						Thread.sleep(1000);
						status = true;
						break outerloop;
					} else {
						System.out.print("inside else");
					}
				}
				colIndexi++;
			}
			rowIndex++;
		}
		return status;
	}


	// to click all menus and check if available or not
	public static Boolean menuOptions() throws Exception {
		//Element-Dashboard
		//if dashboard is present then go for next menus or else return false
		Boolean stat1 = Browsers.driver.findElement(By.linkText("Dashboard")).isDisplayed();
		if (stat1) {
			Browsers.driver.findElement(By.linkText("Dashboard")).click();
			Thread.sleep(2000);
			//Element-SCL files in menu
			Boolean stat2 = Browsers.driver.findElement(By.linkText("SCL Files")).isDisplayed();
			if (stat2) {
				Browsers.driver.findElement(By.linkText("SCL Files")).click();
				Thread.sleep(2000);
				//if station message is displayed and present then go for sub menus
				Boolean stat3 = Browsers.driver.findElement(By.linkText("Station Messages")).isDisplayed();
				if (stat3) {
					Browsers.driver.findElement(By.linkText("Station Messages")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.linkText("GSE Messages")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("/html/body/div[1]/header/nav/a")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.linkText("Sampled Values")).click();
					Thread.sleep(2000);
					Browsers.driver.findElement(By.xpath("/html/body/div[1]/header/nav/a")).click();
					//If Live data is displayed go for other menus like trigger
					Boolean stat4 = Browsers.driver.findElement(By.linkText("Live Data")).isDisplayed();
					if (stat4) {
						Boolean stat5 = Browsers.driver.findElement(By.linkText("Trigger")).isDisplayed();
						if (stat5) {
							Browsers.driver.findElement(By.linkText("Trigger")).click();
							Thread.sleep(2000);
							// Browsers.driver.findElement(By.linkText("Trigger List")).click();
							Boolean stat6 = Browsers.driver.findElement(By.linkText("Project")).isDisplayed();
							if (stat6) {
								Browsers.driver.findElement(By.linkText("Project")).click();
								Thread.sleep(2000);
								Boolean stat7 = Browsers.driver.findElement(By.linkText("Analysis")).isDisplayed();
								if (stat7) {
									Browsers.driver.findElement(By.linkText("Analysis")).click();
									Thread.sleep(2000);
									Boolean stat8 = Browsers.driver.findElement(By.linkText("Settings")).isDisplayed();
									if (stat8) {
										Browsers.driver.findElement(By.linkText("Settings")).click();
										Thread.sleep(2000);
										return true;
									} else
										return false;
								} else
									return false;
							} else
								return false;
						} else
							return false;
					} else
						return false;
				} else
					return false;
			} else
				return false;
		} else
			return false;
	}

}*/