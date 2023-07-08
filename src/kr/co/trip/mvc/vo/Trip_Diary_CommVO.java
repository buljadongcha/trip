package kr.co.trip.mvc.vo;

public class Trip_Diary_CommVO {
	/*
	 * dia_comm_num  number, 
  dia_code      number NOT NULL, 
  dia_comm_nick varchar2(30) NOT NULL, 
  dia_comm_cont varchar2(255) NOT NULL, 
  dia_comm_date date DEFAULT sysdate NOT NULL, 
  dia_comm_ip   varchar2(30) NOT NULL, 
	 */
	
	private int dia_comm_num;
	private int dia_code;
	private String dia_comm_nick;
	private String dia_comm_cont;
	private String dia_comm_date;
	private String dia_comm_ip;
	public int getDia_comm_num() {
		return dia_comm_num;
	}
	public void setDia_comm_num(int dia_comm_num) {
		this.dia_comm_num = dia_comm_num;
	}
	public int getDia_code() {
		return dia_code;
	}
	public void setDia_code(int dia_code) {
		this.dia_code = dia_code;
	}
	public String getDia_comm_nick() {
		return dia_comm_nick;
	}
	public void setDia_comm_nick(String dia_comm_nick) {
		this.dia_comm_nick = dia_comm_nick;
	}
	public String getDia_comm_cont() {
		return dia_comm_cont;
	}
	public void setDia_comm_cont(String dia_comm_cont) {
		this.dia_comm_cont = dia_comm_cont;
	}
	public String getDia_comm_date() {
		return dia_comm_date;
	}
	public void setDia_comm_date(String dia_comm_date) {
		this.dia_comm_date = dia_comm_date;
	}
	public String getDia_comm_ip() {
		return dia_comm_ip;
	}
	public void setDia_comm_ip(String dia_comm_ip) {
		this.dia_comm_ip = dia_comm_ip;
	}

}
