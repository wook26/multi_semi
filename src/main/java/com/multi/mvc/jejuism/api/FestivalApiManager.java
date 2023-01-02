package com.multi.mvc.jejuism.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.multi.mvc.jejuism.model.vo.Festival;
import com.multi.mvc.jejuism.model.vo.Flight;
import com.multi.mvc.jejuism.model.vo.VisitJeju;

public class FestivalApiManager {

	public static final String KEY = "hI%2Fi1UtBPWuP6lSyMMBdHq82V9sGbso%2BJMHxipv3PEgJvd8NUMTAPEhCLzkMO48DkSbBL5eHT09YNx5Af%2FBjTA%3D%3D";
	public static final String FESTIVAL_XML_URL = "http://api.data.go.kr/openapi/tn_pubr_public_cltur_fstvl_api";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public static void main(String[] args) {
		List<Festival> list = parsingFestival();
		for (Festival f : list) {
			System.out.println(f.toString());
		}
	}

	public static List<Festival> parsingFestival() {
		List<Festival> list = new ArrayList<>();
		StringBuffer urlBuffer = new StringBuffer();
		
		urlBuffer.append(FESTIVAL_XML_URL); // 첫번째만 물음표로 요청 필요!
		urlBuffer.append("?" + "serviceKey=" + KEY); // 첫번째만 물음표로 요청 필요!
		urlBuffer.append("&" + "pageNo=" + "1");
		urlBuffer.append("&" + "numOfRows=" + "1141");
		urlBuffer.append("&" + "type=" + "xml");
		
		System.out.println(urlBuffer);
		
		try {
			URL url = new URL(urlBuffer.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");
			int result = conn.getResponseCode(); // 실제 page를 요청하는 코드부
			System.out.println("ResponseCode : " + result);
			if (result < 200 || result >= 300) {
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
						int no = 0;
						String fstvlNm = getStrData(eElement, "fstvlNm");                
						String opar = getStrData(eElement, "opar");              
						Date fstvlStartDate = getTimeData(eElement, "fstvlStartDate");         
						Date fstvlEndDate = getTimeData(eElement, "fstvlEndDate");         
						String festvlCo = getStrData(eElement, "festvlCo");         
						String mnnst = getStrData(eElement, "mnnst");         
						String auspcInstt = getStrData(eElement, "auspcInstt");         
						String suprtInstt = getStrData(eElement, "suprtInstt");              
						String phoneNumber = getStrData(eElement, "phoneNumber");             
						String homepageUrl = getStrData(eElement, "homepageUrl");  
						String rdnmadr = getStrData(eElement, "rdnmadr");             
						String lnmadr = getStrData(eElement, "lnmadr");             
						String latitude = getStrData(eElement, "latitude");           
						String longitude = getStrData(eElement, "longitude");
						Festival fstvl = new Festival(no, fstvlNm, opar, fstvlStartDate, fstvlEndDate, festvlCo, mnnst, auspcInstt, suprtInstt, phoneNumber, homepageUrl, rdnmadr, lnmadr, latitude, longitude);
						list.add(fstvl);
					} catch (Exception e){
						System.out.println("데이터가 잘못되었습니다!");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
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
			Date date = sdf.parse(eElement.getElementsByTagName(tagName).item(0).getTextContent());
//			System.out.println(date);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
	
	private static Date getTimeData(Element eElement, String tagName){
		try {
//			System.out.println(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			Date date = sdf.parse(eElement.getElementsByTagName(tagName).item(0).getTextContent());
//			System.out.println(date);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
	
	
}
