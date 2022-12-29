package com.jeverything.model.service;

import static com.jeverything.common.JDBCTemplate.commit;
import static com.jeverything.common.JDBCTemplate.openConnection;
import static com.jeverything.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.jeverything.model.dao.FlightDao;
import com.jeverything.model.vo.Flight;

public class FlightService {

	private FlightDao dao = new FlightDao();
	private Connection conn = null;
	
	public FlightService() {
		conn = openConnection();
	}

	public int insert(Flight flight) {
		int result = dao.insert(conn, flight);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	
}
