package kr.co.trip.mvc.vo;

import java.util.List;

public class Dia_RecordVO {
	/*
	 *   dia_rec_num  number,
  dia_rec_code number NOT NULL,
  dia_rec_nday number,
	 */
	
	private int dia_rec_num,dia_rec_code,dia_rec_nday;
	
	private List<Rec_MemoVO> recmemo;
	private List<Rec_PhotoVO> recphoto;
	private List<Rec_ScheduleVO> recschedule;

	
	
	public List<Rec_MemoVO> getRecmemo() {
		return recmemo;
	}

	public void setRecmemo(List<Rec_MemoVO> recmemo) {
		this.recmemo = recmemo;
	}


	public List<Rec_PhotoVO> getRecphoto() {
		return recphoto;
	}

	public void setRecphoto(List<Rec_PhotoVO> recphoto) {
		this.recphoto = recphoto;
	}

	public List<Rec_ScheduleVO> getRecschedule() {
		return recschedule;
	}

	public void setRecschedule(List<Rec_ScheduleVO> recschedule) {
		this.recschedule = recschedule;
	}

	public int getDia_rec_num() {
		return dia_rec_num;
	}

	public void setDia_rec_num(int dia_rec_num) {
		this.dia_rec_num = dia_rec_num;
	}

	public int getDia_rec_code() {
		return dia_rec_code;
	}

	public void setDia_rec_code(int dia_rec_code) {
		this.dia_rec_code = dia_rec_code;
	}

	public int getDia_rec_nday() {
		return dia_rec_nday;
	}

	public void setDia_rec_nday(int dia_rec_nday) {
		this.dia_rec_nday = dia_rec_nday;
	}
}
