package com.kalkitech.doble.genericLib;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Date;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.testng.Reporter;

public class ExcelLib {
	
	 private static XSSFSheet ExcelWSheet;
	 
     private static XSSFWorkbook ExcelWBook;

     private static XSSFCell Cell;

     private static XSSFRow Row;
     
private static HSSFSheet ExcelWSheet1;
	 
     private static HSSFWorkbook ExcelWBook1;

     private static HSSFCell Cell1;

     private static HSSFRow Row1;

 //This method is to set the File path and to open the Excel file, Pass Excel Path and Sheetname as Arguments to this method

 public static void setExcelFile(String Path,String SheetName) throws Exception {

        try {
        	
            // Open the Excel file

         FileInputStream ExcelFile = new FileInputStream(Path);
        
         ExcelWBook = new XSSFWorkbook(ExcelFile);
         
         ExcelWSheet = ExcelWBook.getSheet(SheetName);
         Reporter.log("Excel sheet opened");

         } catch (FileNotFoundException e){
        	 Reporter.log("file not found");
             throw (e);

         }

 }

 
 public static void setExcelFilehssf(String Path,String SheetName) throws Exception {

     try {
     	
         // Open the Excel file

      FileInputStream ExcelFile = new FileInputStream(Path);
     
      ExcelWBook1 = new HSSFWorkbook(ExcelFile);
      
      ExcelWSheet1 = ExcelWBook1.getSheet(SheetName);
      Reporter.log("Excel sheet opened");

      } catch (FileNotFoundException e){
     	 Reporter.log("file not found");
          throw (e);

      }

}

 //This method is to read the test data from the Excel cell, in this we are passing parameters as Row num and Col num

 public static String getCellData(int RowNum, int ColNum) throws Exception{

        try{

     	  Cell = ExcelWSheet.getRow(RowNum).getCell(ColNum);

           String CellData = Cell.getStringCellValue();

           return CellData;

           }catch (Exception e){

             return"";

           }

 }

 
 public static long getCellDataint(int RowNum, int ColNum) throws Exception{

   

  	  Cell = ExcelWSheet.getRow(RowNum).getCell(ColNum);

  	  long CellData = (long) Cell.getNumericCellValue();

        return CellData;

       

       

}
 
 public static double getCellDatadouble(int RowNum, int ColNum) throws Exception{

	   

 	  Cell = ExcelWSheet.getRow(RowNum).getCell(ColNum);

 	  double CellData = Cell.getNumericCellValue();

       return CellData;

      

      

}
 
 public static Date getCellDatadate(int RowNum, int ColNum) throws Exception{

	   

 	  Cell = ExcelWSheet.getRow(RowNum).getCell(ColNum);

 	  Date CellData = (Date) Cell.getDateCellValue();

       return CellData;

      

      

}

 //This method is to write in the Excel cell, Row num and Col num are the parameters

 //@SuppressWarnings("static-access")

 public static void setCellData(String Result, int RowNum, int ColNum) throws Exception {

		try {
			
			Row = ExcelWSheet.getRow(RowNum);

			// Row = ExcelWSheet.createRow(RowNum);
			if (Row == null) {
				Row = ExcelWSheet.createRow(RowNum);
				//Cell = Row.getCell(ColNum);

				//if (Cell == null) {

					Cell = Row.createCell(ColNum);
					Cell.setCellValue(Result);
					
				} else {
					
					Cell = Row.createCell(ColNum);
					Cell.setCellValue(Result);
			//	}
			}
//Constant variables Test Data path and Test Data file name

			FileOutputStream fileOut = new FileOutputStream("src/main/resources/TestData/SCLFileData.xlsx");

			ExcelWBook.write(fileOut);

			// fileOut.flush();

			// fileOut.close();

		} catch (Exception e) {

			throw (e);

		}

	}
 
 
 public static void setCellDatahssf(String Result, int RowNum, int ColNum) throws Exception {

		try {
			
			Row1 = ExcelWSheet1.getRow(RowNum);

			// Row = ExcelWSheet.createRow(RowNum);
			if (Row1 == null) {
				Row1 = ExcelWSheet1.createRow(RowNum);
				//Cell = Row.getCell(ColNum);

				//if (Cell == null) {

					Cell1 = Row1.createCell(ColNum);
					Cell1.setCellValue(Result);
					
				} else {
					
					Cell1 = Row1.createCell(ColNum);
					Cell1.setCellValue(Result);
			//	}
			}
//Constant variables Test Data path and Test Data file name

			FileOutputStream fileOut = new FileOutputStream("src/main/resources/TestData/SCLFileData.xls");

			ExcelWBook1.write(fileOut);

			// fileOut.flush();

			// fileOut.close();

		} catch (Exception e) {

			throw (e);

		}

	}
	public static int getRowContains(String sTestCaseName, int colNum) throws Exception{

		int i;

		try {

			int rowCount = ExcelLib.getRowUsed();

			for ( i=0 ; i<=rowCount; i++){

				if  (ExcelLib.getCellData(i,colNum).equalsIgnoreCase(sTestCaseName)){

					break;

				}

			}

			return i;

				}catch (Exception e){

			Reporter.log("Class ExcelUtil | Method getRowContains | Exception desc : " + e.getMessage());

			throw(e);

			}

		}

	public static int getRowUsed() throws Exception {

		try{

			int RowCount = ExcelWSheet.getLastRowNum();

			Reporter.log("Total number of Row used return as &lt; " + RowCount + " &gt;.");		

			return RowCount;

		}catch (Exception e){

			Reporter.log("Class ExcelUtil | Method getRowUsed | Exception desc : "+e.getMessage());

			System.out.println(e.getMessage());

			throw (e);

		}

	}

	
	

}
