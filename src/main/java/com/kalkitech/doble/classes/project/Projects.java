/*package com.kalkitech.doble.classes.project;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.util.SystemOutLogger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Reporter;

import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.Browsers;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Projects extends BaseClass {

	public Projects(WebDriver driver) {
		super(driver);
	}

	public static WebElement element = null;
	
	// Element -Projects in side nav
	public static WebElement projects() throws Exception {
		try {
			element = WebDriverUtils.findElementById("project");
			Reporter.log("'Projects' found in side nav");
		} catch (Exception e) {
			Reporter.log("Error : 'Projects' not found in side nav");
			throw (e);
		}
		return element;
	}
	

	
	// Element - Projects table
	public static WebElement projectsTable() throws Exception {
		try {
			element = WebDriverUtils.findElementById("dtable");
			Reporter.log("Projects table found in Projects");
		} catch (Exception e) {
			Reporter.log("Error : Projects table not found in Projects");
			throw (e);
		}
		return element;
	}
	
	// Element - dropdown menu in Projects page
	public static WebElement dropdownMenu() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("/html/body/div[1]/div/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/a");
			Reporter.log("Dropdown menu found in Projects");
		} catch (Exception e) {
			Reporter.log("Error : Dropdown menu not found in Projects");
			throw (e);
		}
		return element;
	}	
	
	//Element - Select all project checkbox in project list table
	public static WebElement selectAllProjectsCheckbox() throws Exception {
		try {
			element = WebDriverUtils.findElementById("select_all");
			Reporter.log("Select all projects checkbox found in project list table");
		} catch (Exception e) {
			Reporter.log("Error : Select all projects checkbox not found in project list table");
			throw (e);
		}
		return element;
	}

	//Element - Delete option in dropdown menu
	public static WebElement deleteSelectedProjects() throws Exception {
		try {
			element = WebDriverUtils.findElementById("deleteSelProjects");
			Reporter.log("Delete option found in dropdown menu");
		} catch (Exception e) {
			Reporter.log("Error : Delete option not found in dropdown menu");
			throw (e);
		}
		return element;
	}
	
	//Element - Ok btn in Delete Project Modal dialog box
	public static WebElement OkBtnDeleteProjectModal() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"deleteHref\"]/button");
			Reporter.log("Ok btn found in Delete Project Modal dialog box");
		} catch (Exception e) {
			Reporter.log("Error : Ok btn not found in Delete Project Modal dialog box");
			throw (e);
		}
		return element;
	}
	
	// Element - upload option in dropdown menu
	public static WebElement Upload() throws Exception {
		try {
			element = WebDriverUtils.findElementById("uploadProject");
			Reporter.log("Upload option found in dropdown menu");
		} catch (Exception e) {
			Reporter.log("Error : Upload option not found in dropdown menu");
			throw (e);
		}
		return element;
	}
	
	// Element - search editbox in projects
	public static WebElement Search() throws Exception {
		try {
			element = WebDriverUtils.findElementById("table_search");
			Reporter.log("Search editbox found in Projects");
		} catch (Exception e) {
			Reporter.log("Error : Search editbox not found in Projects");
			throw (e);
		}
		return element;
	}
	
	// Element - search btn in projects
	public static WebElement SearchBtn() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//*[@id=\"searchTextBox\"]/div/button");
			Reporter.log("Search btn found in Projects");
		} catch (Exception e) {
			Reporter.log("Error : Search btn not found in Projects");
			throw (e);
		}
		return element;
	}
	
	// Element - add new option in dropdown menu
	public static WebElement AddNew() throws Exception {
		try {
			element = WebDriverUtils.findElementByXpath("//tbody/tr[1]/td[2]/div[1]/ul[1]/li[1]/ul[1]/li[1]/ul[1]/li[1]/a[1]");
			Reporter.log("Add New option found in dropdown menu");
		} catch (Exception e) {
			Reporter.log("Error : Add New option not found in dropdown menu");
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

	public static Boolean projectsOption() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		//check if Projects option is displayed in Side Nav
		if(projects().isDisplayed())
		{
			status = true;
			Reporter.log("'Projects' option displayed in Side Nav");
		}
		else
		{
			status = false;
			Reporter.log("'Projects' option not displayed in Side Nav");
		}
		return status;
	}
	
	public static Boolean projectsUIElements() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<Boolean> actual_status = new ArrayList<Boolean>();
		List<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//check if search box displayed
		if(Search().isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("'Search' option displayed in Projects");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : 'Search' option not displayed in Projects");
		}
		//check if projects table displayed
		if(projectsTable().isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Projects table displayed in Projects");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Projects table not displayed in Projects");
		}
		//check if dropdown menu displayed
		if(dropdownMenu().isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Dropdown menu displayed in Projects");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Dropdown menu not displayed in Projects");
		}
		if(actual_status.equals(expected_status))
		{
			status = true;
		}
		else
		{
			status = false;
		}
		return status;
	}

	public static Boolean projectsDropdownMenuOptions() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<String> actual_list = new ArrayList<String>();
		List<String> expected_list = new ArrayList<String>();
		expected_list.add("Add New");
		expected_list.add("Upload");
		expected_list.add("Delete");
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//click on the dropdown menu
		dropdownMenu().click();
		Thread.sleep(2000);
		//get the options in a list
		WebElement dd = WebDriverUtils.findElementByXpath("/html/body/div[1]/div/section/div/div/div/div[1]/div/table/tbody/tr/td[2]/div/ul/li/ul/li/ul");
		List<WebElement> dropdownOptions = dd.findElements(By.tagName("li"));
	    for (int i=0; i<dropdownOptions.size(); i++) 
	    {
	        actual_list.add(dropdownOptions.get(i).getText());
	    }
		if(actual_list.equals(expected_list))
		{
			status = true;
			Reporter.log("Verified options available in Dropdown menu in Projects");
		}
		else
		{
			status = false;
			Reporter.log("Error : Unable to verify options available in Dropdown menu in Projects");
		}
		dropdownMenu().click();
		return status;
	}
	
	public static Boolean SearchBtnFunctionality1() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//delete the projects if they already exist in project list table
		deleteProject("Proj11.dna");
	//	Thread.sleep(2000);
	//	SearchBtn().click();
	//	deleteProject("project1.dna");
		Thread.sleep(2000);
		//upload projects in test data folder
		uploadProject("Proj11.dna");
		Thread.sleep(2000);
	//	uploadProject("project1.dna");
		Thread.sleep(2000);
		//search project in project list table
		String searchProject = "project1.dna";
		Search().clear();
		Search().sendKeys(searchProject);
		SearchBtn().click();
		//check if only one entry is displayed in project list table
		WebElement table = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody");
		List<WebElement> entries = table.findElements(By.tagName("tr"));
		String projectName = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody/tr/td[2]").getText();
		if((entries.size() == 1) && (projectName.equals(searchProject)))
		{
			status = true;
			Reporter.log("Project list table contains the file searched.");
		}
		else
		{
			status = false;
			Reporter.log("Error : Project list table doesn't contain the file searched.");
		}		
		return status;
	}
	
	public static void deleteProject(String filename) throws Exception
	{
		System.out.println("entered delete function");
		Search().clear();
		Search().sendKeys(filename);
		SearchBtn().click();
		WebElement table = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody");
		List<WebElement> row = table.findElements(By.tagName("tr"));
		if(row.size() != 0)
		{
			selectAllProjectsCheckbox().click();
			Thread.sleep(2000);
			dropdownMenu().click();
			deleteSelectedProjects().click();
			Thread.sleep(2000);
			OkBtnDeleteProjectModal().click();
		}
		Thread.sleep(2000);
	}
	
	public static void uploadProject(String filename) throws Exception
	{
		System.out.println("entered upload function");
		
		Thread.sleep(3000);
		File file1 = new File(filename);
		String absolutePath1 = file1.getAbsolutePath();
		absolutePath1 = absolutePath1.substring(0, absolutePath1.lastIndexOf("\\") + 1);
		String absolutePath2 = absolutePath1 + "src\\main\\resources\\TestData\\";
		String absolutePath3 = absolutePath1 + "src\\main\\resources\\TestData\\" + filename;
		try {
			if( isFileAvailable(absolutePath2, "ImportProject.exe"))
			{
				
				if( isFileAvailable(absolutePath2, filename))
				{
					System.out.println("found files");
					//click dropdown menu in Projects page
					dropdownMenu().click();
					//upload btn click
					Upload().click();
					Thread.sleep(2000);
					//load the file through file explorer
					Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath3);
					Thread.sleep(10000);
				}
			}
		}
		catch(Exception e)
		{
			Reporter.log("exception occured : " + e);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\CloseWindowCH.exe");
		}
	}
	
	public static boolean isFileAvailable(String filePath, String fileName)
	{
		System.out.println("file path is "+filePath);
		Boolean status = null;
		File dir = new File(filePath);
		File[] dirContents = dir.listFiles();

		for(int i=0;i<dirContents.length;i++)
		{
			if (dirContents[i].getName().contains(fileName))
			{
				status = true;
				break;
			}
			else
			{
				status = false;
			} 
		}
		return status;
	}
	
	public static Boolean SearchBtnFunctionality2() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//search project that doesn't exist
		Search().clear();
		Search().sendKeys("TestProject_PJT_05");
		SearchBtn().click();
		//check if project list table is empty
		WebElement table = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody");
		List<WebElement> row = table.findElements(By.tagName("tr"));
		if(row.size() == 0)
		{
			status = true;
			Reporter.log("Project list table is empty, searched project doesn't exist.");
		}
		else
		{
			status = false;
			Reporter.log("Error : Project list table is not empty.");
		}
		return status;
	}

	public static Boolean AddNewOptionFunctionality() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//click add new in dropdown menu
		dropdownMenu().click();
		AddNew().click();
		Thread.sleep(3000);
		WebElement newProjectPage = WebDriverUtils.findElementByXpath("//h3[contains(text(),'New Project')]");
		if(newProjectPage.isDisplayed())
		{
			status = true;
			Reporter.log("User directed to New Project page on clicking Add New option in dropdown menu.");
		}
		else
		{
			status = false;
			Reporter.log("Error : User not directed to New Project page on clicking Add New option in dropdown menu.");
		}
		Browsers.driver.switchTo().defaultContent();
		projects().click();
		Thread.sleep(2000);
		return status;
	}
	
	public static Boolean UIElementsinNewProjectPage() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<Boolean> actual_status = new ArrayList<Boolean>();
		List<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//click add new in dropdown menu
		dropdownMenu().click();
		AddNew().click();
		Thread.sleep(3000);
		//check if UI elements displayed
		//is project tab displayed
		WebElement projectTab = WebDriverUtils.findElementById("projectTab");
		if(projectTab.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Project Tab displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Project Tab not displayed in New Project Page.");
		}
		//Options under project tab - SCL Files
		WebElement sclFilesInProjectTab = WebDriverUtils.findElementById("t1");
		if(sclFilesInProjectTab.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("SCL Files option in Project Tab displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : SCL Files option in Project Tab not displayed in New Project Page.");
		}
		//Options under project tab - Triggers
		WebElement TriggersInProjectTab = WebDriverUtils.findElementById("t2");
		if(TriggersInProjectTab.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Triggers option in Project Tab displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Triggers option in Project Tab not displayed in New Project Page.");
		}
		//Options under project tab - Live Data
		WebElement LiveDataInProjectTab = WebDriverUtils.findElementById("t5");
		if(LiveDataInProjectTab.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Live Data option in Project Tab displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Live Data option in Project Tab not displayed in New Project Page.");
		}
		//is dropdown menu in New Projects page displayed
		WebElement dropdownMenuInProjectTab = WebDriverUtils.findElementByXpath("//a[@class='dropdown-toggle']");
		if(dropdownMenuInProjectTab.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Dropdown menu displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Dropdown menu not displayed in New Project Page.");
		}		
		Browsers.driver.switchTo().frame("sclFrame");
		//is details table displayed
		WebElement detailsTable = WebDriverUtils.findElementById("dtable");
		if(detailsTable.isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Details table displayed in New Project Page.");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Details table not displayed in New Project Page.");
		}
		if(actual_status.equals(expected_status))
		{
			status = true;
		}
		else
		{
			status = false;
		}
		//cleanup - navigate back to projects page
		Browsers.driver.switchTo().defaultContent();
		projects().click();
		Thread.sleep(2000);
		return status;
	}

	public static Boolean newProjectPageDropdownMenuOptions() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<String> actual_list = new ArrayList<String>();
		List<String> expected_list = new ArrayList<String>();
		expected_list.add("Save");
		expected_list.add("Clear Selection");
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//click add new in dropdown menu
		dropdownMenu().click();
		AddNew().click();
		Thread.sleep(3000);
//		//click dropdown menu in new project page
//		WebElement dropdownMenuInProjectTab = WebDriverUtils.findElementByXpath("//ul[@class='menu']");
//		List<WebElement> dropdownOptions = dropdownMenuInProjectTab.findElements(By.tagName("li"));
//		System.out.println(dropdownOptions.size());
//	    for (int i=1; i<dropdownOptions.size(); i++) 
//	    {
//			WebElement dropdownMenuInProjectTab1 = WebDriverUtils.findElementByXpath("//ul[@class='menu']/li["+i+"]/a/text()");
//	        actual_list.add(dropdownMenuInProjectTab1.getText());
//	        System.out.println(dropdownMenuInProjectTab1.getText());
//	    }
	    System.out.println(WebDriverUtils.findElementByXpath("//*[@id=\"newProject\"]/child::text()").getText());
	    System.out.println(actual_list);
	    System.out.println(expected_list);
		if(actual_list.equals(expected_list))
		{
			status = true;
			Reporter.log("Verified options available in Dropdown menu in New Project Page.");
		}
		else
		{
			status = false;
			Reporter.log("Error : Unable to verify options available in Dropdown menu in New Project Page.");
		}
		//cleanup - navigate back to projects page
		Browsers.driver.switchTo().defaultContent();
		projects().click();
		Thread.sleep(2000);
		return status;
	}
	
	public static Boolean uploadProjectFunctionality() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		dropdownMenu().click();
		//delete the project if it already exists in project list table
		deleteProject("TestProject_PJT_18");
		Thread.sleep(2000);
		//upload projects in test data folder
		uploadProject("TestProject_PJT_18.PJT");
		Thread.sleep(2000);
		//search project in project list table
		String searchProject = "TestProject_PJT_18";
		Search().clear();
		Search().sendKeys(searchProject);
		SearchBtn().click();
		//check if only one entry is displayed in project list table
		WebElement table = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody");
		List<WebElement> entries = table.findElements(By.tagName("tr"));
		String projectName = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/tbody/tr/td[2]").getText();
		if((entries.size() == 1) && (projectName.equals(searchProject)))
		{
			status = true;
			Reporter.log("Upload project process successfull.");
		}
		else
		{
			status = false;
			Reporter.log("Error : Unable to upload project.");
		}		
		//cleanup - delete the project
		dropdownMenu().click();
		//delete the project if it already exists in project list table
		deleteProject("TestProject_PJT_18");
		Thread.sleep(2000);
		return status;
	}
	
	public static Boolean ProjectListTableColumns() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<Boolean> actual_status = new ArrayList<Boolean>();
		List<Boolean> expected_status = new ArrayList<Boolean>();
		expected_status.add(true);
		expected_status.add(true);
		expected_status.add(true);
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//check if select all check box displayed
		if(selectAllProjectsCheckbox().isDisplayed())
		{
			actual_status.add(true);
			Reporter.log("Select all checkbox displayed in Project List Table");
		}
		else
		{
			actual_status.add(false);
			Reporter.log("Error : Select all checkbox not displayed in Project List Table");
		}
		WebElement projectTable = WebDriverUtils.findElementByXpath("//*[@id=\"dtable\"]/thead/tr");
		List<WebElement> columns = projectTable.findElements(By.tagName("th"));
		System.out.println(columns.size());
		for(int i=1; i<columns.size(); i++)
		{
			if(columns.get(i).getAttribute("aria-disabled").equals("false"))
			{
				if(columns.get(i).getAttribute("aria-label").contains("Project Name"))
				{
					actual_status.add(true);
					Reporter.log("Project Name column displayed in Project List Table");
				}
				else if(columns.get(i).getAttribute("aria-label").contains("Created Date"))
				{
					actual_status.add(true);
					Reporter.log("Created Date column displayed in Project List Table");
				}
			}
		}		
		if(actual_status.equals(expected_status))
		{
			status = true;
		}
		else
		{
			status = false;
		}
		return status;
	}

	public static Boolean OptionsInDropdownForProjects() throws Exception
	{
		Boolean status = null;
		WebDriverUtils.implicitlyWait();
		List<String> actual_list = new ArrayList<String>();
		List<String> expected_list = new ArrayList<String>();
		expected_list.add("Launch Project");
		expected_list.add("Information");
		expected_list.add("Rename");
		expected_list.add("Download Project");
		expected_list.add("Delete Project");
		//navigate to projects page
		//click on Projects in Side Nav
		projects().click();
		Thread.sleep(3000);
		//switch frame
		Browsers.driver.switchTo().frame("iframecontainer");
		Thread.sleep(2000);
		//upload project if project list table is empty
		
		WebElement dropdown = WebDriverUtils.findElementByXpath("//div[contains(@class, \"dropdown\")]/ul[@class = \"dropdown-menu\"]");
		List<WebElement> options = dropdown.findElements(By.tagName("li"));
		for(int i=1; i<=options.size(); i++)
		{
			WebElement option = WebDriverUtils.findElementByXpath("//div[contains(@class, \"dropdown\")]/ul[@class = \"dropdown-menu\"]/li["+i+"]/a");
			actual_list.add(option.getAttribute("title"));
		}
		if(actual_list.equals(expected_list))
		{
			status = true;
		}
		else
		{
			status = false;
		}
		return status;
	}
	
	
	
	
	

	
	
//
//	//element live data configuration
//	public static Boolean liveDataConfigElement(String configName) throws Exception {
//		Boolean status = false;
//		try {
//			element = WebDriverUtils.findElementByXpath("//*[@id=\"configurationList\"]");
//			Thread.sleep(2000);
//			List<WebElement> list = element.findElements(By.tagName("option"));
//			Thread.sleep(2000);
//			for (WebElement element : list) {
//				if (element.getText().equals(configName)) {
//					status=true;
//				}
//				Thread.sleep(2000);
//			}
//			Thread.sleep(2000);
//		} catch (Exception e) {
//			Reporter.log("liveDataConfigElement is not found");
//			throw (e);
//		}
//		return status;
//	}
//
//	// This method is to check if file is available in file system table
//	public static Boolean wordSearchInTable(String xPath, String searchWord, String columnPos) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Boolean status = false;
//		Thread.sleep(2000);
//		Thread.sleep(2000);
//		String pagination = totalPages().getAttribute("value");
//		int count = Integer.parseInt(pagination);
//		if (count == 0) {
//			status = false;
//		}
//		outerloop: for (int i = 1; i <= count; i++) {
//			List<WebElement> rows = Browsers.driver.findElements(By.xpath(xPath));
//			int count1 = rows.size();
//			Thread.sleep(2000);
//			for (int j = 1; j <= count1; j++) {
//				String actual_String = Browsers.driver.findElement(By.xpath(xPath + "[" + j + "]/td[" + columnPos + "]"))
//						.getText();
//				Thread.sleep(2000);
//				if (actual_String.equals(searchWord)) {
//					status = true;
//					break outerloop;
//				} else {
//					status = false;
//				}
//			}
//			int count2 = i + 1;
//			if (count2 <= count) {
//				WebDriverUtils.findElementByXpath("//*[@id=\"filesystem\"]/div/nav/ul/li[" + count2 + "]/a").click();
//			}
//			Thread.sleep(2000);
//		}
//		return status;
//	}
//
//	// This method is to check if file is available in file system table
//	public static Boolean CheckFileInFileSystem(String file) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Boolean status = false;
//		Thread.sleep(2000);
//		Thread.sleep(2000);
//		String pagination = totalPages().getAttribute("value");
//		if (pagination == null || pagination == "" || pagination.equals("")) {
//			return false;
//		}
//		int count = Integer.parseInt(pagination);
//		if (count == 0) {
//			status = false;
//		}
//		outerloop: for (int i = 1; i <= count; i++) {
//			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
//			int count1 = rows.size();
//			Thread.sleep(2000);
//			for (int j = 1; j <= count1; j++) {
//
//				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
//						.getText();
//				if (actual_file.equals(file)) {
//					status = true;
//					break outerloop;
//				}
//			}
//			Thread.sleep(2000);
//		}
//		return status;
//	}
//
//	// This method is to check if file is available in file system table
//	public static WebElement openProjectElement(String file) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
//		Thread.sleep(2000);
//		int count = Integer.parseInt(pagination);
//		if (count == 0) {
//			return null;
//		}
//		for (int i = 1; i <= count; i++) {
//			List<WebElement> rows = Browsers.driver.findElements(By.xpath("//table[@id='dtable']/tbody/tr"));
//			int count1 = rows.size();
//			Thread.sleep(2000);
//			for (int j = 1; j <= count1; j++) {
//				String actual_file = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[2]"))
//						.getText();
//				if (actual_file.equals(file)) {
//					element = Browsers.driver.findElement(By.xpath("//*[@id=\"dtable\"]/tbody/tr[" + j + "]/td[4]/a[1]"));
//					return element;
//				}
//			}
//		}
//		return null;
//	}
//
//	// Element - Submit button in upload screen
//	public static WebElement openProjectDialogButton() throws Exception {
//		try {
//			element = WebDriverUtils.findElementById("openprojectbtn");
//			Reporter.log("openProjectDialogButton found in  screen");
//		} catch (Exception e) {
//			Reporter.log("openProjectDialogButton  not found in  screen");
//			Thread.sleep(2000);
//			throw (e);
//		}
//		return element;
//	}
//
//	//open project throgh menu to view what the project contains(i.e live data files, trigger files)
//		public static Boolean testOpenProject(String projectName) throws Exception {
//			WebDriverUtils.implicitlyWait();
//			Boolean status = false;
//			Thread.sleep(4000);
//			project().click();
//			Thread.sleep(4000);
//			element = Projects.openProjectElement(projectName);
//			if (element != null) {
//				element.click();
//				Thread.sleep(4000);
//				Browsers.driver.switchTo().activeElement();
//				Thread.sleep(4000);
//				Projects.openProjectDialogButton().click();
//				Thread.sleep(4000);
//				status = true;
//				Thread.sleep(000);
//			}
//			else
//				status=false;
//			return status;
//		}
//
////	//load SCL file and open project to check SCL files are loaded or not
////	public static Boolean testSCLFileLoadedOpenProject(String fileName) throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Boolean status = false;
////		status = SCLFileLoading.searchFunctionSclFilesTable(fileName);
////		Thread.sleep(2000);
////		return status;
////
////	}
////	//create trigger files and open a project to check triggers are loaded or not
////	public static Boolean testTriggerLoadedOpenProject(String projectName) throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Boolean status = false;
////		status = TriggerEditor.searchFunctionTriggerTable("test");
////		return status;
////
////	}
//	
//	//delect project thrugh select all button
//	public static Boolean deleteAllProject() throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Thread.sleep(2000);
//		Projects.UploadProject("project1");
//		Thread.sleep(2000);
//		Projects.selectAllProject().click();
//		Thread.sleep(2000);
//		projectMenuSettings().click();
//		Thread.sleep(2000);
//		Projects.deleteSelectedProject().click();
//		Thread.sleep(2000);
//		Browsers.driver.switchTo().activeElement();
//		deleteButtonPopup().click();
//		Boolean searchStatus = searchProject("project1");
//		if (!searchStatus) {
//			searchStatus = true;
//		} else {
//			searchStatus = false;
//		}
//		return searchStatus;
//
//	}
//	//upload a project
//	public static Boolean UploadProject(String projectName) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Boolean status1 = null;
//		Thread.sleep(2000);
//		project().click();
//		Thread.sleep(2000);
//		Boolean status = CheckFileInFileSystem(projectName);
//		if (status == false) {
//			projectMenuSettings().click();
//			Thread.sleep(2000);
//			Upload().click();
//			Thread.sleep(2000);
//			Thread.sleep(2000);
//			Thread.sleep(2000);
//			File file = new File(projectName + ".pjt");
//			String absolutePath = file.getAbsolutePath();
//			absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\") + 1);
//			absolutePath = absolutePath + "src\\main\\resources\\TestData\\" + projectName + ".pjt";
//			Thread.sleep(2000);
//			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe" + " " + absolutePath); // +"
//			Thread.sleep(2000);
//			project().click();
//			status1 = true;
//		} else {
//			status1 = true;
//		}
//		return status1;
//	}
//
//	//seach aparticular project
//	public static Boolean searchProject(String projectName) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Boolean status = false;
//		Thread.sleep(2000);
//		project().click();
//		Thread.sleep(2000);
//		Search().sendKeys(projectName);
//		Thread.sleep(2000);
//		status = Projects.wordSearchInTable("//*[@id='dtable']/tbody/tr", projectName, "2");
//		Thread.sleep(2000);
//		return status;
//	}
//	//check a project displaying in the table
//	public static Boolean checkInDisplay(String fileName) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Thread.sleep(2000);
//		Thread.sleep(2000);
//		project().click();
//		Thread.sleep(2000);
//		Boolean status = CheckFileInFileSystem(fileName);
//		Thread.sleep(2000);
//		return status;
//
//	}
//	//delect a singlr project from table
//	public static Boolean deleteProjectInProjectTable(String projectName) throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Boolean status = false;
//		project().click();
//		Thread.sleep(2000);
//		Thread.sleep(2000);
//		WebElement simpleTable = Browsers.driver.findElement(By.id("dtable"));
//		Thread.sleep(2000);
//		List<WebElement> rows = simpleTable.findElements(By.tagName("tr"));
//		// Print data from each row
//		int rowIndex = 0;
//		outerloop: for (WebElement row : rows) {
//			List<WebElement> cols = row.findElements(By.tagName("td"));
//			int colIndexi = 0;
//			for (WebElement col : cols) {
//				Thread.sleep(2000);
//				if (colIndexi == 1) {
//					if (projectName.equalsIgnoreCase(col.getText())) {
//						element = deleteButton(rowIndex);
//						element.click();
//						Thread.sleep(2000);
//						Thread.sleep(2000);
//						Browsers.driver.switchTo().activeElement();
//						Thread.sleep(2000);
//						deleteButtonPopup().click();
//						Thread.sleep(2000);
//						status = true;
//						break outerloop;
//
//					}
//				}
//				colIndexi++;
//			}
//			rowIndex++;
//		}
//		return status;
//	}
//
//	//check clear data in project page
//	//will be required later
//	public static Boolean clearData() throws Exception {
//		/* WebDriverUtils.implicitlyWait(Browsers.Browsers.driver);
//		Thread.sleep(2000);
//		project().click();
//		Thread.sleep(2000);
//		projectMenuSettings().click();
//		Thread.sleep(2000);
//		clearProjectBtn().click();
//		Browsers.driver.switchTo().activeElement();
//		Thread.sleep(3000);
//		clearButton().click();*/
//		return true;
//	}
////	// check clear data from SV message, Live data
////	public static Boolean checkClearData() throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Boolean status = Projects.checkGooseMessagesClearData();
////		if (status) {
////			Thread.sleep(2000);
////			status = Projects.checkSVMessageClearData();
////			if (status) {
////				Thread.sleep(2000);
////				status = Projects.checkLiveDataTabularClearData();
////				if (status) {
////					Thread.sleep(2000);
////					status = Projects.checkLiveDataGraphClearData();
////					if (status) {
////						Thread.sleep(2000);
////						status = Projects.checkTriggerClearData();
////					} else {
////						return status;
////					}
////				} else {
////					return status;
////				}
////			} else {
////				return status;
////			}
////		} else {
////			return status;
////		}
////		Thread.sleep(2000);
////		return status;
////	}
//
//	//check GSE message clear data
//	public static Boolean checkGooseMessagesClearData() throws Exception {
//		WebDriverUtils.implicitlyWait();
//		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
//		Thread.sleep(2000);
//		int count = Integer.parseInt(noOfPages);
//		if (count == 0) {
//			return true;
//		} else {
//			return false;
//		}
//	}
//
////	// to check sv message clear data
////	public static Boolean checkSVMessageClearData() throws Exception {
////		WebDriverUtils.implicitlyWait();
////		GooseMessages.sideBarToggleButton().click();
////		Thread.sleep(2000);
////		GooseMessages.sampledValuesTab().click();
////		Thread.sleep(2000);
////		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
////		int count = Integer.parseInt(noOfPages);
////		if (count == 0) {
////			return true;
////		} else {
////			return false;
////		}
////	}
////
////	public static Boolean checkTriggerClearData() throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Thread.sleep(2000);
////		TriggerEditor.analysis().click();
////		Thread.sleep(2000);
////		String noOfPages = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
////		Thread.sleep(2000);
////		int count = Integer.parseInt(noOfPages);
////		if (count == 0) {
////			return true;
////		} else {
////			return false;
////		}
////	}
////
////	//check live data clear in graphical page
////	public static Boolean checkLiveDataGraph(String configName) throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Boolean status = false;
////		Thread.sleep(2000);
////		LiveData.LiveDataTab().click();
////		Thread.sleep(2000);
////		LiveData.liveDataGraph().click();
////		Thread.sleep(2000);
////		status = liveDataConfigElement(configName);
////		return status;
////	}
////
////	//check clear data for live data records for Live Data tabular
////	public static Boolean checkLiveDataTabularClearData() throws Exception {
////		WebDriverUtils.implicitlyWait();
////		Thread.sleep(2000);
////		GooseMessages.sideBarLiveDatabtn().click();
////		Thread.sleep(2000);
////		LiveData.LiveDataTab().click();
////		Thread.sleep(2000);
////		LiveData.LiveDataTabular().click();
////		Thread.sleep(2000);
////		LiveData.toggle();
////		Thread.sleep(2000);
////		List<WebElement> rows = Browsers.driver.findElements(By.cssSelector("#goosetable tbody tr"));
////		Thread.sleep(2000);
////		if (rows.size() == 1) {
////			WebElement column = Browsers.driver.findElement(By.cssSelector("#goosetable tbody tr td"));
////			Thread.sleep(2000);
////			if (column.getText().equals("No data available in table")) {
////				return true;
////			}
////		}
////		int count = rows.size();
////		if (count <= 1) {
////			return true;
////		} else {
////			return false;
////		}
////	}
////
////	public static Boolean checkLiveDataGraphClearData() throws Exception {
////		WebDriverUtils.implicitlyWait();
////		LiveData.liveDataGraph().click();
////		Thread.sleep(2000);
////		LiveData.toggle();
////		Thread.sleep(2000);
////		List<WebElement> rows = Browsers.driver.findElements(By.cssSelector("#goosetable tbody tr"));
////		Thread.sleep(2000);
////		int count = rows.size();
////		if (rows.size() == 1) {
////			WebElement column = Browsers.driver.findElement(By.cssSelector("#goosetable tbody tr td"));
////			Thread.sleep(2000);
////			if (column.getText().equals("No data available in table")) {
////				return true;
////			}
////		}
////		if (count <= 1) {
////			return true;
////		} else {
////			return false;
////		}
////	}
//
//	public static Boolean createNewProject() throws Exception {
//		WebDriverUtils.implicitlyWait();
//		Thread.sleep(2000);
//		project().click();
//		Thread.sleep(2000);
//		projectMenuSettings().click();
//		Thread.sleep(2000);
//		createProject().click();
//		Thread.sleep(2000);
//		return true;
//
//	}


