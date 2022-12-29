package com.multi.mvc.jejuism.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Flight {

	private String model;// VARCHAR(30),
	private String arrAirport;// VARCHAR(50),
	private String arrTime;// VARCHAR(50),
	private String startDate;// VARCHAR(50),
	private String flightDay;// VARCHAR(50),
	private String endDate;// VARCHAR(50),
	private String depAirport;// VARCHAR(50),
	private String depTime;// VARCHAR(50),
	private String flightNo;// VARCHAR(50),
	private String airline;// VARCHAR(50)

}
