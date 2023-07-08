package kr.co.trip.mvc.vo;

import java.util.List;

public class Dia_PlanVO {
	/*
	 *   dia_plan_num  number ,
  dia_plan_code number NOT NULL,
  dia_plan_nday number NOT NULL,
 
  
	 */
	private int dia_plan_num,dia_plan_code,dia_plan_nday;
	
	private List<Plan_ScheduleVO> planschedulelist;

	public int getDia_plan_num() {
		return dia_plan_num;
	}

	public void setDia_plan_num(int dia_plan_num) {
		this.dia_plan_num = dia_plan_num;
	}

	public int getDia_plan_code() {
		return dia_plan_code;
	}

	public void setDia_plan_code(int dia_plan_code) {
		this.dia_plan_code = dia_plan_code;
	}

	public int getDia_plan_nday() {
		return dia_plan_nday;
	}

	public void setDia_plan_nday(int dia_plan_nday) {
		this.dia_plan_nday = dia_plan_nday;
	}

	public List<Plan_ScheduleVO> getPlanschedulelist() {
		return planschedulelist;
	}

	public void setPlanschedulelist(List<Plan_ScheduleVO> planschedulelist) {
		this.planschedulelist = planschedulelist;
	}

}
