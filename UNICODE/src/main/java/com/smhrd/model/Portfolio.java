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
	private String port_title;
	private String port_range;
	private String u_id;
	private String port_category;
	private String port_field;
	private String port_tech;
	private String port_period;
	private String port_url;
	private String port_content;
	private String port_file;

	
}
