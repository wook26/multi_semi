package com.multi.mvc.jejuism.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.jeverything.model.vo.*;

public class ExhibitionApiManager {
	public static final String KEY = "";
	public static final String EXHIBITION_URL  = "http://www.jeju.go.kr/rest/JejuExhibitionService/getJejucultureExhibitionList.xml";

	public static void main(String[] args) {
		List<Exhibition> list = parsingExhibition();
		for(Exhibition e : list) {
			System.out.println(e.toString());
		}
	}
	
	
	public static List<Exhibition> parsingExhibition() {
		List<Exhibition> list = new ArrayList<>();
		
		StringBuffer urlBuffer = new StringBuffer();
		urlBuffer.append(EXHIBITION_URL);
		urlBuffer.append("?page=" + 1);
		urlBuffer.append("&pageSize=" + 8091);
		
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
			for(int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;
						int seq = getIntData(eElement, "seq");               
						String title = getStrData(eElement, "title");                
						int category = getIntData(eElement, "category");              
						String categoryName = getStrData(eElement, "categoryName");         
						String cover = getStrData(eElement, "cover");         
						String coverThumb = getStrData(eElement, "coverThumb");         
						String start = getStrData(eElement, "start");         
						String end = getStrData(eElement, "end");         
						String hour = getStrData(eElement, "hour");              
						String pay = getStrData(eElement, "pay");             
						int locs = getIntData(eElement, "locs");  
						String locNames = getStrData(eElement, "locNames");             
						String owner = getStrData(eElement, "owner");             
						String tel = getStrData(eElement, "tel");           
						String stat = getStrData(eElement, "stat");             
						String divName = getStrData(eElement, "divName");     
						Exhibition exhi = new Exhibition(seq, title, category, categoryName, cover, coverThumb, start, end, hour, pay, locs, locNames, owner, tel, stat, divName);
						list.add(exhi);
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
		
			
			
}
