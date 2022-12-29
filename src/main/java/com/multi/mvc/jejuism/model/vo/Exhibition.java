package com.multi.mvc.jejuism.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Exhibition {

	private int seq; // INT PRIMARY KEY NOT NULL,
	private String title; // VARCHAR(100),
	private int category; // INT,
	private String categoryName; // VARCHAR(100),
	private String cover; // VARCHAR(200),
	private String coverThumb; // VARCHAR(200),
	private String start; // VARCHAR(100),
	private String end; // VARCHAR(100),
	private String hour; // VARCHAR(200),
	private String pay; // VARCHAR(500),
	private int locs; // INT,
	private String locNames; // VARCHAR(100),
	private String owner; // VARCHAR(100),
	private String tel; // VARCHAR(100),
	private String stat; // VARCHAR(100),
	private String divName; // VARCHAR(100)

}