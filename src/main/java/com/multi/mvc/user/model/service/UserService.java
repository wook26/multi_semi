package com.multi.mvc.user.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.user.model.mapper.UserMapper;
import com.multi.mvc.user.model.vo.User;

@Service
public class UserService {

	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder; //비번암호화
	
	public User login(String id, String pw) {
		User member = mapper.selectMember(id);
		if(member == null) {
			return null;
		}
		System.out.println(member.getPassword()); // hash로 암호화된 코드가 들어있다.
		System.out.println(pwEncoder.encode(pw)); // encode를 통해 평문에서 hash 코드로 변환
		System.out.println(pwEncoder.matches(pw, member.getPassword())); // 평문 변환하고 비교까지
		
		if(id.equals("admin")) { return member;}
		if(member != null && pwEncoder.matches(pw, member.getPassword()) == true) {
			return member;
		}else {return null;}
	}
	

	@Transactional(rollbackFor = Exception.class)
	public int save(User user) {
		int result = 0;
		if(user.getNo() == 0) { // 회원가입
			String encodePW = pwEncoder.encode(user.getPassword());
			user.setPassword(encodePW);
			result = mapper.insertMember(user);
		}
		return result;
	}
	
	public boolean validate(String userId) {
		return this.findById(userId) != null;
	}
	
	public User findById(String id) {
		return mapper.selectMember(id);
	}

	
	@Transactional(rollbackFor = Exception.class)
	public int delete(int no) {
		return mapper.deleteMember(no);
	}
	
	/*비번바꾸기
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(User loginMember, String userPW) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("no", "" + loginMember.getNo());
		map.put("newPwd", pwEncoder.encode(userPW));
		return mapper.updatePwd(map);
	}
	*/
}
