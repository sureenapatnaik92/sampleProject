package com.kalkitech.doble.genericLib;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;



public class Demo3 {

	public static Boolean compareSheets(String Sheet1, String Sheet2) throws Exception {
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\SCLFileData.xlsx");
		Boolean status = null;
		Boolean actual_status = null;
		List<Boolean> list1 = new ArrayList<Boolean>();
		List<Boolean> list2 = new ArrayList<Boolean>();
		try
		{

			XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream) ;
			XSSFSheet sheet1 = workbook.getSheet(Sheet1);
			XSSFSheet sheet2 = workbook.getSheet(Sheet2);
			int rowNo1 = sheet1.getLastRowNum();
			int rowNo2 = sheet2.getLastRowNum();
			System.out.println("row2 is"  +rowNo2 );
			System.out.println("row1 is" +rowNo1);
			// Iterator<Row> rowIterator1 = sheet1.iterator();
			// Iterator<Row> rowIterator2 = sheet2.iterator();
			if(rowNo1 == rowNo2)
			{
				for(int i=0; i<rowNo1 ; i++)
				{
					list2.add(true);
				}
				for(int i =1 ; i<=rowNo1 ; i++)
				{
					System.out.println("i is "+i);
					outerloop:
						for(int j =1 ; j<=rowNo2 ; j++)
						{
							System.out.println("j is "+j);

							for(int k = 0; k<8;k++)
							{
								System.out.println("k is "+k);
								String value1 = getValue(sheet1 , i , k);
								String value2 = getValue(sheet2 , j , k);
								if(value1.equals(value2))
								{

									//System.out.println("same");
									status = true;
								}
								else
								{
									//System.out.println("not same");
									status = false;
									break;
								}
								if(k==7)
								{
									if(status == true)
									{
										list1.add(true);
										break outerloop;
									}
									else
									{
										list1.add(false);
									}
								}
							}

						}


					/* while (rowIterator1.hasNext() && rowIterator2.hasNext())
	        {
	            Row currentRow1 = rowIterator1.next();
	            Row currentRow2 = rowIterator2.next();
	            Iterator<Cell> cellIterartor1 = currentRow1.iterator();
	            Iterator<Cell> cellIterator2 = currentRow2.iterator();
	            while (cellIterartor1.hasNext() && cellIterator2.hasNext()) {
	                Cell currentCell1 = cellIterartor1.next();
	                Cell currentCell2 = cellIterator2.next();
	                     //logic to compare values
	                if(currentCell1.get.equals(currentCell2))
	                {

	                }
	            }*/
				}
			}
			else
			{
				actual_status = false;
			}
			System.out.println("list1 is "+list1);
			System.out.println("list2 is "+list2);

			if(list1.equals(list2))
			{
				actual_status = true;
			}
			else
			{
				actual_status =false;
			}
			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("actual_status is "+actual_status);
		return actual_status;
	}

