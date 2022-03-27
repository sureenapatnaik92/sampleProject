package com.kalkitech.doble.genericLib;

import org.testng.IRetryAnalyzer;
import org.testng.ITestResult;

public class Retry implements IRetryAnalyzer{
	private int retryCount = 0;
	private int maxRetryCount = 0;

	@Override
	public boolean retry(ITestResult result)
	{
		if(retryCount < maxRetryCount)
		{
			System.out.println("Retrying test "+result.getName() + " with status "+getResultStatusName(result.getStatus()) + "for the retrycount "+retryCount);
			retryCount++;
			return true;
		}
		return false;
	}

	public String getResultStatusName(int status)
	{
		String resultName =null;
		if(status==1)
			resultName = "SUCCESS";
		if(status==2)
			resultName = "FAILURE";
		if(status==3)
			resultName = "SKIP";
		return resultName;
	}
}
