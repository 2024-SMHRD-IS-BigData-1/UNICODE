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
public class Comment {
	private String comment_idx;
	@NonNull
	private String comm_idx;
	@NonNull
	private String u_id;
	@NonNull
	private String comment_text;
	private String created_at;
}
