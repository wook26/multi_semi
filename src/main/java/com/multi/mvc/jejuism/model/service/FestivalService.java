package com.multi.mvc.jejuism.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.jejuism.model.mapper.FestivalMapper;
import com.multi.mvc.jejuism.model.vo.Festival;

@Service
public class FestivalService {

	@Autowired
	private FestivalMapper mapper;

	@Transactional(rollbackFor = Exception.class)
	public int insertF(Festival festival) {
		int result = 0;
		result = mapper.insertF(festival);
		return result;
	}
	
}
