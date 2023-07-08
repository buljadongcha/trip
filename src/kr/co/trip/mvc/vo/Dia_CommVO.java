package kr.co.trip.mvc.vo;

public class Dia_CommVO {
	/*
	 * dia_comm_num  number,
  dia_comm_code number NOT NULL,
  dia_comm_nick varchar2(30) NOT NULL,
  dia_comm_cont varchar2(500),
	 */
	
	private int dia_comm_num,dia_comm_code;
	private String dia_comm_nick,dia_comm_cont;
	public int getDia_comm_num() {
		return dia_comm_num;
	}
	public void setDia_comm_num(int dia_comm_num) {
		this.dia_comm_num = dia_comm_num;
	}
	public int getDia_comm_code() {
		return dia_comm_code;
	}
	public void setDia_comm_code(int dia_comm_code) {
		this.dia_comm_code = dia_comm_code;
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
}
