package com.smhrd.model;

public class ContestApplication {
    private int con_idx;
    private String u_id;
    private String filename;

    // Constructor
    public ContestApplication(int conIdx, String u_id ,String fileName) {
        this.con_idx = conIdx;
        this.filename = fileName;
        this.u_id = u_id;
    }

	public int getConIdx() {
		return con_idx;
	}

	public void setConIdx(int conIdx) {
		this.con_idx = conIdx;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getFileName() {
		return filename;
	}

	public void setFileName(String fileName) {
		this.filename = fileName;
	}

    
}
