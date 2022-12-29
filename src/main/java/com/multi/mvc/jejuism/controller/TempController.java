package com.multi.mvc.jejuism.controller;

import java.util.Calendar;
import java.util.List;

import com.jeverything.api.TempApiManager;
import com.jeverything.model.service.TempService;
import com.jeverything.model.vo.Temp;

public class TempController {
	
	private TempService tempService = new TempService();
	
	public void initTemp() {
		Calendar cal = Calendar.getInstance();
		List<Temp> list = TempApiManager.parsingTemp(cal.getTime());
		for (Temp t : list) {
			System.out.println(t);
			tempService.insert(t);
		}
	}
	
	public static void main(String[] args) {
		TempController tc = new TempController();
		tc.initTemp();
	}
	
}
