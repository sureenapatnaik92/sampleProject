package com.kalkitech.doble.genericLib;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

public class ScreenShots {
	
	
	public static String takeSnapshot(WebDriver driver, String testName , String DestFilePath) throws IOException
	{
		String TS = getTimeStamp();
		
		TakesScreenshot tss=(TakesScreenshot) driver;
		File srcfileObj= tss.getScreenshotAs(OutputType.FILE);
		DestFilePath=DestFilePath+testName+TS+".png";
		File DestFileObj=new File(DestFilePath);
		FileUtils.copyFile(srcfileObj, DestFileObj);
	
		return DestFilePath;
	}
	
	
	public static String getTimeStamp()
	{
		DateFormat DF=DateFormat.getDateTimeInstance();
		Date dte=new Date();
		String DateValue=DF.format(dte);
		DateValue=DateValue.replaceAll(":", "_");
		DateValue=DateValue.replaceAll(",", "");
		return DateValue;
	}

}
