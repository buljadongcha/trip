package kr.co.trip.mvc.vo;

public class Rec_PhotoVO {
	/* rec_photo_num   number ,
  rec_photo_code  number NOT NULL,
  rec_photo_title varchar2(255) NOT NULL,
  rec_photo_seq   number NOT NULL,
	 * 
	 */
	
	private int rec_photo_num,rec_photo_code;
	private String rec_photo_title;
	public int getRec_photo_num() {
		return rec_photo_num;
	}
	public void setRec_photo_num(int rec_photo_num) {
		this.rec_photo_num = rec_photo_num;
	}
	public int getRec_photo_code() {
		return rec_photo_code;
	}
	public void setRec_photo_code(int rec_photo_code) {
		this.rec_photo_code = rec_photo_code;
	}
	public String getRec_photo_title() {
		return rec_photo_title;
	}
	public void setRec_photo_title(String rec_photo_title) {
		this.rec_photo_title = rec_photo_title;
	}
}
