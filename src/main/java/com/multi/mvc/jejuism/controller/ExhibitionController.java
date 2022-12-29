package com.multi.mvc.jejuism.controller;

import java.util.List;

import com.jeverything.api.ExhibitionApiManager;
import com.jeverything.model.service.ExhibitionService;
import com.jeverything.model.vo.Exhibition;

public class ExhibitionController {
	
	private ExhibitionService exhibitionService = new ExhibitionService();
	
	public void initExhibition() {
		
		List<Exhibition> list = ExhibitionApiManager.parsingExhibition();
		for (Exhibition e : list) {
			System.out.println(e);
			exhibitionService.insert(e);
		}
		
	}

	public static void main(String[] args) {
		ExhibitionController ec = new ExhibitionController();
		ec.initExhibition();
		
	}
	
}
