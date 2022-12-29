package com.multi.mvc.jejuism.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	private int no;// INT PRIMARY KEY AUTO_INCREMENT,
	private int vno;// INT,
	private int uno;// INT,
	private String userName;
	private double rate;// double,
	private String content;// VARCHAR(1000),
	private Date createDate;// DATETIME,
	private Date modifyDate;// DATETIME,
}
