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
public class Company {

	private String bno_idx;
	@NonNull
	private String company_id;
	@NonNull
	private String company_pw;
	private String company_name;
	private String company_owner;
	private String company_homepage;
	private String company_addr;
	private String company_tel;
	private LocalDate join_date;
	
}
