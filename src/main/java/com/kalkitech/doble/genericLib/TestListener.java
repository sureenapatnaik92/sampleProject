package com.kalkitech.doble.genericLib;

import java.util.Set;

import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestNGMethod;
import org.testng.ITestResult;

public class TestListener implements ITestListener {
    @Override
    public void onFinish(ITestContext context) {
    	Set<ITestResult> failedTests = context.getSkippedTests().getAllResults();
    //	System.out.println("no of skiped tests are "+failedTests.size());
		for (ITestResult temp : failedTests) {
			ITestNGMethod method = temp.getMethod();
	//		System.out.println("check "+context.getSkippedTests().getResults(method).size());
			if (context.getSkippedTests().getResults(method).size() > 0) {
	//			System.out.println("entered");
				failedTests.remove(temp);
			} else {
				if (context.getPassedTests().getResults(method).size() > 0) {
			//		System.out.println("entered11");
					failedTests.remove(temp);
				}
			}
		}
	}
    
    public void onTestStart(ITestResult result) {   }
    
    public void onTestSuccess(ITestResult result) {   }
  
    public void onTestFailure(ITestResult result) {   }

    public void onTestSkipped(ITestResult result) {   }

    public void onTestFailedButWithinSuccessPercentage(ITestResult result) {   }

    public void onStart(ITestContext context) {   }
}