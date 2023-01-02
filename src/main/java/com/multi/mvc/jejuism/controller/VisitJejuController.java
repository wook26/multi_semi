package com.multi.mvc.jejuism.controller;

import java.util.ArrayList;
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
import com.multi.mvc.jejuism.api.VisitJejuApiManager;
import com.multi.mvc.jejuism.model.service.VisitJejuService;
import com.multi.mvc.jejuism.model.vo.Review;
import com.multi.mvc.jejuism.model.vo.VisitJeju;
import com.multi.mvc.kakao.MapInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class VisitJejuController {
	
	@Autowired
	private VisitJejuService service;
	
//	@GetMapping("/api-init")
//	public void apiInit() {
//		for (int i = 1; i < 6; i++) {
//			if (i == 2) {
//				continue;
//			}
//			List<VisitJeju> list = VisitJejuApiManager.parsingVisitJeju("c" + i);
//			for(VisitJeju v : list) {
//				System.out.println(v);
//				service.insertV(v);
//			}
//		}
//	}
	
	@GetMapping("/category/search-page")
	public String vList(Model model, @RequestParam Map<String, String> param) {
		log.info("검색, param : " + param);
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String search = param.get("search");
			searchMap.put("search", search);
			String category = param.get("code");
			searchMap.put("code", category);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 12);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);
		
		model.addAttribute("count", vCodeCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/category/search-page";
	}
	
