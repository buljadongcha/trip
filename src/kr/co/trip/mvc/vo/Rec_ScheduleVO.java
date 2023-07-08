package kr.co.trip.mvc.vo;

import java.util.List;

public class Rec_ScheduleVO {
	/*
	 * rec_sc_num  number ,
  rec_sc_code number NOT NULL,
  rec_sc_loca varchar2(400) NOT NULL,
  rec_sc_time varchar2(255) NOT NULL,
  rec_sc_addr varchar2(255) NOT NULL,
  rec_sc_seq  number NOT NULL,
	*/
	
	private int rec_sc_num, rec_sc_code;
	private String rec_sc_loca,rec_sc_time,rec_sc_addr, rec_sc_memo;
	private List<Rec_PayVO> recpay;
	
	
	public List<Rec_PayVO> getRecpay() {
		return recpay;
	}
	public void setRecpay(List<Rec_PayVO> recpay) {
		this.recpay = recpay;
	}

	
	public String getRec_sc_memo() {
		return rec_sc_memo;
	}
	public void setRec_sc_memo(String rec_sc_memo) {
		this.rec_sc_memo = rec_sc_memo;
	}
	public int getRec_sc_num() {
		return rec_sc_num;
	}
	public void setRec_sc_num(int rec_sc_num) {
		this.rec_sc_num = rec_sc_num;
	}
	public int getRec_sc_code() {
		return rec_sc_code;
	}
	public void setRec_sc_code(int rec_sc_code) {
		this.rec_sc_code = rec_sc_code;
	}
	public String getRec_sc_loca() {
		return rec_sc_loca;
	}
	public void setRec_sc_loca(String rec_sc_loca) {
		this.rec_sc_loca = rec_sc_loca;
	}
	public String getRec_sc_time() {
		return rec_sc_time;
	}
	public void setRec_sc_time(String rec_sc_time) {
		this.rec_sc_time = rec_sc_time;
	}
	public String getRec_sc_addr() {
		return rec_sc_addr;
	}
	public void setRec_sc_addr(String rec_sc_addr) {
		this.rec_sc_addr = rec_sc_addr;
	}
}
