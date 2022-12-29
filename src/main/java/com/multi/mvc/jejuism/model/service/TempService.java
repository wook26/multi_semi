package com.jeverything.model.service;

import static com.jeverything.common.JDBCTemplate.commit;
import static com.jeverything.common.JDBCTemplate.openConnection;
import static com.jeverything.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.jeverything.model.dao.TempDao;
import com.jeverything.model.vo.Temp;

public class TempService {

	private TempDao dao = new TempDao();
	private Connection conn = null;
	
	public TempService() {
		conn = openConnection();
	}
	
	public int insert(Temp temp) {
		int result = dao.insert(conn, temp);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
}
