package kr.co.trip.mvc.vo;

public class Rec_PayVO {
	/*
	 * rec_pay_num  number ,
  rec_pay_code number NOT NULL,
  rec_pay_cost number NOT NULL,
  rec_pay_type number NOT NULL, 
	 */
	
	private int rec_pay_num,rec_pay_code,rec_pay_cost;
	private String rec_pay_type;

	public String getRec_pay_type() {
		return rec_pay_type;
	}

	public void setRec_pay_type(String rec_pay_type) {
		this.rec_pay_type = rec_pay_type;
	}

	public int getRec_pay_num() {
		return rec_pay_num;
	}

	public void setRec_pay_num(int rec_pay_num) {
		this.rec_pay_num = rec_pay_num;
	}

	public int getRec_pay_code() {
		return rec_pay_code;
	}

	public void setRec_pay_code(int rec_pay_code) {
		this.rec_pay_code = rec_pay_code;
	}

	public int getRec_pay_cost() {
		return rec_pay_cost;
	}

	public void setRec_pay_cost(int rec_pay_cost) {
		this.rec_pay_cost = rec_pay_cost;
	}


}
