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
	private String con_title;
	@NonNull
	private String con_prize;
	@NonNull
	private String con_period;
	private String con_content;
	private String con_category;
	private String con_file;
	
	public String toJson() {
	    return "{\"con_title\":\"" + this.con_title + "\",\"con_prize\":\"" + this.con_prize + "\",\"con_period\":\"" + this.con_period + "\",\"con_content\":\"" + this.con_content + "\",\"con_category\":\"" + this.con_category + "\",\"con_file\":\"" + this.con_file + "\"}";
	}

	
}

