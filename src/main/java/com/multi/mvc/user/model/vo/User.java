package com.multi.mvc.user.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private int no;
	private String id;
	private String password;
	private String name;
	private String kakaoToken;
	private String role;
	private Date enrollDate;
	private String status;
}
