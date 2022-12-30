package com.multi.mvc.jejuism.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.jejuism.model.mapper.FlightMapper;
import com.multi.mvc.jejuism.model.vo.Flight;

@Service
public class FlightService {
	
	@Autowired
	private FlightMapper mapper;
	
	public int insertF(Flight flight) {
		int result = 0;
		result = mapper.insertF(flight);
		return result;
	}
}
