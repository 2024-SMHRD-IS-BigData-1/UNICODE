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
public class Profil {
	
	
	@NonNull private String u_id;
	@NonNull private String profile_name;
	@NonNull private String profile_tel;
	@NonNull private String profile_tech;
	@NonNull private String profile_region;
	
    private String profile_period;
    private String profile_wage;
    
    @NonNull private String profile_residence;
    
    private String profile_career;
    private String profile_license;
    private String profile_award;
    private String profile_img;

}