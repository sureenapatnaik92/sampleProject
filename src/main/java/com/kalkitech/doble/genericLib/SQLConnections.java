package com.kalkitech.doble.genericLib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;




public class SQLConnections {
	
	// Object of Connection from the Database
	 static Connection conn = null;
	 
	 // Object of Statement. It is used to create a Statement to execute the query
	 Statement stmt = null;
	 
	 //Object of ResultSet => 'It maintains a cursor that points to the current row in the result set'
	 ResultSet resultSet = null;
	/* WebDriver driver;*/
	 

	 public static void SetUpConnection() throws SQLException, ClassNotFoundException {
	 
		 System.out.println("enter1");
	 // Register JDBC driver (JDBC driver name and Database URL)
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("enter2");
	 // Open a connection
	 conn = (Connection) DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.118:1521/tneb", "eltrixtn2", "eltrixtn2");
	 System.out.println("enter3");
	 
	 }
	
	 public static void insertAssesssedData(List<String> items) throws Exception
	 {
		 
		 Iterator<String> it = items.iterator();
			
			String meterAssessedId = (String) it.next();
			String meterSerial = (String) it.next();
			String meterDate = it.next();
			java.sql.Date sqlDate = java.sql.Date.valueOf(meterDate);
			//Date date1=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(meterDate);
			String meterAttribute = it.next();
			String meterDataType = it.next();
			
	 String query = " Insert into ABT_MDD_ASSESSED_DATA (METER_ASSET_ID, METER_SERIAL , METER_DATE, METER_ATTRIBUTE,METER_DATA_TYPE) values(?,?,?,?,?)";
	try { 
	 // create the mysql insert preparedstatement
	 PreparedStatement preparedStmt = conn.prepareStatement(query);
	 preparedStmt.setString(1, meterAssessedId);
	 preparedStmt.setString(2, meterSerial);
	 preparedStmt.setDate(3, sqlDate);
	 preparedStmt.setString(4, meterAttribute);
	 preparedStmt.setString(5, meterDataType);
	 preparedStmt.execute();
	 System.out.println("insert done");
	}catch (Exception e) {
		 System.out.println("Got an exception!");
		 System.out.println(e.getMessage());
		 }
	 }
	 
