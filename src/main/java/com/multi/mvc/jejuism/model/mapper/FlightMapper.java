package com.multi.mvc.jejuism.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.jejuism.model.vo.Flight;

@Mapper
public interface FlightMapper {
	int insertF(Flight flight);
}
