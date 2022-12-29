package com.multi.mvc.jejuism.controller;

import java.util.List;

import com.jeverything.api.FlightApiManager;
import com.jeverything.model.service.FlightService;
import com.jeverything.model.vo.Flight;

public class FlightController {
	
	private FlightService flightService = new FlightService();

	public void initFlight() {
		
		for (int i = 1; i < 6; i++) {
			if (i == 2) {
				continue;
			}
			List<Flight> list = FlightApiManager.parsingFlight();
			for(Flight f : list) {
				System.out.println(f);
				flightService.insert(f);
			}
		}
		
	}
	
	public static void main(String[] args) {
		FlightController fc = new FlightController();
		fc.initFlight();
	}
	
}
