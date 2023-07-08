package kr.co.trip.mvc.vo;

public class Rec_MemoVO {
	/*
	 * rec_memo_num  number ,
  rec_memo_code number NOT NULL,
  rec_memo_cont varchar2(500) NOT NULL,
  rec_memo_seq  number NOT NULL,
	 */
	
	private int rec_memo_num,rec_memo_code;
	private String rec_memo_cont;
	public int getRec_memo_num() {
		return rec_memo_num;
	}
	public void setRec_memo_num(int rec_memo_num) {
		this.rec_memo_num = rec_memo_num;
	}
	public int getRec_memo_code() {
		return rec_memo_code;
	}
	public void setRec_memo_code(int rec_memo_code) {
		this.rec_memo_code = rec_memo_code;
	}
	public String getRec_memo_cont() {
		return rec_memo_cont;
	}
	public void setRec_memo_cont(String rec_memo_cont) {
		this.rec_memo_cont = rec_memo_cont;
	}
}