	 //Delete Meter Raw Data
	 public static void deleteRawData(String serialNo)
	 {
		 
		 String query = "Delete  FROM  ABT_MDD_RAW_DATA where SERIAL_NO = ?";
		 
		 try 
	         {
		        PreparedStatement pstmt = conn.prepareStatement(query);
	            // set the corresponding param
	            pstmt.setString(1, serialNo);
	            // execute the delete statement
	            pstmt.executeUpdate();
	 System.out.println("delete done");
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	 }
	 
	 //Insert Meter Raw Data
	 public static void insertRawData(List<String> items) throws Exception
	 {
		 
		 Iterator<String> it = items.iterator();
			
			String meterSerial = (String) it.next();
			String meterParamName = (String) it.next();
			String meterSourceFileName = (String) it.next();
			String meterDate = it.next();
			//Date date1=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(meterDate);
			java.sql.Date sqlDate = java.sql.Date.valueOf(meterDate);
			String Block_1 = it.next();
			double block1 = Double.valueOf(Block_1);
			String Block_2 = it.next();
			double block2 = Double.valueOf(Block_2);
			String Block_3 = it.next();
			double block3 = Double.valueOf(Block_3);
			String Block_4 = it.next();
			double block4 = Double.valueOf(Block_4);
			String unit = (String) it.next();
			
	 String query = " Insert into ABT_MDD_RAW_DATA (SERIAL_NO, METER_PARAM_NAME , SOURCE_FILE_NAME, METER_DATE,BLOCK_1,BLOCK_2,BLOCK_3,BLOCK_4,BLOCK_5,BLOCK_6,BLOCK_7,BLOCK_8,BLOCK_9,BLOCK_10,BLOCK_11,BLOCK_12,BLOCK_13,BLOCK_14,BLOCK_15,BLOCK_16,BLOCK_17,BLOCK_18,BLOCK_19,BLOCK_20,BLOCK_21,BLOCK_22,BLOCK_23,BLOCK_24,BLOCK_25,BLOCK_26,BLOCK_27,BLOCK_28,BLOCK_29,BLOCK_30,BLOCK_31,BLOCK_32,BLOCK_33,BLOCK_34,BLOCK_35,BLOCK_36,BLOCK_37,BLOCK_38,BLOCK_39,BLOCK_40,BLOCK_41,BLOCK_42,BLOCK_43,BLOCK_44,BLOCK_45,BLOCK_46,BLOCK_47,BLOCK_48,BLOCK_49,BLOCK_50,BLOCK_51,BLOCK_52,BLOCK_53,BLOCK_54,BLOCK_55,BLOCK_56,BLOCK_57,BLOCK_58,BLOCK_59,BLOCK_60,BLOCK_61,BLOCK_62,BLOCK_63,BLOCK_64,BLOCK_65,BLOCK_66,BLOCK_67,BLOCK_68,BLOCK_69,BLOCK_70,BLOCK_71,BLOCK_72,BLOCK_73,BLOCK_74,BLOCK_75,BLOCK_76,BLOCK_77,BLOCK_78,BLOCK_79,BLOCK_80,BLOCK_81,BLOCK_82,BLOCK_83,BLOCK_84,BLOCK_85,BLOCK_86,BLOCK_87,BLOCK_88,BLOCK_89,BLOCK_90,BLOCK_91,BLOCK_92,BLOCK_93,BLOCK_94,BLOCK_95,BLOCK_96,UNITS)"
	 		+ "                               values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
		 // create the mysql insert preparedstatement
		 PreparedStatement preparedStmt = conn.prepareStatement(query);
		 preparedStmt.setString(1, meterSerial);
		 preparedStmt.setString(2, meterParamName);
		 preparedStmt.setDate(4, sqlDate);
		 preparedStmt.setString(3, meterSourceFileName);
		 preparedStmt.setDouble(5, block1);
		 preparedStmt.setDouble(6, block2);
		 preparedStmt.setDouble(7, block3);
		 preparedStmt.setDouble(8, block4);
		 preparedStmt.setDouble(9, block4);
		 preparedStmt.setDouble(10, block4);
		 preparedStmt.setDouble(11, block4);
		 preparedStmt.setDouble(12, block4);
		 preparedStmt.setDouble(13, block4);
		 preparedStmt.setDouble(14, block4);
		 preparedStmt.setDouble(15, block4);
		 preparedStmt.setDouble(16, block4);
		 preparedStmt.setDouble(17, block4);
		 preparedStmt.setDouble(18, block4);
		 preparedStmt.setDouble(19, block4);
		 preparedStmt.setDouble(20, block4);
		 preparedStmt.setDouble(21, block4);
		 preparedStmt.setDouble(22, block4);
		 preparedStmt.setDouble(23, block4);
		 preparedStmt.setDouble(24, block4);
		 preparedStmt.setDouble(25, block4);
		 preparedStmt.setDouble(26, block4);
		 preparedStmt.setDouble(27, block4);
		 preparedStmt.setDouble(28, block4);
		 preparedStmt.setDouble(29, block4);
		 preparedStmt.setDouble(30, block4);
		 preparedStmt.setDouble(31, block4);
		 preparedStmt.setDouble(32, block4);
		 preparedStmt.setDouble(33, block4);
		 preparedStmt.setDouble(34, block4);
		 preparedStmt.setDouble(35, block4);
		 preparedStmt.setDouble(36, block4);
		 preparedStmt.setDouble(37, block4);
		 preparedStmt.setDouble(38, block4);
		 preparedStmt.setDouble(39, block4);
		 preparedStmt.setDouble(40, block4);
		 preparedStmt.setDouble(41, block4);
		 preparedStmt.setDouble(42, block4);
		 preparedStmt.setDouble(43, block4);
		 preparedStmt.setDouble(44, block4);
		 preparedStmt.setDouble(45, block4);
		 preparedStmt.setDouble(46, block4);
		 preparedStmt.setDouble(47, block4);
		 preparedStmt.setDouble(48, block4);
		 preparedStmt.setDouble(49, block4);
		 preparedStmt.setDouble(50, block4);
		 preparedStmt.setDouble(51, block4);
		 preparedStmt.setDouble(52, block4);
		 preparedStmt.setDouble(53, block4);
		 preparedStmt.setDouble(54, block4);
		 preparedStmt.setDouble(55, block4);
		 preparedStmt.setDouble(56, block4);
		 preparedStmt.setDouble(57, block4);
		 preparedStmt.setDouble(58, block4);
		 preparedStmt.setDouble(59, block4);
		 preparedStmt.setDouble(60, block4);
		 preparedStmt.setDouble(61, block4);
		 preparedStmt.setDouble(62, block4);
		 preparedStmt.setDouble(63, block4);
		 preparedStmt.setDouble(64, block4);
		 preparedStmt.setDouble(65, block4);
		 preparedStmt.setDouble(66, block4);
		 preparedStmt.setDouble(67, block4);
		 preparedStmt.setDouble(68, block4);
		 preparedStmt.setDouble(69, block4);
		 preparedStmt.setDouble(70, block4);
		 preparedStmt.setDouble(71, block4);
		 preparedStmt.setDouble(72, block4);
		 preparedStmt.setDouble(73, block4);
		 preparedStmt.setDouble(74, block4);
		 preparedStmt.setDouble(75, block4);
		 preparedStmt.setDouble(76, block4);
		 preparedStmt.setDouble(77, block4);
		 preparedStmt.setDouble(78, block4);
		 preparedStmt.setDouble(79, block4);
		 preparedStmt.setDouble(80, block4);
		 preparedStmt.setDouble(81, block4);
		 preparedStmt.setDouble(82, block4);
		 preparedStmt.setDouble(83, block4);
		 preparedStmt.setDouble(84, block4);
		 preparedStmt.setDouble(85, block4);
		 preparedStmt.setDouble(86, block4);
		 preparedStmt.setDouble(87, block4);
		 preparedStmt.setDouble(88, block4);
		 preparedStmt.setDouble(89, block4);
		 preparedStmt.setDouble(90, block4);
		 preparedStmt.setDouble(91, block4);
		 preparedStmt.setDouble(92, block4);
		 preparedStmt.setDouble(93, block4);
		 preparedStmt.setDouble(94, block4);
		 preparedStmt.setDouble(95, block4);
		 preparedStmt.setDouble(96, block4);
		 preparedStmt.setDouble(97, block4);
		 preparedStmt.setDouble(98, block4);
		 preparedStmt.setDouble(99, block4);
		 preparedStmt.setDouble(100, block4);
		 preparedStmt.setString(101, unit);
	 // execute the preparedstatement
		
			/*String query = " Insert into ABT_MDD_RAW_DATA (SERIAL_NO, METER_PARAM_NAME , SOURCE_FILE_NAME, METER_DATE,BLOCK_1,BLOCK_2,BLOCK_3,BLOCK_4,UNITS) values(?,?,?,?,?,?,?,?,?)";
			try { 
				 // create the mysql insert preparedstatement
				 PreparedStatement preparedStmt = conn.prepareStatement(query);
				 preparedStmt.setString(1, meterSerial);
				 preparedStmt.setString(2, meterParamName);
				 preparedStmt.setDate(4, sqlDate);
				 preparedStmt.setString(3, meterSourceFileName);
				 preparedStmt.setDouble(5, block1);
				 preparedStmt.setDouble(6, block2);
				 preparedStmt.setDouble(7, block3);
				 preparedStmt.setDouble(8, block4);
				 preparedStmt.setString(9, unit);*/
				 
	 preparedStmt.execute();
	 
	 System.out.println("insert done");
	 } catch (Exception e) {
	 System.out.println("Got an exception!");
	 System.out.println(e.getMessage());
	 }
	 }
		
	 
	 
