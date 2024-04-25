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
public class Contest {

	private String bno_idx;
	@NonNull
	private String c_title;
	@NonNull
	private String prize;
	@NonNull
	private String period;
	private String c_content;
	private String c_category;
}
