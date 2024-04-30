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

public class Community {
	private String comm_idx;
	@NonNull
	private String comm_title;
	@NonNull
	private String comm_content;
	@NonNull
	private String comm_file;
	
	private String created_at;
	@NonNull
	private String u_id;
}