//	@RequestMapping(value = {"/category/category-cafe", "/category/category-food", "/category/category-festival", "/category/category-museum", "/category/category-olle", "/category/category-rooms"})
	@RequestMapping("/category/category-olle")
	public String categoryOlleView(Model model, @RequestParam Map<String, String> param) {
		List<String> recomItem = new ArrayList<String>();
		recomItem.add("한라산국립공원");
		recomItem.add("사려니숲길");
		recomItem.add("협재해수욕장");
		recomItem.add("섭지코지");
		recomItem.add("천지연폭포");
		List<VisitJeju> recomList = service.selectVListHome(recomItem);
		
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String code = "관광지";
			searchMap.put("code", code);
			String excl1 = "박물관";
			searchMap.put("excl1", excl1);
			String excl2 = "미술관";
			searchMap.put("excl2", excl2);
			String excl3 = "전시관";
			searchMap.put("excl3", excl3);
			String search = param.get("search");
			searchMap.put("search", search);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCountForO(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 12);
		List<VisitJeju> list = service.selectVListForO(pageInfo, searchMap);
		for (VisitJeju visitJeju : list) {
			// 태그 변환
			visitJeju.setTag("#" + String.join(" #",visitJeju.getTag().split(",")));
			// 평균 평점 계산
			double avgRate = service.selectAvgRate(visitJeju.getNo());
			avgRate = (double) Math.round(avgRate);
			visitJeju.setAvgRate(avgRate);
			visitJeju.setCategory("명소");
		}
		
		model.addAttribute("recomList", recomList);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/category/category-olle";
	}
	
	@RequestMapping("/category/category-room")
	public String categoryRoomView(Model model, @RequestParam Map<String, String> param) {
		List<String> recomItem = new ArrayList<String>();
		recomItem.add("제주잔잔");
		recomItem.add("올레해오름펜션");
		recomItem.add("다노이커플펜션");
		recomItem.add("사면초가펜션");
		recomItem.add("시월애");
		recomItem.add("저스트슬립제주");
		recomItem.add("킹스통나무");
		recomItem.add("제주리시온관광호텔");
		List<VisitJeju> recomList = service.selectVListHome(recomItem);
		
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String code = "숙박";
			searchMap.put("code", code);
			String search = param.get("search");
			searchMap.put("search", search);
			String gu = param.get("gu");
			searchMap.put("gu", gu);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 8);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);
		for (VisitJeju visitJeju : list) {
			visitJeju.setTag("#" + String.join(" #",visitJeju.getTag().split(",")));
			double avgRate = service.selectAvgRate(visitJeju.getNo());
			avgRate = (double) Math.round(avgRate);
			visitJeju.setAvgRate(avgRate);
			visitJeju.setCategory("숙소");
		}
		
		model.addAttribute("recomList", recomList);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/category/category-room";
	}
	
	@RequestMapping(value = {"/detail/detail-cafe", "/detail/detail-festival", "/detail/detail-museum", "/detail/detail-olle", "/detail/detail-rooms"})
	public String detailView(Model model,
			@RequestParam("no") int no, @RequestParam("category") String category) {
		VisitJeju visitJeju = service.selectVByNo(no);
		if(visitJeju == null) {
			return "redirect:error";
		}
//		visitJeju.setAvgRate(service.selectAvgRate(no));
		
		String[] tags = visitJeju.getTag().split(",");
		model.addAttribute("category", category);
		model.addAttribute("tags", tags);
		model.addAttribute("tagsSize", tags.length);
		model.addAttribute("visitJeju", visitJeju);
		model.addAttribute("reviewList", visitJeju.getReviews());
		return "/detail/detail-olle";
	}
	
	@GetMapping("/error")
	public String error() {
		return "/common/error";
	}
	
	@RequestMapping("/category/detail/review")
	public String writeReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Review reiew
			) {
		reiew.setUno(loginMember.getNo());
		log.info("리뷰 작성 요청 Review : " + reiew);
		
		int result = service.insertReview(reiew);
		
		if(result > 0) {
			model.addAttribute("msg", "리뷰가 등록되었습니다.");
		}else {
			model.addAttribute("msg", "리뷰 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/detail/detail-olle?no=" + reiew.getVno());
		return "/common/msg";
	}
	
	@RequestMapping("/detail/reviewDel")
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
		model.addAttribute("location", "/detail/detail-olle?no=" + vno);
		return "/common/msg";
	}	
	
	@RequestMapping("/category/category-food")
	public String categoryFoodView(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String code = "음식점";
			searchMap.put("code", code);
			String search = param.get("search");
			searchMap.put("search", search);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		
		int vCodeCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 6);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);

		for (VisitJeju visitJeju : list) {
			visitJeju.setTag("#" + String.join(" #",visitJeju.getTag().split(",")));
			double avgRate = service.selectAvgRate(visitJeju.getNo());
			avgRate = (double) Math.round(avgRate);
			visitJeju.setAvgRate(avgRate);
			visitJeju.setCategory("맛집");
		}
		double x = 0.0;
		double y = 0.0;
		for (VisitJeju mapInfo : list) {
			x += mapInfo.getLatitude();
			y += mapInfo.getLongitude();
		}
		
		x = x / list.size();
		y = y / list.size();
		
		model.addAttribute("x",x);
		model.addAttribute("y",y);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/category/category-food";
	}
	
	@RequestMapping("/category/category-museum")
	public String categoryMuseView(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String code = "관광지";
			searchMap.put("code", code);
			String incl1 = "박물관";
			searchMap.put("incl1", incl1);
			String incl2 = "미술관";
			searchMap.put("incl2", incl2);
			String incl3 = "전시관";
			searchMap.put("incl3", incl3);
			String search = param.get("search");
			searchMap.put("search", search);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCountForM(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 12);
		List<VisitJeju> list = service.selectVListForM(pageInfo, searchMap);
		for (VisitJeju visitJeju : list) {
			// 태그 변환
			visitJeju.setTag("#" + String.join(" #",visitJeju.getTag().split(",")));
			// 평균 평점 계산
			double avgRate = service.selectAvgRate(visitJeju.getNo());
			avgRate = (double) Math.round(avgRate);
			visitJeju.setAvgRate(avgRate);
			visitJeju.setCategory("박물관");
		}
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/category/category-museum";
	}
	
	@RequestMapping("/category/category-festival")
	public String categoryFesView(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, Object> searchMap = new HashMap<>();
		try {
			String code = "축제/행사";
			searchMap.put("code", code);
			String search = param.get("search");
			searchMap.put("search", search);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
		}
		int vCodeCount = service.selectVCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, vCodeCount, 12);
		List<VisitJeju> list = service.selectVList(pageInfo, searchMap);
		for (VisitJeju visitJeju : list) {
			visitJeju.setCategory("축제");
		}
		
		model.addAttribute("count", vCodeCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/category/category-festival";
	}
	
}
