package com.multi.mvc.jejuism.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.multi.mvc.jejuism.model.vo.VisitJeju;

public class VisitJejuApiManager {

	public static final String KEY = "j3xcnc2io7leau16";
	public static final String VISIT_JEJU_JSON_URL = "https://api.visitjeju.net/vsjApi/contents/searchList";

	public static void main(String[] args) {
		List<VisitJeju> list = parsingVisitJeju("c3");
		for (VisitJeju v : list) {
			System.out.println(v.toString());
		}
	}

	public static int pageCount(String category) {
		try {
			// 1. URL을 가공하는 코드 시작
			StringBuilder urlBuilder = new StringBuilder(VISIT_JEJU_JSON_URL);
	
			// 간단한 버전 = 영문과 숫자로만 필요할때
			urlBuilder.append("?" + "apiKey=" + KEY); // 첫번째만 물음표로 요청 필요!
			urlBuilder.append("&" + "locale=" + "kr");
			urlBuilder.append("&" + "category=" + category);
			
			System.out.println(urlBuilder.toString());
			// 1. URL을 가공하는 코드 끝
	
			// 2. URL을 HTTP 객체를 통해 요청하는 코드 시작
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
	
			// setRequestProperty 이부분은 API마다 권장하는 방식 따로 있어서 반드시 문서 참고바람, 예제코드 참고필요
			//conn.setRequestProperty("Content-type", "application/json");
	//						conn.setRequestProperty("Accept", "application/xml");
	
			int result = conn.getResponseCode(); // 실제 page를 요청하는 코드부
			System.out.println("ResponseCode : " + result);
			if (result < 200 || result >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return 0;
			}
			// 2. URL을 HTTP 객체를 통해 요청하는 코드 끝
	
			// 3. JSON 파싱부 시작!
			InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
			BufferedReader br = new BufferedReader(isr);
			
			JSONParser jsonParser = new JSONParser(); 
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			
			String resStr = rootObj.get("pageCount").toString();
			int res = Integer.parseInt(resStr);
			System.out.println(res);
			
			return res;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}
	
	public static List<VisitJeju> parsingVisitJeju(String category) {
		List<VisitJeju> list = new ArrayList<>();
		try {
			int pageCount = pageCount(category);
			
			for (int i = 0; i < pageCount; i++) {
				// 1. URL을 가공하는 코드 시작
				StringBuilder urlBuilder = new StringBuilder(VISIT_JEJU_JSON_URL);
				
				// 간단한 버전 = 영문과 숫자로만 필요할때
				urlBuilder.append("?" + "apiKey=" + KEY); // 첫번째만 물음표로 요청 필요!
				urlBuilder.append("&" + "locale=" + "kr");
				urlBuilder.append("&" + "category=" + category);
				urlBuilder.append("&" + "page=" + (i+1));
				
				System.out.println(urlBuilder.toString());
				// 1. URL을 가공하는 코드 끝
				
				// 2. URL을 HTTP 객체를 통해 요청하는 코드 시작
				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				
				// setRequestProperty 이부분은 API마다 권장하는 방식 따로 있어서 반드시 문서 참고바람, 예제코드 참고필요
				//conn.setRequestProperty("Content-type", "application/json");
//				conn.setRequestProperty("Accept", "application/xml");
				
				int result = conn.getResponseCode(); // 실제 page를 요청하는 코드부
				System.out.println("ResponseCode : " + result);
				if (result < 200 || result >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return list;
				}
				// 2. URL을 HTTP 객체를 통해 요청하는 코드 끝
				
				// 3. JSON 파싱부 시작!
				InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
				BufferedReader br = new BufferedReader(isr);
				
				JSONParser jsonParser = new JSONParser(); 
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
				//JSONObject childObj = (JSONObject) rootObj.get("items");
				JSONArray items = (JSONArray) rootObj.get("items");
				for(int j = 0; j < items.size(); j++) {
					JSONObject obj = (JSONObject) items.get(j);
					int no = 0;
					String alltag = getStrData(obj, "alltag");
					JSONObject contentscd = (JSONObject) obj.get("contentscd");
					String code = getStrData(contentscd, "label");
					String title = getStrData(obj, "title");
					JSONObject region1cd = (JSONObject) obj.get("region1cd");
					String si = getStrData(region1cd, "label");
					JSONObject region2cd = (JSONObject) obj.get("region2cd");
					String gu = getStrData(region2cd, "label");
					String address = getStrData(obj, "address");
					String roadaddress = getStrData(obj, "roadaddress");
					String tag = getStrData(obj, "tag");
					String introduction = getStrData(obj, "introduction");
					double latitude = getDoubleData(obj, "latitude");
					double longitude = getDoubleData(obj, "longitude");
					String postcode = getStrData(obj, "postcode");
					String phoneno = getStrData(obj, "phoneno");
					JSONObject repPhoto = (JSONObject) obj.get("repPhoto");
					try {
						JSONObject photoid = (JSONObject) repPhoto.get("photoid");
						String imgpath = getStrData(photoid, "imgpath");
						VisitJeju vj = new VisitJeju(no, alltag, code, title, si, gu, address, roadaddress, tag, introduction, latitude, longitude, postcode, phoneno, imgpath);
						list.add(vj);
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	private static String getStrData(JSONObject obj , String key){
		String str = (String) obj.get(key);
		if(str == null) {
			return "-";
		}else {
			return str;
		}
	}
	
	public static final SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	private static Date getDateData(JSONObject obj , String key){
		String str = (String) obj.get(key);
		if(str != null) {
			try {
				return sdf2.parse(str);
			} catch (Exception e) {}
		}
		return null;
	}
	
	private static long getLongData(JSONObject obj , String key){
		String str = (String) obj.get(key);
		if(str != null) {
			try {
				return Long.parseLong(str);
			} catch (Exception e) {}
		}
		return 0;
	}
	
	private static int getIntData(JSONObject obj , String key){
		String str = (String) obj.get(key);
		if(str != null) {
			try {
				return Integer.parseInt(str);
			} catch (Exception e) {}
		}
		return 0;
	}
	
	private static double getDoubleData(JSONObject obj , String key){
		String str = String.valueOf(obj.get(key));
		if(str != null) {
			try {
				return Double.valueOf(str).doubleValue();
			} catch (Exception e) {}
		}
		return 0;
	}

}
