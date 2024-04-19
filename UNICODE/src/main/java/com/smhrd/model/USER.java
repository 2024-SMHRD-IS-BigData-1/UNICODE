package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor

@NoArgsConstructor
@Getter
@Setter
@ToString

public class USER {
	
	private String id;
	private String pw;
	private String email;
	private String name;
	private String tel;
	private String region;
	private String joindate;
	
}
