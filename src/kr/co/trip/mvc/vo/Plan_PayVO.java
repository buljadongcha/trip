package kr.co.trip.mvc.vo;

public class Plan_PayVO {
	/*
	 * plan_pay_num  number,
  plan_pay_code number NOT NULL,
  plan_pay_cost number NOT NULL,
  plan_pay_type varchar2(20) NOT NULL,
	 */
	
	private int plan_pay_num,plan_pay_code,plan_pay_cost;
	private String plan_pay_type;
	public int getPlan_pay_num() {
		return plan_pay_num;
	}
	public void setPlan_pay_num(int plan_pay_num) {
		this.plan_pay_num = plan_pay_num;
	}
	public int getPlan_pay_code() {
		return plan_pay_code;
	}
	public void setPlan_pay_code(int plan_pay_code) {
		this.plan_pay_code = plan_pay_code;
	}
	public int getPlan_pay_cost() {
		return plan_pay_cost;
	}
	public void setPlan_pay_cost(int plan_pay_cost) {
		this.plan_pay_cost = plan_pay_cost;
	}
	public String getPlan_pay_type() {
		return plan_pay_type;
	}
	public void setPlan_pay_type(String plan_pay_type) {
		this.plan_pay_type = plan_pay_type;
	}
}
