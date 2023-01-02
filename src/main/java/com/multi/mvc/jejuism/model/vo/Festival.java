package com.multi.mvc.jejuism.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Festival {

	private int		no; 				// INT PRIMARY KEY AUTO_INCREMENT,
	private String 	fstvlNm; 			// VARCHAR(300),	
	private String 	opar; 				// VARCHAR(300),
	private Date 	fstvlStartDate;	 	// DATETIME,
	private Date 	fstvlEndDate; 		// DATETIME,
	private String 	festvlCo; 			// VARCHAR(300),
	private String 	mnnst; 				// VARCHAR(300),
	private String 	auspcInstt; 		// VARCHAR(300),
	private String 	suprtInstt; 		// VARCHAR(300),
	private String 	phoneNumber; 		// VARCHAR(300),
	private String 	homepageUrl; 		// VARCHAR(300),
	private String 	rdnmadr; 			// VARCHAR(300),
	private String 	lnmadr; 			// VARCHAR(300),
	private String 	latitude;			// VARCHAR(300),
	private String 	longitude; 			// VARCHAR(300),
	
}
