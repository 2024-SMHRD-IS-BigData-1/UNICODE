package com.smhrd.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Portfolio {


	@NonNull 
	private String p_title;
	private String p_range;
	private String u_id;
	private String p_category;
	private String p_field;
	private String p_tech;
	private String p_period;
	private String p_url;
	private String p_content;
	private String p_file;

	
}
