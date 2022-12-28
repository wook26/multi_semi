package com.multi.mvc.jejuism.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.jejuism.model.service.VisitJejuService;
import com.multi.mvc.jejuism.model.vo.Review;
import com.multi.mvc.jejuism.model.vo.VisitJeju;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class VisitJejuController {
	
	@Autowired
	private VisitJejuService service;
	
	@GetMapping("/category/search-page")
	public String vList(Model model, @RequestParam Map<String, String> param) {
		log.info("검색, param : " + param);
		int page = 1;
		Map<String, Object> searchMap = new HashMap<String, Object>();
		try {
			String searchValue = param.get("searchValue");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		
		int vCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCount, 10);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/category/search-page";
	}
	
//	@RequestMapping(value = {"/category/category-cafe", "/category/category-food", "/category/category-festival", "/category/category-museum", "/category/category-olle", "/category/category-rooms"})
	@RequestMapping("/category/category-olle")
	public String categoryView(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String category = param.get("code");
			searchMap.put("code", category);
			String search = param.get("search");
			searchMap.put("search", search);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 8, vCodeCount, 12);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/category/category-olle";
	}
	
	@RequestMapping(value = {"/detail/detail-cafe", "/detail/detail-festival", "/detail/detail-museum", "/detail/detail-olle", "/detail/detail-rooms"})
	public String detailView(Model model, @RequestParam("no") int no) {
		VisitJeju visitJeju = service.selectVByNo(no);
		if(visitJeju == null) {
			return "redirect:error";
		}
		visitJeju.setAvgRate(service.selectAvgRate(no));
		model.addAttribute("visitJeju", visitJeju);
		model.addAttribute("reviewList", visitJeju.getReviews());
		return "/detail/detail-view";
	}
	
	@GetMapping("/error")
	public String error() {
		return "/common/error";
	}
	
	@RequestMapping("/review")
	public String writeReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Review reiew
			) {
		reiew.setUno(loginMember.getNo());
		log.info("리뷰 작성 요청 Review : " + reiew);
		
		int result = service.saveReview(reiew);
		
		if(result > 0) {
			model.addAttribute("msg", "리뷰가 등록되었습니다.");
		}else {
			model.addAttribute("msg", "리뷰 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/detail/detail-view?no=" + reiew.getVno());
		return "/common/msg";
	}
	
	@RequestMapping("/reviewDel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int reviewNo, int vno
			){
		log.info("리뷰 삭제 요청");
		int result = service.deleteReview(reviewNo);
		
		if(result > 0) {
			model.addAttribute("msg", "리뷰 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리뷰 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/detail/detail-view?no=" + vno);
		return "/common/msg";
	}	
	
	
//	public void initVisitJeju() {
//		
//		for (int i = 1; i < 6; i++) {
//			if (i == 2) {
//				continue;
//			}
//			List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c" + i);
//			for(VisitJeju v : list) {
//				System.out.println(v);
//				visitJejuService.insert(v);
//			}
//		}
//		
//	}
////		List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c1");// 관광지
////		List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c3");// 숙박
////		List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c4");// 음식점
////		List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c5");// 축제/행사
//	
//	public List<VisitJeju> getAllList(){
//		return visitJejuService.selectAll();
//	}
//	
////	public List<VisitJeju> getMvListByYearweekTime(String yearweekTime){
////		return boxOfficeService.selectByYearweekTime(yearweekTime);
////	}
//	
////	public VisitJeju searchByBoxofficeNo(int boxofficeNo){
////		return boxOfficeService.selectOne(boxofficeNo);
////	}
//	
//	public List<VisitJeju> searchCategory(String Category){
//		return visitJejuService.selectByCategory(Category);
//	}
//	
//	public static void main(String[] args) {
//		VisitJejuController vc = new VisitJejuController();
//		vc.initVisitJeju();
//		
//	}
	
}
