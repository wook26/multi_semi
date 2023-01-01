package com.multi.mvc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.jejuism.api.VisitJejuApiManager;
import com.multi.mvc.jejuism.model.service.VisitJejuService;
import com.multi.mvc.jejuism.model.vo.VisitJeju;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private VisitJejuService visitJejuService;
	
	@Autowired
//	private MemberService memberService;// 관리자 자동 로그인용, 완성 이후 삭제
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {// HttpSession session 관리자 자동 로그인용, 완성 이후 삭제
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member member = memberService.login("admin", "1212");// 관리자 자동 로그인용, 완성 이후 삭제
//		session.setAttribute("loginMember", member);// 관리자 자동 로그인용, 완성 이후 삭제
//		test();
		
		//제주 지역추천
		List<String> homeItem1 = new ArrayList<String>();
		homeItem1.add("한라산국립공원");
		homeItem1.add("사려니숲길");
		homeItem1.add("협재해수욕장");
		homeItem1.add("에코랜드 테마파크");
		List<VisitJeju> list1 = visitJejuService.selectVListHome(homeItem1);
		for (VisitJeju visitJeju : list1) {
			List<String> tempList = new ArrayList<String>();
			String[] tempArr = visitJeju.getAlltag().split(",");
			for (int i = 0; i < tempArr.length; i++) {
				tempList.add("#"+tempArr[i]);
			}
			visitJeju.setTagList(tempList);
		}
		
		//서귀포 지역추천
		List<String> homeItem2 = new ArrayList<String>();
		homeItem2.add("성산일출봉(UNESCO 세계자연유산)");
		homeItem2.add("섭지코지");
		homeItem2.add("천지연폭포");
		homeItem2.add("카멜리아힐");
		List<VisitJeju> list2 = visitJejuService.selectVListHome(homeItem2);
		for (VisitJeju visitJeju : list2) {
			List<String> tempList = new ArrayList<String>();
			String[] tempArr = visitJeju.getAlltag().split(",");
			for (int i = 0; i < tempArr.length; i++) {
				tempList.add("#"+tempArr[i]);
			}
			visitJeju.setTagList(tempList);
		}
		
		//음식카페
		List<String> homeItem3 = new ArrayList<String>();
		homeItem3.add("제주김만복(만복이네김밥집)");
		homeItem3.add("올래국수");
		homeItem3.add("濟州膳제주선");
		homeItem3.add("돈사돈");
		homeItem3.add("카페공작소");
		List<VisitJeju> list3 = visitJejuService.selectVListHome(homeItem3);
		
		//인기숙소
		List<String> homeItem4 = new ArrayList<String>();
		homeItem4.add("제주잔잔");
		homeItem4.add("올레해오름펜션");
		homeItem4.add("다노이커플펜션");
		homeItem4.add("사면초가펜션");
		homeItem4.add("시월애");
		List<VisitJeju> list4 = visitJejuService.selectVListHome(homeItem4);
		for (VisitJeju visitJeju : list4) {
			List<String> tempList = new ArrayList<String>();
			String[] tempArr = visitJeju.getAlltag().split(",");
			for (int i = 0; i < tempArr.length; i++) {
				tempList.add("#"+tempArr[i]);
			}
			//평균 평점 가져오기
			double avgRate = visitJejuService.selectAvgRate(visitJeju.getNo());
			avgRate = (double) Math.round(avgRate);
			visitJeju.setAvgRate(avgRate);
			
			visitJeju.setTagList(tempList);
		}
		
		
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		return "home";
	}
	
	public void test() {
		Map<String, String> map = new HashMap<>();
		PageInfo info = new PageInfo(1, 10, service.getBoardCount(map), 10);
		logger.info("board List : " + service.getBoardList(info, map));
	}
	
}
