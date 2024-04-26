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
public class User {
	
	@NonNull 
	private String u_id;
	@NonNull 
	private String u_pw;
	
	private String u_name;
	private String u_tel;
	private String u_email;
	private LocalDate join_date;
	
	
	
	
}
