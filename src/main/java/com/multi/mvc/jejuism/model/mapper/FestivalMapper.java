package com.multi.mvc.jejuism.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.jejuism.model.vo.Festival;

@Mapper
public interface FestivalMapper {
	int insertF(Festival festival);
}
