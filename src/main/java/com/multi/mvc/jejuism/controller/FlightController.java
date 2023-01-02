package com.multi.mvc.jejuism.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.jejuism.api.FlightApiManager;
import com.multi.mvc.jejuism.model.service.FlightService;
import com.multi.mvc.jejuism.model.vo.Flight;
import com.multi.mvc.jejuism.model.vo.VisitJeju;
import com.multi.mvc.kakao.MapInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FlightController {

	@Autowired
	private FlightService service;
	
//	@GetMapping("/api-init")
//	public void apiInit() {
//		Calendar cal = Calendar.getInstance();
//		String[] doA = {"schDeptCityCode", "schArrvCityCode"};
//		for (int i = 0; i < doA.length; i++) {
//			List<Flight> list = FlightApiManager.parsingFlight(cal.getTime(), doA[i]);
//			for(Flight f : list) {
//				System.out.println(f);
//				service.insertF(f);
//			}
//		}
//	}
	
	@RequestMapping("/category/category-flight")
	public String categoryFoodView(Model model, @RequestParam Map<String, String> param) {
		
		
		return "/category/category-flight";
	}
}
