/*package com.kalkitech.doble.classes.stressCases;

import java.io.File;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.kalkitech.doble.classes.SCLFiles.SCLFileLoading_old;
import com.kalkitech.doble.classes.stationmessages.GooseMessages_old;
import com.kalkitech.doble.genericLib.BaseClass;
import com.kalkitech.doble.genericLib.WebDriverUtils;

public class Stress extends BaseClass {
	
	
	
	public Stress(WebDriver driver) {
		super(driver);
	}
	
	public static Boolean loadSCLFiles() throws Exception
	{
		
		return true;
	}
	public static Boolean loadSCLFile(String filename,String type) throws Exception
	{
		
		
        File file = new File(filename);
        String absolutePath = file.getAbsolutePath();
        System.out.println("absolutePath  "+absolutePath);
		Thread.sleep(2000);
		SCLFileLoading_old.SCLFiles().click();
		Thread.sleep(2000);
		Boolean status = SCLFileLoading_old.CheckFileInFileSystem(filename);
		System.out.print(status);
		if(status == false)
		{
			Thread.sleep(2000);
			SCLFileLoading_old.SCLFilesSettings().click();
			Thread.sleep(2000);
			SCLFileLoading_old.Upload().click();
			Thread.sleep(2000);
			SCLFileLoading_old.ChooseFile().click();
			Thread.sleep(3000);
		    absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("\\")+1);
		    String filename1=filename+"."+type;
		    
            absolutePath =absolutePath + "src\\main\\resources\\TestData\\"+filename1;       
            System.out.println("absolutePath"+absolutePath);
            Thread.sleep(3000);
			Runtime.getRuntime().exec("src\\main\\resources\\TestData\\ImportProject.exe"+" "+absolutePath); //+" "+fileName
	        Thread.sleep(3000);							
	        SCLFileLoading_old.Submit().click();
			Thread.sleep(5000);
			SCLFileLoading_old.SCLFiles().click();
			Thread.sleep(5000);
			
		}
		Thread.sleep(2000);
		//WebDriverUtils.findElementByLinkText("File System").click();
		//Thread.sleep(2000);

		String pagination = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		System.out.println(pagination);
		int count = Integer.parseInt(pagination);
		for(int i = 1; i<=count ; i++)
		{
			List<WebElement> rows = driver.findElements(By.xpath("//table[@id='filesystemtable']/tbody/tr"));
		   int count1 = rows.size();
		    System.out.println("count1 is "+count1);
		    //int checkboxCount =0;
		     for(int j=1; j<=count1 ; j++)
		       {
		    	 String actual_file = driver.findElement(By.xpath("//table[@id='filesystemtable']/tbody/tr["+j+"]/td[2]")).getText();
		    	
		    	 if(actual_file.equals(filename))
		    	 {
		    		 Thread.sleep(2000);
		    		 driver.findElement(By.xpath("//table[@id=\"filesystemtable\"]/tbody/tr["+j+"]/td[7]/a")).click();
		    		 Thread.sleep(4000);
		    		driver.switchTo().activeElement();
		    		Thread.sleep(3000);
		    		Boolean status3= driver.findElement(By.id("selIedCheckAll")).isSelected();
		    		System.out.println(status);
		    		
			    		if(status3==false)
			    		{
			    		 driver.findElement(By.id("selIedCheckAll")).click();
			    		 Thread.sleep(2000);
			    		}
			    		//WebDriverUtils.findElementByXpath("//*[@id=\"iedTable\"]/thead/tr/th[1]/input").click();
			    		//Thread.sleep(2000);
			    		WebDriverUtils.findElementById("loadIedList").click();
			    		Thread.sleep(5000);
			    		driver.switchTo().activeElement();
			    		 Thread.sleep(3000);
			    			
		    	 }
		       }
			
		}
		Thread.sleep(2000);
		GooseMessages_old.StationMessagesTab().click();
		Thread.sleep(2000);
		GooseMessages_old.GOOSEMessagesTab().click();
		Thread.sleep(2000);
		String pagination1 = WebDriverUtils.findElementById("totatlpages").getAttribute("value");
		System.out.println(pagination1);
		int sum=0;Boolean stat=false;
		int count1 = Integer.parseInt(pagination1);//3
		for(int j = 1; j<=count1 ; j++)
		{
			List<WebElement> rows =  driver.findElements(By.xpath("//*[@id=\"gseInfotable\"]/tbody/tr"));
			int rowcount = rows.size();
			System.out.println("rowcount"+rowcount);
			sum=sum+rowcount;
			int count2 = j+1;
		     if(count2<=count1)
		     {
		    	 
		    	 WebDriverUtils.findElementByXpath("/html/body/div[1]/div[3]/section/div/div/div/div[2]/div[3]/nav/ul/li["+count2+"]/a").click();
		    	 Thread.sleep(3000);
		     }
			
		}
		int totalmsg=sum/2;
		if(totalmsg==1000 || totalmsg>=100 || totalmsg>=10 )
		{
		stat= true;
		}
		return stat;
	}


}*/
