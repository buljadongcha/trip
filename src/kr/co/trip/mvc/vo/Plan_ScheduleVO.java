package kr.co.trip.mvc.vo;

import java.util.List;

public class Plan_ScheduleVO {
	/*
	 * plan_sc_num  number,
  plan_sc_code number NOT NULL,
  plan_sc_loca varchar2(400) NOT NULL,
  plan_sc_time varchar2(255) NOT NULL,
  plan_sc_addr varchar2(255) NOT NULL,
	 */
	
	private int plan_sc_num,plan_sc_code;
	private String plan_sc_loca,plan_sc_time,plan_sc_addr;
	
	private List<Plan_PayVO> planpaylist;
	
	public List<Plan_PayVO> getPlanpaylist() {
		return planpaylist;
	}
	public void setPlanpaylist(List<Plan_PayVO> planpaylist) {
		this.planpaylist = planpaylist;
	}
	public int getPlan_sc_num() {
		return plan_sc_num;
	}
	public void setPlan_sc_num(int plan_sc_num) {
		this.plan_sc_num = plan_sc_num;
	}
	public int getPlan_sc_code() {
		return plan_sc_code;
	}
	public void setPlan_sc_code(int plan_sc_code) {
		this.plan_sc_code = plan_sc_code;
	}
	public String getPlan_sc_loca() {
		return plan_sc_loca;
	}
	public void setPlan_sc_loca(String plan_sc_loca) {
		this.plan_sc_loca = plan_sc_loca;
	}
	public String getPlan_sc_time() {
		return plan_sc_time;
	}
	public void setPlan_sc_time(String plan_sc_time) {
		this.plan_sc_time = plan_sc_time;
	}
	public String getPlan_sc_addr() {
		return plan_sc_addr;
	}
	public void setPlan_sc_addr(String plan_sc_addr) {
		this.plan_sc_addr = plan_sc_addr;
	}
}
