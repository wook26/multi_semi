package com.multi.mvc.jejuism.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.jejuism.model.vo.Review;
import com.multi.mvc.jejuism.model.vo.VisitJeju;

@Mapper
public interface VisitJejuMapper {
	double selectAvgRate(int no);
	int selectVCount(Map<String, Object> map);
	List<VisitJeju> selectVList(Map<String, Object> map);
	VisitJeju selectVByNo(int no);
	int insertReview(Review review);
	List<VisitJeju> selectVListForO();
	int selectVCountForO();
	
	int insertV(VisitJeju visitJeju);
	int updateReview(Review review);
	int deleteReview(int no);
}
