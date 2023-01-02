package com.multi.mvc.jejuism.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.jejuism.model.vo.Review;
import com.multi.mvc.jejuism.model.vo.VisitJeju;

@Mapper
public interface VisitJejuMapper {
	int selectVCount(Map<String, Object> map);
	List<VisitJeju> selectVList(Map<String, Object> map);
	VisitJeju selectVByNo(int no);
	int insertReview(Review review);
	int deleteReview(int no);
	List<VisitJeju> selectVListForO(Map<String, Object> map);
	int selectVCountForO(Map<String, Object> map);
	List<VisitJeju> selectVListForM(Map<String, Object> map);
	int selectVCountForM(Map<String, Object> map);
	double selectAvgRate(int no);
	
	int insertV(VisitJeju visitJeju);
	int updateReview(Review review);
	List<VisitJeju> selectVListHome(List<String> homeItem);
}
