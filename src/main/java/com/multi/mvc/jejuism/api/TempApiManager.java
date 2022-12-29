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

import com.jeverything.model.vo.Temp;

public class TempApiManager {

	public static final String KEY = "A%2B10KY%2F5nBWWmY1xoYHYzcnm3U9a6VFlGWpfh2YZp7nGxtju6aP69%2F1fa60Zq6hvP3cN90zyT%2BYYf%2FPCOwuOpA%3D%3D";
	public static final String TEMP_XML_URL = "http://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	
	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		List<Temp> list = parsingTemp(cal.getTime());
		for (Temp temp : list) {
			System.out.println(temp.toString());
		}
	}

	public static List<Temp> parsingTemp(Date searchDate) {
		String dateStr = sdf.format(searchDate);
		List<Temp> list = new ArrayList<>();
			// 1. URL을 가공하는 코드 시작
			StringBuffer urlbBuffer = new StringBuffer(TEMP_XML_URL);
			
			// 간단한 버전 = 영문과 숫자로만 필요할때
			urlbBuffer.append("?" + "serviceKey=" + KEY);
			urlbBuffer.append("&" + "numOfRows=" + 1);
			urlbBuffer.append("&" + "pageNo=" + 1);
			urlbBuffer.append("&" + "regId=" + "11G00201");
			urlbBuffer.append("&" + "tmFc=" + dateStr + "0600");
			
			System.out.println(urlbBuffer);

			try {
				URL url = new URL(urlbBuffer.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/xml");
				int result = conn.getResponseCode(); // 실제 page를 요청하는 코드부
				System.out.println("ResponseCode : " + result);
				if (result < 200 || result >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return list;
				}
				
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
				doc.getDocumentElement().normalize();
				
				System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
				System.out.println("======================================================");
				
				NodeList nList = doc.getElementsByTagName("item");
				for (int i = 0; i < nList.getLength(); i++) {
					Node node = nList.item(i);
					if(node.getNodeType() == Node.ELEMENT_NODE) {
						try {
							Element eElement = (Element) node;
							String regid 	   = getStrData(eElement, "regId");
							int tamin3         = getIntData(eElement, "taMin3");
							int tamin3low      = getIntData(eElement, "taMin3Low");
							int tamin3high     = getIntData(eElement, "taMin3High");
							int tamax3         = getIntData(eElement, "taMax3");
							int tamax3low      = getIntData(eElement, "taMax3Low");
							int tamax3high     = getIntData(eElement, "taMax3High");
							int tamin4         = getIntData(eElement, "taMin4");
							int tamin4low      = getIntData(eElement, "taMin4Low");
							int tamin4high     = getIntData(eElement, "taMin4High");
							int tamax4         = getIntData(eElement, "taMax4");
							int tamax4low      = getIntData(eElement, "taMax4Low");
							int tamax4high     = getIntData(eElement, "taMax4High");
							int tamin5         = getIntData(eElement, "taMin5");
							int tamin5low      = getIntData(eElement, "taMin5Low");
							int tamin5high     = getIntData(eElement, "taMin5High");
							int tamax5         = getIntData(eElement, "taMax5");
							int tamax5low      = getIntData(eElement, "taMax5Low");
							int tamax5high     = getIntData(eElement, "taMax5High");
							int tamin6         = getIntData(eElement, "taMin6");
							int tamin6low      = getIntData(eElement, "taMin6Low");
							int tamin6high     = getIntData(eElement, "taMin6High");
							int tamax6         = getIntData(eElement, "taMax6");
							int tamax6low      = getIntData(eElement, "taMax6Low");
							int tamax6high     = getIntData(eElement, "taMax6High");
							int tamin7         = getIntData(eElement, "taMin7");
							int tamin7low      = getIntData(eElement, "taMin7Low");
							int tamin7high     = getIntData(eElement, "taMin7High");
							int tamax7         = getIntData(eElement, "taMax7");
							int tamax7low      = getIntData(eElement, "taMax7Low");
							int tamax7high     = getIntData(eElement, "taMax7High");
							int tamin8         = getIntData(eElement, "taMin8");
							int tamin8low      = getIntData(eElement, "taMin8Low");
							int tamin8high     = getIntData(eElement, "taMin8High");
							int tamax8         = getIntData(eElement, "taMax8");
							int tamax8low      = getIntData(eElement, "taMax8Low");
							int tamax8high     = getIntData(eElement, "taMax8High");
							int tamin9         = getIntData(eElement, "taMin9");
							int tamin9low      = getIntData(eElement, "taMin9Low");
							int tamin9high     = getIntData(eElement, "taMin9High");
							int tamax9         = getIntData(eElement, "taMax9");
							int tamax9low      = getIntData(eElement, "taMax9Low");
							int tamax9high     = getIntData(eElement, "taMax9High");
							Temp temp = new Temp(regid, tamin3, tamin3low, tamin3high, tamax3, tamax3low, tamax3high, tamin4, tamin4low, tamin4high, tamax4, tamax4low, tamax4high, tamin5, tamin5low, tamin5high, tamax5, tamax5low, tamax5high, tamin6, tamin6low, tamin6high, tamax6, tamax6low, tamax6high, tamin7, tamin7low, tamin7high, tamax7, tamax7low, tamax7high, tamin8, tamin8low, tamin8high, tamax8, tamax8low, tamax8high, tamin9, tamin9low, tamin9high, tamax9, tamax9low, tamax9high);
							list.add(temp);
							
						} catch (Exception e) {
						}
					}
				}
			} catch (Exception e) {	
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
	
	private static long getLogData(Element eElement, String tagName){
		try {
			return Long.parseLong(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	private static double getDoubleData(Element eElement, String tagName){
		try {
			return Double.parseDouble(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0.0;
		}
	}
	
	private static Date getDateData(Element eElement, String tagName){
		try {
			System.out.println(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			Date date = sdf.parse(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			System.out.println(date);
			return date;
		} catch (Exception e) {
			return null;
		}
	}

}

