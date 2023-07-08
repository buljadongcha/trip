package kr.co.trip.mvc.vo;

public class Trip_Diary_TranVO {
/*
 * 
 *   dia_tran_name varchar2(100) NOT NULL, 
  dia_tran_code number NOT NULL, 
  dia_tran_date date NOT NULL, 
  dia_tran_loca varchar2(255));
 */
	private String dia_tran_name;
	private int dia_tran_code;
	private String dia_tran_date;
	private String dia_tran_loca;
	public String getDia_tran_name() {
		return dia_tran_name;
	}
	public void setDia_tran_name(String dia_tran_name) {
		this.dia_tran_name = dia_tran_name;
	}
	public int getDia_tran_code() {
		return dia_tran_code;
	}
	public void setDia_tran_code(int dia_tran_code) {
		this.dia_tran_code = dia_tran_code;
	}
	public String getDia_tran_date() {
		return dia_tran_date;
	}
	public void setDia_tran_date(String dia_tran_date) {
		this.dia_tran_date = dia_tran_date;
	}
	public String getDia_tran_loca() {
		return dia_tran_loca;
	}
	public void setDia_tran_loca(String dia_tran_loca) {
		this.dia_tran_loca = dia_tran_loca;
	}
	
	
	
}
