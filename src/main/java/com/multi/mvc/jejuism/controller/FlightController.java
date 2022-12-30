package com.multi.mvc.jejuism.controller;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.multi.mvc.jejuism.api.FlightApiManager;
import com.multi.mvc.jejuism.model.service.FlightService;
import com.multi.mvc.jejuism.model.vo.Flight;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FlightController {

	@Autowired
	private FlightService service;
	
	@GetMapping("/api-init")
	public void apiInit() {
		Calendar cal = Calendar.getInstance();
		String[] doA = {"schDeptCityCode", "schArrvCityCode"};
		for (int i = 0; i < doA.length; i++) {
			List<Flight> list = FlightApiManager.parsingFlight(cal.getTime(), doA[i]);
			for(Flight f : list) {
				System.out.println(f);
				service.insertF(f);
			}
		}
	}
}
