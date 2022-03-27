/*package com.kalkitech.doble.classes.project;

import java.io.File;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.livedata.LiveData;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.classes.trigger.TriggerEditor;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Project_old extends BaseClass {

	public Project_old(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;

	// deleteSelProjects
	public static WebElement deleteSelectedProject() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteSelProjects");
			Reporter.log("deleteSelProjects is found");
		} catch (Exception e) {
			Reporter.log("Error:deleteSelProjects is not found");
			throw (e);
		}
		return element;
	}

	//Element-Select all project checkbox
	public static WebElement selectAllProject() throws Exception {
		try {
			element = WebDriverUtils.findElementById("select_all");
			Reporter.log("selectAllProject is found");
		} catch (Exception e) {
			Reporter.log("Error:selectAllProject is not found");
			throw (e);
		}
		return element;
	}

	// Element - search
	public static WebElement Search() throws Exception {
		try {
			element = WebDriverUtils.findElementByName("table_search");
			Reporter.log("search textbox is found");
		} catch (Exception e) {
			Reporter.log("Error:search textbox is not found");
			throw (e);
		}
		return element;
	}

	//Element-Total pages in project List
	public static WebElement totalPages() throws Exception {
		try {
			element = WebDriverUtils.findElementById("totatlpages");
			Reporter.log("totalPages is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:totalPages is not found in menu");
			throw (e);
		}
		return element;
	}

	// Element -Projects in menu
	public static WebElement project() throws Exception {
		try {
			element = WebDriverUtils.findElementById("project");
			Reporter.log("Project is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Project is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-toggle bar in Live Data
	public static WebElement sidebartoggle() throws Exception {
		try {
			element = WebDriverUtils.findElementById("/html/body/div[1]/header/nav/a");
			Reporter.log("Project is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Project is not found in menu");
			throw (e);
		}
		return element;
	}

	// Menu - Settings in Project
	public static WebElement projectMenuSettings() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath(
					"/html/body/div[1]/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("ProjectMenu Settings is found in SCL FIles");
		} catch (Exception e) {
			Reporter.log("Error:ProjectMenu Settings is not found in SCL FIles");
			throw (e);
		}
		return element;
	}

	// Element - upload button in settings
	public static WebElement Upload() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Import");
			Reporter.log("upload is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:upload is not found in settings");
			throw (e);
		}
		return element;
	}

	// Element - fileInputTextField
	public static WebElement fileInputTextField() throws Exception {
		try {
			element = WebDriverUtils.findElementById("projectFile");
			Reporter.log("fileInputTextField is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:fileInputTextField is not found in settings");
			throw (e);
		}
		return element;
	}

	//element-Create project btn
	public static WebElement createProject() throws Exception {
		try {
			element = WebDriverUtils.findElementByLinkText("Create Project");
			Reporter.log("Create Project is found in settings");
		} catch (Exception e) {
			Reporter.log("Error:Create Project is not found in settings");
			throw (e);
		}
		return element;
	}

	// Element - Submit button in upload screen
	public static WebElement Submit() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"singleUploadForm\"]/div[2]/button");
			Reporter.log("Submit button found in upload screen");
		} catch (Exception e) {
			Reporter.log("Error:Submit button  found in upload screen");
			throw (e);
		}
		return element;
	}

	//Element-Deletebtn in project list
	public static WebElement deleteButton(int rowIndex) throws Exception {
		try {
			element = Browsers.driver.findElement(By.xpath("//table[@id=\"dtable\"]/tbody/tr[" + rowIndex + "]/td[4]/a[5]"));
			Reporter.log("delete button found");
		} catch (Exception e) {
			Reporter.log("Error:role textbox is not found");
			throw (e);
		}
		return element;
	}

	//Delete btn in pop up window element
	public static WebElement deleteButtonPopup() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"deleteModal\"]/div/div/div[3]/a"); /// button
			Reporter.log("delete button pop up found");
		} catch (Exception e) {
			Reporter.log("Error:deleteButtonPopup is not found");
			throw (e);
		}
		return element;
	}

	public static WebElement commonMsgPopup() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"commonMsgModal\"]/div/div/div[3]/button"); /// button

		} catch (Exception e) {
			Reporter.log("commonMsgPopup close is not found");
			throw (e);
		}
		return element;
	}

	//Element-clear project btn in project page
	public static WebElement clearProjectBtn() throws Exception {
		try {
			element = WebDriverUtils.findElementById("clearProjectLink");
			Reporter.log("clearProjectLink is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:clearProjectLink is not found in menu");
			throw (e);
		}
		return element;
	}

	//Element-clear btn option in project page
	public static WebElement clearButton() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"clearProjeConfrm\"]/button");
			Reporter.log("clearButton is found in menu");
		} catch (Exception e) {
			Reporter.log("Error:Clear button is not found");
			throw (e);
		}
		return element;
	}

	//element live data configuration
	public static Boolean liveDataConfigElement(String configName) throws Exception {
		Boolean status = false;
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"configurationList\"]");
			Thread.sleep(2000);
			List<WebElement> list = element.findElements(By.tagName("option"));
			Thread.sleep(2000);
			for (WebElement element : list) {
				if (element.getText().equals(configName)) {
					status=true;
				}
				Thread.sleep(2000);
			}
			Thread.sleep(2000);
		} catch (Exception e) {
			Reporter.log("liveDataConfigElement is not found");
			throw (e);
		}
		return status;
	}

	// This method is to check if file is available in file system table
	public static Boolean wordSearchInTable(String xPath, String searchWord, String columnPos) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		Thread.sleep(2000);
		String pagination = totalPages().getAttribute("value");
		int count = Integer.parseInt(pagination);
		if (count == 0) {
			status = false;
		}
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath(xPath));
			int count1 = rows.size();
			Thread.sleep(2000);
			for (int j = 1; j <= count1; j++) {
				String actual_String = Browsers.driver.findElement(By.xpath(xPath + "[" + j + "]/td[" + columnPos + "]"))
						.getText();
				Thread.sleep(2000);
				if (actual_String.equals(searchWord)) {
					status = true;
					break outerloop;
				} else {
					status = false;
				}
			}
			int count2 = i + 1;
			if (count2 <= count) {
				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
			}
			Thread.sleep(2000);
		}
		return status;
	}

	// This method is to check if file is available in file system table
	public static Boolean CheckFileInFileSystem(String file) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		Thread.sleep(2000);
		String pagination = totalPages().getAttribute("value");
		if (pagination == null || pagination == "" || pagination.equals("")) {
			return false;
		}
		int count = Integer.parseInt(pagination);
		if (count == 0) {
			status = false;
		}
		outerloop: for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			Thread.sleep(2000);
			for (int j = 1; j <= count1; j++) {

				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
						.getText();
				if (actual_file.equals(file)) {
					status = true;
					break outerloop;
				}
			}
			Thread.sleep(2000);
		}
		return status;
	}

	// This method is to check if file is available in file system table
	public static WebElement openProjectElement(String file) throws Exception {
		WebDriverUtils.implicitlyWait();
		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		Thread.sleep(2000);
		int count = Integer.parseInt(pagination);
		if (count == 0) {
			return null;
		}
		for (int i = 1; i <= count; i++) {
			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
			int count1 = rows.size();
			Thread.sleep(2000);
			for (int j = 1; j <= count1; j++) {
				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
						.getText();
				if (actual_file.equals(file)) {
					element = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[4]/a[1]"));
					return element;
				}
			}
		}
		return null;
	}

	// Element - Submit button in upload screen
	public static WebElement openProjectDialogButton() throws Exception {
		try {
			element = WebDriverUtils.findElementById("openprojectbtn");
			Reporter.log("openProjectDialogButton found in  screen");
		} catch (Exception e) {
			Reporter.log("openProjectDialogButton  not found in  screen");
			Thread.sleep(2000);
			throw (e);
		}
		return element;
	}

	//open project throgh menu to view what the project contains(i.e live data files, trigger files)
		public static Boolean testOpenProject(String projectName) throws Exception {
			WebDriverUtils.implicitlyWait();
			Boolean status = false;
			Thread.sleep(4000);
			project().click();
			Thread.sleep(4000);
			element = Project_old.openProjectElement(projectName);
			if (element != null) {
				element.click();
				Thread.sleep(4000);
				Browsers.driver.switchTo().activeElement();
				Thread.sleep(4000);
				Project_old.openProjectDialogButton().click();
				Thread.sleep(4000);
				status = true;
				Thread.sleep(000);
			}
			else
				status=false;
			return status;
		}

	//load SCL file and open project to check SCL files are loaded or not
	public static Boolean testSCLFileLoadedOpenProject(String fileName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		status = SCLFileLoading_old.searchFunctionSclFilesTable(fileName);
		Thread.sleep(2000);
		return status;

	}
	//create trigger files and open a project to check triggers are loaded or not
	public static Boolean testTriggerLoadedOpenProject(String projectName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		status = TriggerEditor.searchFunctionTriggerTable("test");
		return status;

	}
	
	//delect project thrugh select all button
	public static Boolean deleteAllProject() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Project_old.UploadProject("project1");
		Thread.sleep(2000);
		Project_old.selectAllProject().click();
		Thread.sleep(2000);
		projectMenuSettings().click();
		Thread.sleep(2000);
		Project_old.deleteSelectedProject().click();
		Thread.sleep(2000);
		Browsers.driver.switchTo().activeElement();
		deleteButtonPopup().click();
		Boolean searchStatus = searchProject("project1");
		if (!searchStatus) {
			searchStatus = true;
		} else {
			searchStatus = false;
		}
		return searchStatus;

	}
	//upload a project
	public static Boolean UploadProject(String projectName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status1 = null;
		Thread.sleep(2000);
		project().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(projectName);
		if (status == false) {
			projectMenuSettings().click();
			Thread.sleep(2000);
			Upload().click();
			Thread.sleep(2000);
			Thread.sleep(2000);
			Thread.sleep(2000);
			File file = new File(projectName + ".pjt");
			String absolutePath = file.getAbsolutePath();
			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + projectName + ".pjt";
			Thread.sleep(2000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
			Thread.sleep(2000);
			project().click();
			status1 = true;
		} else {
			status1 = true;
		}
		return status1;
	}

	//seach aparticular project
	public static Boolean searchProject(String projectName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		project().click();
		Thread.sleep(2000);
		Search().sendKeys(projectName);
		Thread.sleep(2000);
		status = Project_old.wordSearchInTable("//*[@id='dtable']/tbody/tr", projectName, "2");
		Thread.sleep(2000);
		return status;
	}
	//check a project displaying in the table
	public static Boolean checkInDisplay(String fileName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		Thread.sleep(2000);
		project().click();
		Thread.sleep(2000);
		Boolean status = CheckFileInFileSystem(fileName);
		Thread.sleep(2000);
		return status;

	}
	//delect a singlr project from table
	public static Boolean deleteProjectInProjectTable(String projectName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		project().click();
		Thread.sleep(2000);
		Thread.sleep(2000);
		WebElement simpleTable = Browsers.driver.findElement(By.id("dtable"));
		Thread.sleep(2000);
		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
		// Print data from each row
		int rowIndex = 0;
		outerloop: for (WebElement row : rows) {
			List<WebElement> cols = row.findElements(By.tagName("td"));
			int colIndexi = 0;
			for (WebElement col : cols) {
				Thread.sleep(2000);
				if (colIndexi == 1) {
					if (projectName.equalsIgnoreCase(col.getText())) {
						element = deleteButton(rowIndex);
						element.click();
						Thread.sleep(2000);
						Thread.sleep(2000);
						Browsers.driver.switchTo().activeElement();
						Thread.sleep(2000);
						deleteButtonPopup().click();
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

	//check clear data in project page
	//will be required later
	public static Boolean clearData() throws Exception {
		/* WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
		Thread.sleep(2000);
		project().click();
		Thread.sleep(2000);
		projectMenuSettings().click();
		Thread.sleep(2000);
		clearProjectBtn().click();
		Browsers.driver.switchTo().activeElement();
		Thread.sleep(3000);
		clearButton().click();
		return true;
	}
	// check clear data from SV message, Live data
	public static Boolean checkClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = Project_old.checkGooseMessagesClearData();
		if (status) {
			Thread.sleep(2000);
			status = Project_old.checkSVMessageClearData();
			if (status) {
				Thread.sleep(2000);
				status = Project_old.checkLiveDataTabularClearData();
				if (status) {
					Thread.sleep(2000);
					status = Project_old.checkLiveDataGraphClearData();
					if (status) {
						Thread.sleep(2000);
						status = Project_old.checkTriggerClearData();
					} else {
						return status;
					}
				} else {
					return status;
				}
			} else {
				return status;
			}
		} else {
			return status;
		}
		Thread.sleep(2000);
		return status;
	}

	//check GSE message clear data
	public static Boolean checkGooseMessagesClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		Thread.sleep(2000);
		int count = Integer.parseInt(noOfPages);
		if (count == 0) {
			return true;
		} else {
			return false;
		}
	}

	// to check sv message clear data
	public static Boolean checkSVMessageClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		GooseMessages_old.sideBarToggleButton().click();
		Thread.sleep(2000);
		GooseMessages_old.sampledValuesTab().click();
		Thread.sleep(2000);
		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		int count = Integer.parseInt(noOfPages);
		if (count == 0) {
			return true;
		} else {
			return false;
		}
	}

	public static Boolean checkTriggerClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		TriggerEditor.analysis().click();
		Thread.sleep(2000);
		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		Thread.sleep(2000);
		int count = Integer.parseInt(noOfPages);
		if (count == 0) {
			return true;
		} else {
			return false;
		}
	}

	//check live data clear in graphical page
	public static Boolean checkLiveDataGraph(String configName) throws Exception {
		WebDriverUtils.implicitlyWait();
		Boolean status = false;
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.liveDataGraph().click();
		Thread.sleep(2000);
		status = liveDataConfigElement(configName);
		return status;
	}

	//check clear data for live data records for Live Data tabular
	public static Boolean checkLiveDataTabularClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		GooseMessages_old.sideBarLiveDatabtn().click();
		Thread.sleep(2000);
		LiveData.LiveDataTab().click();
		Thread.sleep(2000);
		LiveData.LiveDataTabular().click();
		Thread.sleep(2000);
		LiveData.toggle();
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.cssSelector("#goosetable tbody tr"));
		Thread.sleep(2000);
		if (rows.size() == 1) {
			WebElement column = Browsers.driver.findElement(By.cssSelector("#goosetable tbody tr td"));
			Thread.sleep(2000);
			if (column.getText().equals("No data available in table")) {
				return true;
			}
		}
		int count = rows.size();
		if (count <= 1) {
			return true;
		} else {
			return false;
		}
	}

	public static Boolean checkLiveDataGraphClearData() throws Exception {
		WebDriverUtils.implicitlyWait();
		LiveData.liveDataGraph().click();
		Thread.sleep(2000);
		LiveData.toggle();
		Thread.sleep(2000);
		List<WebElement> rows = Browsers.driver.findElements(By.cssSelector("#goosetable tbody tr"));
		Thread.sleep(2000);
		int count = rows.size();
		if (rows.size() == 1) {
			WebElement column = Browsers.driver.findElement(By.cssSelector("#goosetable tbody tr td"));
			Thread.sleep(2000);
			if (column.getText().equals("No data available in table")) {
				return true;
			}
		}
		if (count <= 1) {
			return true;
		} else {
			return false;
		}
	}

	public static Boolean createNewProject() throws Exception {
		WebDriverUtils.implicitlyWait();
		Thread.sleep(2000);
		project().click();
		Thread.sleep(2000);
		projectMenuSettings().click();
		Thread.sleep(2000);
		createProject().click();
		Thread.sleep(2000);
		return true;

	}

}*/
