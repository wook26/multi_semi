package com.multi.mvc;

import java.util.HashMap;
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
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
//	private MemberService memberService;// 관리자 자동 로그인용, 완성 이후 삭제
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {// HttpSession session 관리자 자동 로그인용, 완성 이후 삭제
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member member = memberService.login("admin", "1212");// 관리자 자동 로그인용, 완성 이후 삭제
//		session.setAttribute("loginMember", member);// 관리자 자동 로그인용, 완성 이후 삭제
		// test();
		return "home";
	}
	
	public void test() {
		Map<String, String> map = new HashMap<>();
		PageInfo info = new PageInfo(1, 10, service.getBoardCount(map), 10);
		logger.info("board List : " + service.getBoardList(info, map));
	}
	
}
