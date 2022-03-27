package com.kalkitech.doble.genericLib;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class SCLFileReading {

	
	public static List<Element> parseNodeElements(NodeList nList) {
        List<Element> list = new ArrayList<Element>();
        int size = (nList == null) ? 0 : nList.getLength();
        for (int index = 0; index < size; index++) {
            Node node = nList.item(index);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                Element eElement = (Element) node;
                list.add(eElement);
            }
        }
        return list;
    }

	public static void fileReadAndGetGSE(String filepath) throws Exception{
	
		 try {
	        	
        	 ExcelLib.setExcelFilehssf("src\\main\\resources\\TestData\\SCLFileData.xls", "Sheet2");
        	List<String> GSENames = new ArrayList<String>();
        	List<String> LDNames = new ArrayList<String>();
        	List<String> GSEID = new ArrayList<String>();
        	List<String> dataSet = new ArrayList<String>();
            File inputFile = new File(filepath);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputFile);    
            document.getDocumentElement().normalize();
                        
            NodeList nList1 = document.getElementsByTagName("IED");
          
            List<Element> eList1 = parseNodeElements(nList1);//IED        
                
            String iedName = eList1.get(0).getAttribute("name");
           System.out.println("IED Name is "+iedName);
            
            NodeList nList2 = eList1.get(0).getChildNodes();
            List<Element> eList2 = parseNodeElements(nList2);              //IED child nodes to get Accesspoint
           
            int size = (eList2 == null) ? 0 : eList2.size();
            for (int ind = 0; ind < size; ind++)
            {
                Element e = eList2.get(ind);
            
               String tagname=  e.getTagName();
          
                if(tagname.equals("AccessPoint"))                //Accesspoint
                {
           
                	 NodeList nList3 = e.getChildNodes();
                	 List<Element> eList3 = parseNodeElements(nList3);             // server 
               
                    
                     NodeList nList4 = eList3.get(0).getChildNodes();
                     List<Element> eList4 = parseNodeElements(nList4);           // server childnodes for LDevices 
                 
                     int size1 = (eList4 == null) ? 0 : eList4.size();
                     for (int ind1 = 0; ind1 < size1; ind1++) 
                     {
                         Element e1 = eList4.get(ind1);
                      
                        String tagname1=  e1.getTagName();
                     
                         if(tagname1.equals("LDevice"))                                 // LDevices
                         {
                         	
                         	NodeList nList5 = e1.getChildNodes();
                         	List<Element>  eList5 = parseNodeElements(nList5);        // LDevices childnodes for LN0 
                            
                              
                              int size2 = (eList5 == null) ? 0 : eList5.size();
                              for (int ind2 = 0; ind2 < size2; ind2++) 
                              {
                                  Element e2 = eList5.get(ind2);
                                
                                 String tagname2=  e2.getTagName();
                               
                                  if(tagname2.equals("LN0"))              //LN0
                                  {
                               
                                  	NodeList nList6 = e2.getChildNodes();
                                  	List<Element>  eList6 = parseNodeElements(nList6);             //  LN0 childnodes for GSEControl 
                                   
                                       int size3 = (eList6 == null) ? 0 : eList6.size();
                                       System.out.print("The List is" +eList6);
                                       for (int ind3 = 0; ind3 < size3; ind3++) 
                                       {
                                           Element e3 = eList6.get(ind3);
                                     
                                          String tagname3=  e3.getTagName();
                                          
                                           if(tagname3.equals("DataSet"))                 //GSEControl
                                           {
                                           	
                                            /* if(e3.hasAttribute("datSet"))                     // GSE which contains datasets
                                             {
                                            	 System.out.println("LD name is "+e1.getAttribute("inst"));
                                               	 LDNames.add(e1.getAttribute("inst"));
                                            	 System.out.println("Logical Node"+e3.getAttribute("name"));          //Name of GSE which contains datasets
                                            	 System.out.println("datast id"+e3.getAttribute("datSet"));        //dataset name
                                            	 System.out.println("app Id"+e3.getAttribute("appID")); 
                                            	
                                            	 //AppID
                                            	 GSENames.add(e3.getAttribute("name"));
                                            	 GSEID.add(e3.getAttribute("appID"));
                                            	 dataSet.add(e3.getAttribute("datSet"));
                                            	 
                                            	 
                                             }*/
                                        	   NodeList nList7 = e3.getChildNodes();
                                            	List<Element>  eList7 = parseNodeElements(nList7);             //  LN0 childnodes for GSEControl 
                                             
                                              int size4 = (eList7 == null) ? 0 : eList7.size();
                                              for (int ind4 = 0; ind4 < size4; ind4++) 
                                              {
   	                                           Element e4=eList7.get(ind4);
   	                                           String tagname4=e4.getTagName();
   	                                           	if(tagname4.equals("FCDA"))
   	                                           	{
   	                                           		if(e4.hasAttribute("fc"))
   	                                           		{
   	                                           		 System.out.println("ldInst attributr"+e4.getAttribute("ldInst"));
   	                                           	     System.out.println("lnClass attributr"+e4.getAttribute("lnClass"));
   	                                            	System.out.println("fc attributr"+e4.getAttribute("fc"));
   	                                            	System.out.println("doName attributr"+e4.getAttribute("doName"));
   	                                            	System.out.println("prefix attributr"+e4.getAttribute("prefix"));
   	   	                                           	
   	                                           	
   	                                           		}
   	                                           	}
                                              }
                                             
                                             
                                             
                                           }
                                            
                                       }
                                       
                                  }
                         }
                              
                     }
                }
              
            }
            
            }
                  System.out.println("GSENames are "+GSENames.size());  
                  System.out.println("LDNames are "+LDNames.size());  
                  
                
                 for(int i=0;i<GSENames.size();i++)
                 	 {
                	    int row = i+1;
                 	    ExcelLib.setCellDatahssf(iedName, row, 0);
                 	    ExcelLib.setCellDatahssf(GSENames.get(i),row, 2);
                 	      
                 	    
                 	 } 
                   
                   for(int i=0;i<LDNames.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(LDNames.get(i),i+1, 1);
               	     }
                   
                   for(int i=0;i<GSEID.size();i++)
                 	 {
                	   ExcelLib.setCellDatahssf(GSEID.get(i),i+1, 3);
                 	 }
                   for(int i=0;i<dataSet.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(dataSet.get(i),i+1, 4);
               	     }
                  
                              }catch(Exception e){

                                  throw (e);

                          }
	
                 	    
                 	 }
                   
              

       


    public static void fileReadGSE(String filepath) throws Exception {

        try {
        	
            ExcelLib.setExcelFile("src\\main\\resources\\TestData\\SCLFileData.xlsx", "Sheet2");
        	List<String> GSENames = new ArrayList<String>();
        	List<String> LDNames = new ArrayList<String>();
        	List<String> GSEID = new ArrayList<String>();
        	List<String> dataSet = new ArrayList<String>();
        	//List<String> macAddress = new ArrayList<String>();
        	//List<String> vlanID = new ArrayList<String>();
            File inputFile = new File(filepath);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputFile);    
            document.getDocumentElement().normalize();
                        
            NodeList nList1 = document.getElementsByTagName("IED");
           // System.out.println("nlist is "+nList);
            List<Element> eList1 = parseNodeElements(nList1);//IED        
            System.out.println("eList1 is "+eList1);
            System.out.println("IED name is "+eList1.get(0).getAttribute("name"));       // IED name
            String iedName = eList1.get(0).getAttribute("name");
           
            
            NodeList nList2 = eList1.get(0).getChildNodes();
            List<Element> eList2 = parseNodeElements(nList2);              //IED child nodes to get Accesspoint
           // System.out.println(eList2);
            
            int size = (eList2 == null) ? 0 : eList2.size();
            for (int ind = 0; ind < size; ind++)
            {
                Element e = eList2.get(ind);
             //   System.out.println(e);
               String tagname=  e.getTagName();
             //  System.out.println(tagname);
                if(tagname.equals("AccessPoint"))                //Accesspoint
                {
                //	 System.out.println("hi");
                	 NodeList nList3 = e.getChildNodes();
                	 List<Element> eList3 = parseNodeElements(nList3);             // server 
                  //   System.out.println("1. eList3 is "+eList3);
                    
                     NodeList nList4 = eList3.get(0).getChildNodes();
                     List<Element> eList4 = parseNodeElements(nList4);           // server childnodes for LDevices 
                   //  System.out.println("2. eList4 is "+eList4);
                     
                     int size1 = (eList4 == null) ? 0 : eList4.size();
                     for (int ind1 = 0; ind1 < size1; ind1++) 
                     {
                         Element e1 = eList4.get(ind1);
                       //  System.out.println(e1);
                        String tagname1=  e1.getTagName();
                      //  System.out.println(tagname1);
                         if(tagname1.equals("LDevice"))                                 // LDevices
                         {
                         	
                         	NodeList nList5 = e1.getChildNodes();
                         	List<Element>  eList5 = parseNodeElements(nList5);        // LDevices childnodes for LN0 
                            //  System.out.println("3. eList5 is " +eList5);
                              
                              int size2 = (eList5 == null) ? 0 : eList5.size();
                              for (int ind2 = 0; ind2 < size2; ind2++) 
                              {
                                  Element e2 = eList5.get(ind2);
                                //  System.out.println(e2);
                                 String tagname2=  e2.getTagName();
                                // System.out.println(tagname2);
                                  if(tagname2.equals("LN0"))              //LN0
                                  {
                                  //	 System.out.println("hi2");
                                  	NodeList nList6 = e2.getChildNodes();
                                  	List<Element>  eList6 = parseNodeElements(nList6);             //  LN0 childnodes for GSEControl 
                                    //   System.out.println("4. eList6 is " +eList6);
                                       
                                       
                                       int size3 = (eList6 == null) ? 0 : eList6.size();
                                       for (int ind3 = 0; ind3 < size3; ind3++) 
                                       {
                                           Element e3 = eList6.get(ind3);
                                       //    System.out.println(e3);
                                          String tagname3=  e3.getTagName();
                                        //  System.out.println(tagname3);
                                           if(tagname3.equals("GSEControl"))                 //GSEControl
                                           {
                                           	
                                             if(e3.hasAttribute("datSet"))                     // GSE which contains datasets
                                             {
                                            	 System.out.println("LD name is "+e1.getAttribute("inst"));
                                               	 LDNames.add(e1.getAttribute("inst"));
                                            	 System.out.println(e3.getAttribute("name"));          //Name of GSE which contains datasets
                                            	 System.out.println(e3.getAttribute("datSet"));        //dataset name
                                            	 System.out.println(e3.getAttribute("appID"));         //AppID
                                            	 GSENames.add(e3.getAttribute("name"));
                                            	 GSEID.add(e3.getAttribute("appID"));
                                            	 dataSet.add(e3.getAttribute("datSet"));
                                            	 
                                            	 
                                             }
                                           }
                                       }
                                  }
                         }
                              
                         }
                }
              
            }
            
            }
                  System.out.println("GSENames are "+GSENames.size());  
                  System.out.println("LDNames are "+LDNames.size());  
                  
                  NodeList nList8 = document.getElementsByTagName("Communication");
                  List<Element> eList8 = parseNodeElements(nList8);     //Communication        
                   System.out.println("eList8 is "+eList8);
                   NodeList nList9 = eList8.get(0).getChildNodes();
                   List<Element> eList9 = parseNodeElements(nList9);     //SubNetwork
                   System.out.println("eList9 is "+eList9);
                   NodeList nList10 = eList9.get(0).getChildNodes();
                   List<Element> eList10 = parseNodeElements(nList10);     // ConnectedAP  
                  System.out.println("eList10 is "+eList10);
                  
                  int size6 = (eList10 == null) ? 0 : eList10.size();
                  for (int ind6 = 0; ind6 < size6; ind6++) 
                  {
                      Element e6 = eList10.get(ind6);
                    //  System.out.println(e2);
                     String tagname6=  e6.getTagName();
                    // System.out.println(tagname2);
                      if(tagname6.equals("ConnectedAP"))              //ConnectedAP
                      {
                    	  
                      
                  
                   NodeList nList13 = e6.getChildNodes();
                   List<Element> eList13 = parseNodeElements(nList13);     // GSE  
                   System.out.println("eList13 is "+eList13);
                   
                   int size4 = (eList13 == null) ? 0 : eList13.size();
                   for (int ind4 = 0; ind4 < size4; ind4++)
                   {
                       Element e4 = eList13.get(ind4);
                       System.out.println(e4);
                      String tagname4=  e4.getTagName();
                      System.out.println(tagname4);
                       if(tagname4.equals("GSE"))             
                       {
                       	 System.out.println("hi22");
                       	 String gseName = e4.getAttribute("cbName");
                       	 for(int i=0;i<GSENames.size();i++)
                       	 {
                       		
                       		 if(GSENames.get(i).equals(gseName))
                       		 {
                       			NodeList nList11 = e4.getChildNodes();
                              	 List<Element> eList11 = parseNodeElements(nList11); // services 
                                   System.out.println("1. eList11 is "+eList11); 
                                   
                                   NodeList nList12 = eList11.get(0).getChildNodes();
                                	 List<Element> eList12 = parseNodeElements(nList12); // services 
                                    System.out.println("1. eList12 is "+eList12); 
                                   
                                    // int size5 = (eList12 == null) ? 0 : eList12.size();
                                     //for (int ind5 = 0; ind5 < size5; ind5++)
                                     //{
                                    	 //Element e5 = eList12.get(ind5);
                                         //System.out.println(e5);
										/*
										 * if((e5.getAttribute("type")).equals("MAC-Address")) {
										 * System.out.println("mac address is "+e5.getTextContent());
										 * macAddress.add(e5.getTextContent()); }
										 */
										/*
										 * if((e5.getAttribute("type")).equals("APPID")) {
										 * System.out.println("App Id is "+e5.getTextContent());
										 * AppId.add(e5.getTextContent()); }
										 */
										/*
										 * if((e5.getAttribute("type")).equals("VLAN-ID")) {
										 * System.out.println("VLAN-ID is "+e5.getTextContent());
										 * vlanID.add(e5.getTextContent()); }
										 */       
                                    	// }
                                     }
                       	 }
                       		 }
                       	 }
                       	 
                       }
                   }
                   //System.out.println("macaddress  are "+macAddress.size()); 
                  // System.out.println("App ID  are "+AppId.size()); 
                   //System.out.println("vlan  are "+vlanID.size()); 
     
                 for(int i=0;i<GSENames.size();i++)
                 	 {
                	    int row = i+1;
                 	    ExcelLib.setCellData(iedName, row, 0);
                 	    ExcelLib.setCellData(GSENames.get(i),row, 2);
                 	      
                 	    
                 	 } 
                   
                   for(int i=0;i<LDNames.size();i++)
               	     {
                	   ExcelLib.setCellData(LDNames.get(i),i+1, 1);
               	     }
                   
                   for(int i=0;i<GSEID.size();i++)
                 	 {
                	   ExcelLib.setCellData(GSEID.get(i),i+1, 3);
                 	 }
                   for(int i=0;i<dataSet.size();i++)
               	     {
                	   ExcelLib.setCellData(dataSet.get(i),i+1, 4);
               	     }
			/*
			 * for(int i=0;i<macAddress.size();i++) {
			 * ExcelLib.setCellData(macAddress.get(i),i+1, 5); }
			 */  /* for(int i=0;i<AppId.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(AppId.get(i),i+1, 6);
               	     }*/
			/*
			 * for(int i=0;i<vlanID.size();i++) { ExcelLib.setCellData(vlanID.get(i),i+1,
			 * 6); }
			 */
                              }catch(Exception e){

                                  throw (e);

                          }

                 	    
                 	 }
                   
                  /* for(int j=0;j<LDNames.size();j++)
               	 {
                	 String x = LDNames.get(j);
                	 System.out.println(x);
               	     ExcelLib.setCellDatahssf(x, j+1, 1);
               	 }*/

       
    
    public static void fileReadSV(String filepath) throws Exception {

        try {
        	
        	 ExcelLib.setExcelFilehssf("src\\main\\resources\\TestData\\SCLFileData.xls", "sv_actual");
        	List<String> SVNames = new ArrayList<String>();
        	List<String> LDNames = new ArrayList<String>();
        	List<String> SMVID = new ArrayList<String>();
        	List<String> dataSet = new ArrayList<String>();
        	List<String> macAddress = new ArrayList<String>();
        	List<String> AppId = new ArrayList<String>();
        	List<String> vlanID = new ArrayList<String>();
            File inputFile = new File(filepath);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputFile);    
            document.getDocumentElement().normalize();
                        
            NodeList nList1 = document.getElementsByTagName("IED");
           // System.out.println("nlist is "+nList);
            List<Element> eList1 = parseNodeElements(nList1);//IED        
            System.out.println("eList1 is "+eList1);
            System.out.println("IED name is "+eList1.get(0).getAttribute("name"));       // IED name
            String iedName = eList1.get(0).getAttribute("name");
           
            
            NodeList nList2 = eList1.get(0).getChildNodes();
            List<Element> eList2 = parseNodeElements(nList2);              //IED child nodes to get Accesspoint
           // System.out.println(eList2);
            
            int size = (eList2 == null) ? 0 : eList2.size();
            for (int ind = 0; ind < size; ind++)
            {
                Element e = eList2.get(ind);
             //   System.out.println(e);
               String tagname=  e.getTagName();
             //  System.out.println(tagname);
                if(tagname.equals("AccessPoint"))                //Accesspoint
                {
                //	 System.out.println("hi");
                	 NodeList nList3 = e.getChildNodes();
                	 List<Element> eList3 = parseNodeElements(nList3);             // server 
                  //   System.out.println("1. eList3 is "+eList3);
                    
                     NodeList nList4 = eList3.get(0).getChildNodes();
                     List<Element> eList4 = parseNodeElements(nList4);           // server childnodes for LDevices 
                   //  System.out.println("2. eList4 is "+eList4);
                     
                     int size1 = (eList4 == null) ? 0 : eList4.size();
                     for (int ind1 = 0; ind1 < size1; ind1++) 
                     {
                         Element e1 = eList4.get(ind1);
                       //  System.out.println(e1);
                        String tagname1=  e1.getTagName();
                      //  System.out.println(tagname1);
                         if(tagname1.equals("LDevice"))                                 // LDevices
                         {
                         	
                         	NodeList nList5 = e1.getChildNodes();
                         	List<Element>  eList5 = parseNodeElements(nList5);        // LDevices childnodes for LN0 
                            //  System.out.println("3. eList5 is " +eList5);
                              
                              int size2 = (eList5 == null) ? 0 : eList5.size();
                              for (int ind2 = 0; ind2 < size2; ind2++) 
                              {
                                  Element e2 = eList5.get(ind2);
                                //  System.out.println(e2);
                                 String tagname2=  e2.getTagName();
                                // System.out.println(tagname2);
                                  if(tagname2.equals("LN0"))              //LN0
                                  {
                                  //	 System.out.println("hi2");
                                  	NodeList nList6 = e2.getChildNodes();
                                  	List<Element>  eList6 = parseNodeElements(nList6);             //  LN0 childnodes for GSEControl 
                                    //   System.out.println("4. eList6 is " +eList6);
                                       
                                       
                                       int size3 = (eList6 == null) ? 0 : eList6.size();
                                       for (int ind3 = 0; ind3 < size3; ind3++) 
                                       {
                                           Element e3 = eList6.get(ind3);
                                       //    System.out.println(e3);
                                          String tagname3=  e3.getTagName();
                                        //  System.out.println(tagname3);
                                           if(tagname3.equals("SampledValueControl"))                 //GSEControl
                                           {
                                           	
                                             if(e3.hasAttribute("datSet"))                     // GSE which contains datasets
                                             {
                                            	 System.out.println("LD name is "+e1.getAttribute("inst"));
                                               	 LDNames.add(e1.getAttribute("inst"));
                                            	 System.out.println(e3.getAttribute("name"));          //Name of GSE which contains datasets
                                            	 System.out.println(e3.getAttribute("datSet"));        //dataset name
                                            	 System.out.println(e3.getAttribute("smvID"));         //AppID
                                            	 SVNames.add(e3.getAttribute("name"));
                                            	 SMVID.add(e3.getAttribute("smvID"));
                                            	 dataSet.add(e3.getAttribute("datSet"));
                                            	 
                                            	 
                                             }
                                           }
                                       }
                                  }
                         }
                              
                         }
                }
              
            }
            
            }
                  System.out.println("GSENames are "+SVNames.size());  
                  System.out.println("LDNames are "+LDNames.size());  
                  
                  NodeList nList8 = document.getElementsByTagName("Communication");
                  List<Element> eList8 = parseNodeElements(nList8);     //Communication        
                   System.out.println("eList8 is "+eList8);
                   NodeList nList9 = eList8.get(0).getChildNodes();
                   List<Element> eList9 = parseNodeElements(nList9);     //SubNetwork
                   System.out.println("eList9 is "+eList9);
                   NodeList nList10 = eList9.get(0).getChildNodes();
                   List<Element> eList10 = parseNodeElements(nList10);     // ConnectedAP  
                  System.out.println("eList10 is "+eList10);
                  
                  int size6 = (eList10 == null) ? 0 : eList10.size();
                  for (int ind6 = 0; ind6 < size6; ind6++) 
                  {
                      Element e6 = eList10.get(ind6);
                    //  System.out.println(e2);
                     String tagname6=  e6.getTagName();
                    // System.out.println(tagname2);
                      if(tagname6.equals("ConnectedAP"))              //ConnectedAP
                      {
                    	  
                      
                  
                   NodeList nList13 = e6.getChildNodes();
                   List<Element> eList13 = parseNodeElements(nList13);     // GSE  
                   System.out.println("eList13 is "+eList13);
                   
                   int size4 = (eList13 == null) ? 0 : eList13.size();
                   for (int ind4 = 0; ind4 < size4; ind4++)
                   {
                       Element e4 = eList13.get(ind4);
                       System.out.println(e4);
                      String tagname4=  e4.getTagName();
                      System.out.println(tagname4);
                       if(tagname4.equals("SMV"))             
                       {
                       	 
                       	 String gseName = e4.getAttribute("cbName");
                       	 for(int i=0;i<SVNames.size();i++)
                       	 {
                       		
                       		 if(SVNames.get(i).equals(gseName))
                       		 {
                       			NodeList nList11 = e4.getChildNodes();
                              	 List<Element> eList11 = parseNodeElements(nList11); // services 
                                   System.out.println("1. eList11 is "+eList11); 
                                   
                                   NodeList nList12 = eList11.get(0).getChildNodes();
                                	 List<Element> eList12 = parseNodeElements(nList12); // services 
                                    System.out.println("1. eList12 is "+eList12); 
                                   
                                     int size5 = (eList12 == null) ? 0 : eList12.size();
                                     for (int ind5 = 0; ind5 < size5; ind5++)
                                     {
                                    	 Element e5 = eList12.get(ind5);
                                         System.out.println(e5);
                                    	 if((e5.getAttribute("type")).equals("MAC-Address"))
                                    	 {
                                    		 System.out.println("mac address is "+e5.getTextContent());
                                    		 macAddress.add(e5.getTextContent());
                                    	 }
                                    	 if((e5.getAttribute("type")).equals("APPID"))
                                    	 {
                                    		 System.out.println("App Id is "+e5.getTextContent());
                                    		 AppId.add(e5.getTextContent());
                                    	 }
                                    	 if((e5.getAttribute("type")).equals("VLAN-ID"))
                                    	 {
                                    		 System.out.println("VLAN-ID is "+e5.getTextContent());
                                    		 vlanID.add(e5.getTextContent());
                                    	 }
                                     }
                                     }
                       	 }
                       		 }
                       	 }
                       	 
                       }
                   }
                   System.out.println("macaddress  are "+macAddress.size()); 
                   System.out.println("App ID  are "+AppId.size()); 
                   System.out.println("vlan  are "+vlanID.size()); 
     
                 for(int i=0;i<SVNames.size();i++)
                 	 {
                	    int row = i+1;
                 	    ExcelLib.setCellDatahssf(iedName, row, 0);
                 	    ExcelLib.setCellDatahssf(SVNames.get(i),row, 2);
                 	      
                 	    
                 	 } 
                   
                   for(int i=0;i<LDNames.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(LDNames.get(i),i+1, 1);
               	     }
                   
                   for(int i=0;i<SMVID.size();i++)
                 	 {
                	   ExcelLib.setCellDatahssf(SMVID.get(i),i+1, 3);
                 	 }
                   for(int i=0;i<dataSet.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(dataSet.get(i),i+1, 4);
               	     }
                   for(int i=0;i<macAddress.size();i++)
                 	 {
                	   ExcelLib.setCellDatahssf(macAddress.get(i),i+1, 5);
                 	 }
                   for(int i=0;i<AppId.size();i++)
               	     {
                	   ExcelLib.setCellDatahssf(AppId.get(i),i+1, 6);
               	     }
                  /* for(int i=0;i<vlanID.size();i++)
             	     {
                	   ExcelLib.setCellDatahssf(vlanID.get(i),i+1, 6);
             	     }*/

                              }catch(Exception e){

                                  throw (e);

                          }

                 	    
                 	 }
    
       
    
}
        
