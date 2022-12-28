package com.multi.mvc.jejuism.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VisitJeju {

	private int 	no;				// INT PRIMARY KEY AUTO_INCREMENT,
	private String 	alltag;			// VARCHAR(500),
	private String 	code;			// VARCHAR(10),
	private String 	title;			// VARCHAR(100),
	private String 	si;				// VARCHAR(10),
	private String 	gu;				// VARCHAR(10),
	private String 	address;		// VARCHAR(100),
	private String 	roadaddress;	// VARCHAR(100),
	private String 	tag;			// VARCHAR(500),
	private String 	introduction;	// VARCHAR(500),
	private double 	latitude;		// DOUBLE,
	private double 	longitude;		// DOUBLE,
	private String	postcode;		// VARCHAR(10),
	private String 	phoneno;		// VARCHAR(50),
	private String 	imgpath;		// VARCHAR(100),
	private double 	avgRate;		// DOUBLE
	private List<Review> reviews;	//
	
	public VisitJeju(int no, String alltag, String code, String title, String si, String gu, String address,
			String roadaddress, String tag, String introduction, double latitude, double longitude, String postcode,
			String phoneno, String imgpath) {
		super();
		this.no = no;
		this.alltag = alltag;
		this.code = code;
		this.title = title;
		this.si = si;
		this.gu = gu;
		this.address = address;
		this.roadaddress = roadaddress;
		this.tag = tag;
		this.introduction = introduction;
		this.latitude = latitude;
		this.longitude = longitude;
		this.postcode = postcode;
		this.phoneno = phoneno;
		this.imgpath = imgpath;
	}
	
}
