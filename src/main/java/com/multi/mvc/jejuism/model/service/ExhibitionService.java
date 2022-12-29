package com.multi.mvc.jejuism.model.service;

import static com.jeverything.common.JDBCTemplate.commit;
import static com.jeverything.common.JDBCTemplate.openConnection;
import static com.jeverything.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.jeverything.model.dao.ExhibitionDao;
import com.jeverything.model.vo.Exhibition;


public class ExhibitionService {

	private ExhibitionDao dao = new ExhibitionDao();
	private Connection conn = null;
	
	public ExhibitionService() {
		conn = openConnection();
	}
	
	public int insert(Exhibition exhibition) {
		int result = dao.insert(conn, exhibition);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	
}
