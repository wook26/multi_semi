package com.multi.mvc.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.multi.mvc.kakao.KaKaoService;
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;


@Slf4j // log 용도
@SessionAttributes("loginMember") // loginMember를 Model에서 취급할때 Session값으로 처리하는 파라메터
@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired 
	private KaKaoService kakaoService;
	
	@GetMapping("/member/login")
	public String loginPage() {
	//	log.info("로그인 페이지 요청");
		return "/member/login";
	}
	
	
	
//	@RequestMapping(name = "/login", method = RequestMethod.POST )
	@PostMapping("/member/login")
	public String login(Model model, String userId, String userPwd) {
		log.info("id : " + userId +", pw : " + userPwd);
		Member loginMember = service.login(userId, userPwd);
		
		if(loginMember != null) { // 로그인 성공
			model.addAttribute("loginMember",loginMember); // 세션으로 저장되는 코드, 이유: @SessionAttributes
			return "redirect:/";
		}else {
			model.addAttribute("msg", "아이디가 패스워드가 잘못되었습니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
	}
	
	@RequestMapping("/member/logout")
	public String logout(SessionStatus status) {
		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드
		log.info("status : " + status.isComplete());
		return "redirect:/";
	}
	
	
	
	
	
	@GetMapping("/member/enroll")
	public String enrollPage() {
		return "member/enroll";
	}
	
	@GetMapping("/member/enroll/kakao")
	public String enrollKakao(Model model, String code) {
		log.info("가입 페이지 요청");
		if(code != null) {
			try {
				String enrollUrl = "http://localhost/mvc/member/enroll/kakao";
				System.out.println("code : " + code);
				String token = kakaoService.getToken(code, enrollUrl);
				System.out.println("token : " + token);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				System.out.println(map);
				model.addAttribute("kakaoMap",map);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "member/enroll";
	}
	
	
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(Model model, String code) {
		log.info("로그인 요청");
		if(code != null) {
			try {
				String loginUrl = "http://localhost/mvc/kakaoLogin";
				String token = kakaoService.getToken(code, loginUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				String kakaoToken = (String) map.get("id");
				Member loginMember = service.loginKaKao(kakaoToken);

				if(loginMember != null) { // 로그인 성공
					model.addAttribute("loginMember",loginMember); // 세션으로 저장되는 코드, 이유: @SessionAttributes
					return "redirect:/";
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("msg", "로그인에 실패하였습니다.");
		model.addAttribute("location","/");
		return "common/msg";
	}
	
	
	
	@PostMapping("/member/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Member member) { //@ModelAttribute 생략 가능
		log.info("회원가입, member : " + member);
		
		
		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {
			result = -1;
		}
		
		if(result > 0) {
			model.addObject("msg","회원가입에 성공하였습니다.");
			model.addObject("location","/");
		}else {
			model.addObject("msg","회원가입에 실패하였습니다. 다시 확인 해주세요.");
			model.addObject("location","/");
		}
		model.setViewName("common/msg");
		return model;
	}

	// AJAX 대응용 코드
	// ResponseEntity : json 객체를 알아서 만들어 주는 리턴 값
	@GetMapping("/member/idCheck")
	public ResponseEntity<Map<String,Object>> idCheck(String id){
		log.info("아이디 중복확인 id : " + id);
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	@GetMapping("/member/view")
	public String view() {
		log.info("회원 정보 페이지 요청");
		return "member/view";
	}
	
	
	

}