	public static  Boolean compareXLSheetConfigMaster(String config, String master,List<List<String>>combinedList) throws Exception {
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\ConfigMasterFile.xls");
		Boolean status = null;
		List<String> list2 = new ArrayList<String>();
		HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream) ;
		HSSFSheet Config = workbook.getSheet(config);//config
		HSSFSheet Master = workbook.getSheet(master);//master
		int rowConfig = Config.getPhysicalNumberOfRows();//first row col
		int noOfColumns = Master.getRow(0).getLastCellNum();
		for(int i =1 ; i<=rowConfig ; i++)
		{
			HSSFRow configRowNo = Config.getRow(i);//first colum of 1st sheet
			HSSFCell configCellNo=configRowNo.getCell(0);//get the column index
			int configCellval=(int) configCellNo.getNumericCellValue();
			HSSFCell configRowVal=configRowNo.getCell(2);
			String configRowStringVal=configRowVal.getStringCellValue();//second column value for config file->must compare column
			HSSFCell configColVal=configRowNo.getCell(3);
			String configColStringVal=configColVal.getStringCellValue();//third column value->result compare column
			for(int j =0 ; j<noOfColumns ; j++)
			{
				HSSFCell masterColval = Master.getRow(0).getCell(j);
				int msterStringColval=(int) masterColval.getNumericCellValue();
				if(configCellval==msterStringColval && configRowStringVal.equals("Yes")|| configColStringVal.equals("Yes"))
				{
					HSSFCell configCellNum1=configRowNo.getCell(1);
					String configStringVal=configCellNum1.getStringCellValue();
					HSSFCell configCellNum0=configRowNo.getCell(0);
					int configIntValue=(int) configCellNum0.getNumericCellValue();
					list2.add(configStringVal);//gsetype,gsecontlre,
					Boolean stat=compareActualMaster(combinedList,"Master","Config",configStringVal,configIntValue,configColStringVal);
					if(stat)
						break;
					else
						break;

				}
			}
		}
		workbook.close();
		return status;
	}

	public static Boolean compareActualMaster(List<List<String>> combinedList,String master,String config, String value,int columnindex, String resultcompareVal) throws Exception
	{
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\ConfigMasterFile.xls");
		List<String> list = new ArrayList<String>();
		HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream) ;
		HSSFSheet Master = workbook.getSheet(master);
		HSSFSheet Config = workbook.getSheet(config);
		int rowNo2 = Master.getLastRowNum();//master
		int rowNo3 = Config.getLastRowNum();//config
		int mastercolNo=Master.getRow(0).getLastCellNum();
		int cellval =columnindex;//of sheet config
		String configFileVal=value;//value of config file cofresponding index

		int timeInterval=0;
		for(int i=0;i<mastercolNo;i++)//master
		{

			HSSFCell masterCol0 = Master.getRow(0).getCell(i); //index values for master file
			HSSFCell masterCol1 = Master.getRow(1).getCell(i); //row values of master file
			String masterStrgVal=masterCol1.getStringCellValue();
			int masterIntcolVal=(int) masterCol0.getNumericCellValue();
			if(cellval==masterIntcolVal && masterStrgVal.equals(configFileVal))
			{
				for(int j=2;j<rowNo2-1;j++)
				{
					if(resultcompareVal.equals("Yes"))
					{
						timeInterval=rowNo3;
						HSSFCell column_valueTime=Master.getRow(j).getCell(timeInterval);
						int columNoTime=(int) column_valueTime.getNumericCellValue();


						Thread.sleep(columNoTime);
						//for(int k=0;k<columNoTime;k++)
						//{
						HSSFCell column_value1=Master.getRow(j).getCell(i);
						String valueOfComaprable=column_value1.getStringCellValue();
						//match it the browser data
						System.out.println("valueOfComaprable"+valueOfComaprable);
						//for (int m = value3-1; m < combinedList.size(); m++)
						// {
						int m=masterIntcolVal-1;
						System.out.println("combinedList.size()"+combinedList.size());
						for (int n = 0; n < combinedList.get(m).size(); n++)
						{

							System.out.println("combinedList.get(m).get(n)"+combinedList.get(m).get(n));
							if((combinedList.get(m).get(n)).equals(valueOfComaprable))
							{
								System.out.println("pass");
								m++;
								ExcelLib.setExcelFilehssf("src/main/resources/TestData/ConfigMasterFile.xls", "LogSheet");
								ExcelLib.setCellDatahssf("Pass",columnindex, 4);
								break;
							}

						}

						//}

						//}
					}
					HSSFCell column_value1=Master.getRow(j).getCell(i);//column value index(i==column,j==row)
					list.add(column_value1.getStringCellValue());
					System.out.println("list" +list);
				}
			}
			List<String> list3=new ArrayList<>();
			HSSFCell indexValColMaster = Master.getRow(1).getCell(masterIntcolVal-1); //index values for master file
			//HSSFCell col51 = sheet2.getRow(0).getCell(i); //row values of master file
			String indexStringValMaster=indexValColMaster.getStringCellValue();
			if(indexStringValMaster.equals(configFileVal))
			{
				for(int j=1;j<=rowNo2;j++)
				{
					HSSFCell column_value1=Master.getRow(j).getCell(i);//column value index

					list3.add(column_value1.getStringCellValue());
					System.out.println("list3" +list3);
				}
			}
			workbook.close();
			if(list.equals(list3))
				return true;
			else
				return false;

		}
		workbook.close();
		return true;
	}


	public static Boolean compareXLSheets(String Sheet1, String Sheet2) throws Exception {
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\mandatoryTests.xls");

		Boolean status = null;
		Boolean actual_status = null;
		List<Boolean> list1 = new ArrayList<Boolean>();
		List<Boolean> list2 = new ArrayList<Boolean>();
		try
		{

			HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream) ;
			HSSFSheet sheet1 = workbook.getSheet(Sheet1);
			HSSFSheet sheet2 = workbook.getSheet(Sheet2);
			int rowNo1 = sheet1.getLastRowNum();
			int rowNo2 = sheet2.getLastRowNum();
			// Iterator<Row> rowIterator1 = sheet1.iterator();
			// Iterator<Row> rowIterator2 = sheet2.iterator();
			if(rowNo1 == rowNo2)
			{
				for(int i=0; i<rowNo1 ; i++)
				{
					list2.add(true);
				}
				for(int i =1 ; i<=rowNo1 ; i++)
				{
					System.out.println("i is "+i);
					outerloop:
						for(int j =1 ; j<=rowNo2 ; j++)
						{
							System.out.println("j is "+j);

							for(int k = 0; k<8;k++)
							{
								System.out.println("k is "+k);
								String value1 = getValue(sheet1 , i , k);
								String value2 = getValue(sheet2 , j , k);
								/*int tolerance = 5; //or any other value you want...

	        		    if(value1 <= (value2 + tolerance) &&
	        		       value1 >= (value2 - tolerance)){
	        		        status = true;

	        		    }
	        		}*/
								if(value1.equals(value2))
								{

									//System.out.println("same");
									status = true;
								}
								else
								{
									//System.out.println("not same");
									status = false;
									break;
								}
								if(k==7)
								{
									if(status == true)
									{
										list1.add(true);
										break outerloop;
									}
									else
									{
										list1.add(false);
									}
								}
							}

						}



				}
			}
			else
			{
				actual_status = false;
			}
			System.out.println("list1 is "+list1);
			if(list1.equals(list2))
			{
				actual_status = true;
			}
			else
			{
				actual_status =false;
			}
			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("actual_status is "+actual_status);
		return actual_status;
	}



	public static Boolean compareXLSheetFilter(String Sheet1, String Sheet2) throws Exception {
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\SCLFileData.xls");
		Boolean status = null;
		Boolean actual_status = null;
		List<Boolean> list1 = new ArrayList<Boolean>();
		List<Boolean> list2 = new ArrayList<Boolean>();
		try
		{

			HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream) ;
			HSSFSheet sheet1 = workbook.getSheet(Sheet1);
			HSSFSheet sheet2 = workbook.getSheet(Sheet2);
			int rowNo1 = sheet1.getLastRowNum();
			int rowNo2 = sheet2.getLastRowNum();
			if(rowNo1 == rowNo2)
			{
				for(int i=0; i<rowNo1 ; i++)
				{
					list2.add(true);
				}
				for(int i =1 ; i<=rowNo1 ; i++)
				{
					System.out.println("i is "+i);
					outerloop:
						for(int j =1 ; j<=rowNo2 ; j++)
						{
							System.out.println("j is "+j);

							for(int k = 0; k<8;k++)
							{
								System.out.println("k is "+k);
								String value1 = getValue(sheet1 , i , k);
								String value2 = getValue(sheet2 , j , k);
								if(value1.equals(value2))
								{

									//System.out.println("same");
									status = true;
								}
								else
								{
									//System.out.println("not same");
									status = false;
									break;
								}
								if(k==7)
								{
									if(status == true)
									{
										list1.add(true);
										break outerloop;
									}
									else
									{
										list1.add(false);
									}
								}
							}

						}



				}
			}
			else
			{
				actual_status = false;
			}
			System.out.println("list1 is "+list1);
			if(list1.equals(list2))
			{
				actual_status = true;
			}
			else
			{
				actual_status =false;
			}
			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("actual_status is "+actual_status);
		return actual_status;
	}




	public static String getValue(HSSFSheet sheet ,int x, int y){
		HSSFRow row =	sheet.getRow(x);
		if(row==null) return "";
		HSSFCell cell = row.getCell(y);
		if(cell==null) return "";
		CellType type = cell.getCellType();
		switch(type){
		case NUMERIC:
			return cell.getNumericCellValue() + "";
		case STRING:
			return cell.getStringCellValue();

		case BOOLEAN:
			return cell.getBooleanCellValue() + "";
		case ERROR:
			return cell.getErrorCellValue() + "";
		default:
			return "";
		}
	}
	public static String getValue(XSSFSheet sheet ,int x, int y){
		XSSFRow row =	sheet.getRow(x);
		if(row==null) return "";
		XSSFCell cell = row.getCell(y);
		if(cell==null) return "";
		CellType type = cell.getCellType();
		switch(type){
		case NUMERIC:
			return cell.getNumericCellValue() + "";
		case STRING:
			return cell.getStringCellValue();

		case BOOLEAN:
			return cell.getBooleanCellValue() + "";
		case ERROR:
			return cell.getErrorCellValue() + "";
		default:
			return "";
		}
	}

	public static Boolean compareXLSheetBook(String Sheet1, String Sheet2) throws Exception {
		//FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\mandatoryTests.xls");
		FileInputStream fileInputStream = new FileInputStream("src\\main\\resources\\TestData\\Log.xls");
		FileInputStream fileInputStream1 = new FileInputStream("src\\main\\resources\\TestData\\Log1.xls");

		Boolean status = null;
		Boolean actual_status = null;
		List<Boolean> list1 = new ArrayList<Boolean>();
		List<Boolean> list2 = new ArrayList<Boolean>();
		try
		{

			HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream) ;
			HSSFWorkbook workbook1 = new HSSFWorkbook(fileInputStream1) ;
			HSSFSheet sheet1 = workbook.getSheet(Sheet1);
			HSSFSheet sheet2 = workbook1.getSheet(Sheet2);
			int rowNo1 = sheet1.getLastRowNum();
			int rowNo2 = sheet2.getLastRowNum();
			// Iterator<Row> rowIterator1 = sheet1.iterator();
			// Iterator<Row> rowIterator2 = sheet2.iterator();
			if(rowNo1 == rowNo2)
			{
				for(int i=0; i<rowNo1 ; i++)
				{
					list2.add(true);
				}
				for(int i =1 ; i<=rowNo1 ; i++)
				{
					System.out.println("i is "+i);
					outerloop:
						for(int j =1 ; j<=rowNo2 ; j++)
						{
							System.out.println("j is "+j);

							for(int k = 0; k<8;k++)
							{
								System.out.println("k is "+k);
								String value1 = getValue(sheet1 , i , k);
								String value2 = getValue(sheet2 , j , k);
								if(value1.equals(value2))
								{

									//System.out.println("same");
									status = true;
								}
								else
								{
									//System.out.println("not same");
									status = false;
									break;
								}
								if(k==7)
								{
									if(status == true)
									{
										list1.add(true);
										break outerloop;
									}
									else
									{
										list1.add(false);
									}
								}
							}

						}



				}
			}
			else
			{
				actual_status = false;
			}
			System.out.println("list1 is "+list1);
			if(list1.equals(list2))
			{
				actual_status = true;
			}
			else
			{
				actual_status =false;
			}
			workbook.close();
			workbook1.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("actual_status is "+actual_status);
		return actual_status;
	}


}
