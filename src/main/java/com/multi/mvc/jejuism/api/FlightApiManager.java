package com.multi.mvc.jejuism.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.multi.mvc.jejuism.model.vo.Flight;

public class FlightApiManager {

	public static final String KEY = "hI%2Fi1UtBPWuP6lSyMMBdHq82V9sGbso%2BJMHxipv3PEgJvd8NUMTAPEhCLzkMO48DkSbBL5eHT09YNx5Af%2FBjTA%3D%3D&";
	public static final String FLIGHT_XML_URL  = "http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList";

	public static final SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
	public static final SimpleDateFormat sdf2 = new SimpleDateFormat("HHmm");
	
	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		
		List<Flight> list = parsingFlight(cal.getTime(), "schDeptCityCode");
		for(Flight f : list) {
			System.out.println(f.toString());
		}
	}
	
	public static int pageCount(String searchDate, String doA) {
		int result = 0;
		
		StringBuffer urlBuffer = new StringBuffer();		
		urlBuffer.append(FLIGHT_XML_URL);
		urlBuffer.append("?serviceKey=" + KEY);
		urlBuffer.append("&schDate=" + searchDate);
		urlBuffer.append("&" + doA + "=CJU");
		
		System.out.println(urlBuffer);

		try {
			URL url = new URL(urlBuffer.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");
			int code = conn.getResponseCode(); 
			System.out.println("ResponseCode : " + code); 
			
			if(code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return 0;
			}
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			 
			Document doc = db.parse(conn.getInputStream()); 
			
			doc.getDocumentElement().normalize();
			
			NodeList nList = doc.getElementsByTagName("body");
			for(int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;
						int res = getIntData(eElement, "totalCount"); 
						if(res % 10 == 0) {
							result = res / 10;
						}else {
							result = (res / 10) + 1;
						}
						return result;
					}catch(Exception e) {}
				}
			}
		}catch(Exception e) {}
		return 0;
	}
	
	public static List<Flight> parsingFlight(Date searchDate, String doA) {
		String dateStr = sdf1.format(searchDate);
		List<Flight> list = new ArrayList<>();
		int pageCount = pageCount(dateStr, doA);
		System.out.println(pageCount);
		
		for (int i = 0; i < pageCount; i++) {
			StringBuffer urlBuffer = new StringBuffer();
			urlBuffer.append(FLIGHT_XML_URL);
			urlBuffer.append("?serviceKey=" + KEY);
			urlBuffer.append("&schDate=" + dateStr);
			urlBuffer.append("&" + doA + "CJU");
			urlBuffer.append("&pageNo=" + (i + 1));
			
			
			System.out.println(urlBuffer);
			
			try {
				URL url = new URL(urlBuffer.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/xml");
				int code = conn.getResponseCode(); 
				System.out.println("ResponseCode : " + code); 
				
				if(code < 200 || code > 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				
				Document doc = db.parse(conn.getInputStream()); 
				
				doc.getDocumentElement().normalize();
				
				NodeList nList = doc.getElementsByTagName("item");
				for(int j = 0; j < nList.getLength(); j++) {
					Node node = nList.item(j);
					if(node.getNodeType() == Node.ELEMENT_NODE) {
						try {
							Element eElement = (Element) node;
							String airlineKorean = getStrData(eElement, "airlineKorean");               
							String startcity = getStrData(eElement, "startcity");                
							String arrivalcity = getStrData(eElement, "arrivalcity");              
							Date domesticStartTime = getTimeData(eElement, "domesticStartTime");         
							Date domesticArrivalTime = getTimeData(eElement, "domesticArrivalTime");         
							Date domesticStdate = getDateData(eElement, "domesticStdate");         
							Date domesticEddate = getDateData(eElement, "domesticEddate");         
							String domesticMon = getStrData(eElement, "domesticMon");         
							String domesticTue = getStrData(eElement, "domesticTue");              
							String domesticWed = getStrData(eElement, "domesticWed");             
							String domesticThu = getStrData(eElement, "domesticThu");  
							String domesticFri = getStrData(eElement, "domesticFri");             
							String domesticSat = getStrData(eElement, "domesticSat");             
							String domesticSun = getStrData(eElement, "domesticSun");           
							String domesticNum = getStrData(eElement, "domesticNum");             
							Flight flight = new Flight(airlineKorean, startcity, arrivalcity, domesticStartTime, domesticArrivalTime, domesticStdate, domesticEddate, domesticMon, domesticTue, domesticWed, domesticThu, domesticFri, domesticSat, domesticSun, domesticNum);
							list.add(flight);
						} catch (Exception e){
							System.out.println("데이터가 잘못되었습니다!");
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return list;
	}
			
	private static String getStrData(Element eElement, String tagName){
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}
	
	private static int getIntData(Element eElement, String tagName){
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	private static Date getDateData(Element eElement, String tagName){
		try {
//			System.out.println(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			Date date = sdf1.parse(eElement.getElementsByTagName(tagName).item(0).getTextContent());
//			System.out.println(date);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
	
	private static Date getTimeData(Element eElement, String tagName){
		try {
//			System.out.println(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			Date date = sdf2.parse(eElement.getElementsByTagName(tagName).item(0).getTextContent());
//			System.out.println(date);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
	
	
}
