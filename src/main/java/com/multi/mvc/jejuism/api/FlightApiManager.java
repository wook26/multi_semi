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

import com.jeverything.model.vo.Flight;

public class FlightApiManager {

	public static final String KEY = "hI%2Fi1UtBPWuP6lSyMMBdHq82V9sGbso%2BJMHxipv3PEgJvd8NUMTAPEhCLzkMO48DkSbBL5eHT09YNx5Af%2FBjTA%3D%3D";
	public static final String FLIGHT_JSON_URL = "https://api.odcloud.kr/api/15043890/v1/uddi:9840de90-5907-49bd-94ed-acd173ea9ae1";

	public static void main(String[] args) {
		List<Flight> list = parsingFlight();
		for (Flight f : list) {
			System.out.println(f.toString());
		}
	}

	public static List<Flight> parsingFlight() {
		List<Flight> list = new ArrayList<>();
		try {
			// 1. URL을 가공하는 코드 시작
			StringBuilder urlBuilder = new StringBuilder(FLIGHT_JSON_URL);
			
			// 간단한 버전 = 영문과 숫자로만 필요할때
			urlBuilder.append("?" + "page=" + 1); // 첫번째만 물음표로 요청 필요!
			urlBuilder.append("&" + "perPage=" + "1110");
			urlBuilder.append("&" + "serviceKey=" + KEY);
			
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
			JSONArray data = (JSONArray) rootObj.get("data");
			for(int j = 0; j < data.size(); j++) {
				JSONObject obj = (JSONObject) data.get(j);
				String model = getStrData(obj, "기종");
				String arrAirport = getStrData(obj, "도착공항");
				String arrTime = getStrData(obj, "도착시간");
				String startDate = getStrData(obj, "시작일자");
				String flightDay = getStrData(obj, "운항요일");
				String endDate = getStrData(obj, "종료일자");
				String depAirport = getStrData(obj, "출발공항");
				String depTime = getStrData(obj, "출발시간");
				String flightNo = getStrData(obj, "편명");
				String airline = getStrData(obj, "항공사");
				Flight flight = new Flight(model, arrAirport, arrTime, startDate, flightDay, endDate, depAirport, depTime, flightNo, airline);
				list.add(flight);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	private static String getStrData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str == null) {
			return "-";
		} else {
			return str;
		}
	}

	public static final SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");

	private static Date getDateData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return sdf2.parse(str);
			} catch (Exception e) {
			}
		}
		return null;
	}

	private static long getLongData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return Long.parseLong(str);
			} catch (Exception e) {
			}
		}
		return 0;
	}

	private static int getIntData(JSONObject obj, String key) {
		String str = (String) obj.get(key);
		if (str != null) {
			try {
				return Integer.parseInt(str);
			} catch (Exception e) {
			}
		}
		return 0;
	}

	private static double getDoubleData(JSONObject obj, String key) {
		String str = String.valueOf(obj.get(key));
		if (str != null) {
			try {
				return Double.valueOf(str).doubleValue();
			} catch (Exception e) {
			}
		}
		return 0;
	}

}

