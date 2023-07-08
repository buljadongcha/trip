package kr.co.trip.mvc.vo;

public class Trip_Diary_HotelVO {
	
	/*
	 * 
	 *   dia_hotel_name varchar2(100) NOT NULL, 
  dia_hotel_code number NOT NULL, 
  dia_tran_date  date NOT NULL, 
  dia_tran_addr  varchar2(255), 
  dia_tran_loca  varchar2(255));
	 */
	
	private String dia_hotel_name;
	private int dia_hotel_code;
	private String dia_hotel_date;
	private String dia_hotel_addr;
	private String dia_hotel_loca;
	public String getDia_hotel_name() {
		return dia_hotel_name;
	}
	public void setDia_hotel_name(String dia_hotel_name) {
		this.dia_hotel_name = dia_hotel_name;
	}
	public int getDia_hotel_code() {
		return dia_hotel_code;
	}
	public void setDia_hotel_code(int dia_hotel_code) {
		this.dia_hotel_code = dia_hotel_code;
	}
	public String getDia_hotel_date() {
		return dia_hotel_date;
	}
	public void setDia_hotel_date(String dia_hotel_date) {
		this.dia_hotel_date = dia_hotel_date;
	}
	public String getDia_hotel_addr() {
		return dia_hotel_addr;
	}
	public void setDia_hotel_addr(String dia_hotel_addr) {
		this.dia_hotel_addr = dia_hotel_addr;
	}
	public String getDia_hotel_loca() {
		return dia_hotel_loca;
	}
	public void setDia_hotel_loca(String dia_hotel_loca) {
		this.dia_hotel_loca = dia_hotel_loca;
	}

	
	
	

}
