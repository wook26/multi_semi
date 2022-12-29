package com.multi.mvc.user.controller;

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

import com.multi.mvc.user.model.service.UserService;
import com.multi.mvc.user.model.vo.User;

import lombok.extern.slf4j.Slf4j;


@Slf4j 
@SessionAttributes("loginMember")
@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@PostMapping("/user/login")
	String login(Model model, String userId, String userPwd) {
		log.info("로그인 요청");
		log.info("id : " + userId + ", pwd : " + userPwd);
		User loginMember = service.login(userId, userPwd);
		
		if(loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			return "redirect:/";
		}else { 
			model.addAttribute("msg", "아이디 패스워드가 잘못되었습니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
	}
	
	@RequestMapping("/user/logout")
	public String logout(SessionStatus status) { 
		log.info("status : " + status.isComplete());
		status.setComplete();
		log.info("status : " + status.isComplete());
		return "redirect:/";
	}
	
	@GetMapping("/user/enroll")
	public String enrollPage() {
		log.info("가입 페이지 요청");
		return "/user/enroll";
	}

	@GetMapping("/user/login")
	public String loginPage() {
		log.info("로그인 페이지 요청");
		return "/user/login";
	}
	
	
	// 회원가입 
	@PostMapping("/user/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute User member) { 
//		log.info("회원가입 post");
		log.info("회원가입, member : " + member.toString());

		int result = service.save(member);
		
		if(result > 0) { // 성공
			model.addObject("msg", "회원가입에 성공하였습니다.");
			model.addObject("location", "/");
		}else { // 실패
			model.addObject("msg", "회원가입에 실패하였습니다. 입력정보를 확인하세요.");
			model.addObject("location", "/");
		}
		model.setViewName("common/msg");
		return model;
	}
	

	// AJAX 회원아이디 중복 검사부
	@GetMapping("/user/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.info("아이디 중복 확인 : " + id);
		
		boolean result = service.validate(id);
		Map<String,	Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	
	@GetMapping("/user/view")
	public String memberView() {
		log.info("회원 정보 페이지 요청");
		return "user/view";
	}
	
	/*
	@GetMapping("/member/updatePwd")
	public String updatePwdPage() {
		return "/member/updatePwd";
	}
	
	@PostMapping("/member/updatePwd")
	public String updatePwd(Model model,
			@SessionAttribute(name = "loginMember", required = false) User loginMember,
			String userPwd
			) {
		int result = service.updatePwd(loginMember, userPwd);
		
		if(result > 0) {
			model.addAttribute("msg", "비밀번호 수정에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "비밀번호 변경에 실패했습니다.");
		}
		model.addAttribute("script", "self.close()");
		return "/common/msg";
	}
	
	*/
	@RequestMapping("/user/delete")
	public String delete(Model model,
			@SessionAttribute(name = "loginMember", required = false) User loginMember) {
		int result = service.delete(loginMember.getNo());
		if(result > 0) {
			model.addAttribute("msg", "회원탈퇴에 성공하였습니다.");
			model.addAttribute("location","/logout");
		}else {
			model.addAttribute("msg", "회원탈퇴에 실패하였습니다.");
			model.addAttribute("location","/user/view");
		}
		return  "/common/msg";
	}
}




















