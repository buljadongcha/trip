package kr.co.trip.mvc.vo;

public class Trip_Diary_PlanVO {
/*
 * 
 *   dia_plan_title    varchar2(30) NOT NULL, 
  dia_plan_code     number NOT NULL, 
  dia_plan_date     date NOT NULL, 
  dia_plan_loca     varchar2(255) NOT NULL, 
  dia_plan_memo     varchar2(200) NOT NULL, 
  dia_plan_pay_type varchar2(20), 
  dia_plan_pay      number);
 */
	
	private String dia_plan_title;
	private int dia_plan_code;
	private String dia_plan_date;
	private String dia_plan_loca;
	private String dia_plan_memo;
	private String dia_plan_pay_type;
	private String dia_plan_pay;
	public String getDia_plan_title() {
		return dia_plan_title;
	}
	public void setDia_plan_title(String dia_plan_title) {
		this.dia_plan_title = dia_plan_title;
	}
	public int getDia_plan_code() {
		return dia_plan_code;
	}
	public void setDia_plan_code(int dia_plan_code) {
		this.dia_plan_code = dia_plan_code;
	}
	public String getDia_plan_date() {
		return dia_plan_date;
	}
	public void setDia_plan_date(String dia_plan_date) {
		this.dia_plan_date = dia_plan_date;
	}
	public String getDia_plan_loca() {
		return dia_plan_loca;
	}
	public void setDia_plan_loca(String dia_plan_loca) {
		this.dia_plan_loca = dia_plan_loca;
	}
	public String getDia_plan_memo() {
		return dia_plan_memo;
	}
	public void setDia_plan_memo(String dia_plan_memo) {
		this.dia_plan_memo = dia_plan_memo;
	}
	public String getDia_plan_pay_type() {
		return dia_plan_pay_type;
	}
	public void setDia_plan_pay_type(String dia_plan_pay_type) {
		this.dia_plan_pay_type = dia_plan_pay_type;
	}
	public String getDia_plan_pay() {
		return dia_plan_pay;
	}
	public void setDia_plan_pay(String dia_plan_pay) {
		this.dia_plan_pay = dia_plan_pay;
	}
	
	
	
}
