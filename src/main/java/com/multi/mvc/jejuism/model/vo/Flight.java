package com.multi.mvc.jejuism.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Flight {

	private String airlineKorean;// VARCHAR(50),
	private String startcity;// VARCHAR(40),
	private String arrivalcity;// VARCHAR(40),
	private Date domesticStartTime;// DATETIME,
	private Date domesticArrivalTime;// DATETIME,
	private Date domesticStdate;// DATETIME,
	private Date domesticEddate;// DATETIME,
	private String domesticMon;// VARCHAR(2),
	private String domesticTue;// VARCHAR(2),
	private String domesticWed;// VARCHAR(2),
	private String domesticThu;// VARCHAR(2),
	private String domesticFri;// VARCHAR(2),
	private String domesticSat;// VARCHAR(2),
	private String domesticSun;// VARCHAR(2),
	private String domesticNum;// VARCHAR(20)
	
}
