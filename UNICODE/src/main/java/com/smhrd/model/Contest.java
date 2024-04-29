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
public class Contest {

    private int con_idx; // 고유 식별자 추가
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
    
    
    public Contest(String bno_idx, String con_title, String con_prize, String con_period, 
            String con_content, String con_category, String con_file) {
		 this.bno_idx = bno_idx;
		 this.con_title = con_title;
		 this.con_prize = con_prize;
		 this.con_period = con_period;
		 this.con_content = con_content;
		 this.con_category = con_category;
		 this.con_file = con_file;
		}
    
    public String toJson() {
        return "{\"bno_idx\":\"" + this.bno_idx + 
               "\", \"con_title\":\"" + this.con_title + 
               "\", \"con_prize\":\"" + this.con_prize + 
               "\", \"con_period\":\"" + this.con_period + 
               "\", \"con_content\":\"" + this.con_content + 
               "\", \"con_category\":\"" + this.con_category + 
               "\", \"con_file\":\"" + this.con_file + "\"}";
    }
}