	 public static void deleteMidNightData(String meterId)
	 {
		 
		 String query = "Delete  FROM  ABT_MDD_MIDNIGHT_DATA where METER_ID = ?";
		 
		 try 
	         {
		        PreparedStatement pstmt = conn.prepareStatement(query);
	            // set the corresponding param
	            pstmt.setString(1, meterId);
	            // execute the delete statement
	            pstmt.executeUpdate();
	 System.out.println("delete done");
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	 }
	 
	 
	 public static void insertMidNightData(List<String> items) throws Exception
	 {
		 
		 Iterator<String> it = items.iterator();
			
			String meterId = (String) it.next();
			String meterSerial = (String) it.next();
			//String meterSourceFileName = (String) it.next();
			String meterDate = it.next();
			//Date date1=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(meterDate);
			java.sql.Date sqlDate = java.sql.Date.valueOf(meterDate);
			String meterAttribute = it.next();
			String meterType = it.next();
			String METER_VALUE = it.next();
			System.out.println(METER_VALUE);
			double meterValue = Double.valueOf(METER_VALUE);
			System.out.println(meterValue);
			String unit = (String) it.next();
			
	 String query = " Insert into ABT_MDD_MIDNIGHT_DATA (METER_ID, METER_SERIAL , METER_DATE, METER_ATTRIBUTE,METER_TYPE,METER_VALUE,PARAM_UNITS) values(?,?,?,?,?,?,?)";
		try { 
		 // create the mysql insert preparedstatement
		 PreparedStatement preparedStmt = conn.prepareStatement(query);
		 preparedStmt.setString(1, meterId);
		 preparedStmt.setString(2, meterSerial);
		 preparedStmt.setDate(3, sqlDate);
		 
		 preparedStmt.setString(4, meterAttribute);
		 preparedStmt.setString(5, meterType);
		 preparedStmt.setDouble(6, meterValue);
		 preparedStmt.setString(7, unit);
		
	 // execute the preparedstatement
	 preparedStmt.execute();
	 
	 System.out.println("insert done");
	 } catch (Exception e) {
	 System.out.println("Got an exception!");
	 System.out.println(e.getMessage());
	 }
	 } 
	 
	 
	 public static void closeConnection() throws Exception
	 {
	 
	 // closing DB Connection		
		conn.close();	
	 }
	 
	 /*System.setProperty("webdriver.chrome.driver", "<Path of Driver>\\chromedriver.exe");
	 ChromeOptions options = new ChromeOptions();
	 
	 // Code to disable the popup of saved password
	 Map<String, Object> prefs = new HashMap<String, Object>();
	 prefs.put("credentials_enable_service", false);
	 prefs.put("password_manager_enabled", false);
	 options.setExperimentalOption("prefs", prefs);
	 Browsers.driver = new ChromeDriver(options);
	 Browsers.driver.get("<URL>");
*/
}

