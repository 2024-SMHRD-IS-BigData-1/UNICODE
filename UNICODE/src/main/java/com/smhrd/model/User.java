package com.smhrd.model;

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
	
	@NonNull private String id;
	@NonNull private String pw;
	@NonNull private String email;
	@NonNull private String name;
	@NonNull private String tel;
	@NonNull private String region;
	private String joindate;
	
}
