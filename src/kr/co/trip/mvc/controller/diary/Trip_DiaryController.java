package kr.co.trip.mvc.controller.diary;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.trip.mvc.dao.Trip_DiaryDaoInter;
import kr.co.trip.mvc.vo.Dia_RecordVO;
import kr.co.trip.mvc.vo.Rec_MemoVO;
import kr.co.trip.mvc.vo.Rec_PayVO;
import kr.co.trip.mvc.vo.Rec_PhotoVO;
import kr.co.trip.mvc.vo.Rec_ScheduleVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;


@Controller
@RequestMapping("/diary")
public class Trip_DiaryController {

	@Autowired
	private Trip_DiaryDaoInter trip_DiaryDaoInter;
	
	@Autowired
	private DiaryService diaryService;
	
	@GetMapping("/diaryForm")
	public String diaryform() {
		return "diary/diary2";
	}
	@GetMapping("/diarylist2222")
	public String diaryform2() {
		return "diary/diaryList";
	}
	// 다이어리 처리 완료하기
	// git test
	// git test2
	/*
	@PostMapping("/addDiary")
	public ModelAndView addDiary(Trip_DiaryVO vo, HttpServletRequest request) {
		//SurveyController (addsurvey) 참고
		
		String[] dtname = request.getParameterValues("dia_tran_name");
		String[] dtloca = request.getParameterValues("dia_tran_loca");
		
		String[] dhname = request.getParameterValues("dia_hotel_name");
		String[] dhaddr = request.getParameterValues("dia_hotel_addr");
		String[] dhloca = request.getParameterValues("dia_hotel_loca");
		
		String[] dptitle = request.getParameterValues("dia_plan_title");
		String[] dptype = request.getParameterValues("dia_plan_pay_type");
		String[] dppay = request.getParameterValues("dia_plan_pay");
		String[] dpmemo = request.getParameterValues("dia_plan_memo");
		String[] dploca = request.getParameterValues("dia_plan_loca");
		
		Map<String, String> map = new HashMap<String, String>();
		List<Trip_Diary_TranVO> tdtranlist = new ArrayList<>();
		List<Trip_Diary_HotelVO> tdhotellist = new ArrayList<>();
		List<Trip_Diary_PlanVO> tdplanlist = new ArrayList<>();
		int i;
		
		for (i=0; i<dtname.length; i++) {
			Trip_Diary_TranVO dt = new Trip_Diary_TranVO();
			System.out.println("name:" +String.valueOf(dtname[i]));
			System.out.println("loca:" +String.valueOf(dtloca[i]));
			map.put("dia_tran_name", String.valueOf(dtname[i]));
			map.put("dia_tran_loca", String.valueOf(dtloca[i]));
			
			dt.setDia_tran_name(map.get("dia_tran_name"));
			dt.setDia_tran_loca(map.get("dia_tran_loca"));
			tdtranlist.add(dt);
		}
		
		for (i=0; i<dhname.length; i++) {
			Trip_Diary_HotelVO dh = new Trip_Diary_HotelVO();
			System.out.println("--------------------------");
			System.out.println("name:" +String.valueOf(dhname[i]));
			System.out.println("addr:" +String.valueOf(dhaddr[i]));
			System.out.println("loca:" +String.valueOf(dhloca[i]));
			
			map.put("dia_hotel_name", String.valueOf(dhname[i]));
			map.put("dia_hotel_addr", String.valueOf(dhaddr[i]));
			map.put("dia_hotel_loca", String.valueOf(dhloca[i]));
			
			dh.setDia_hotel_name(map.get("dia_hotel_name"));
			dh.setDia_hotel_addr(map.get("dia_hotel_addr"));
			dh.setDia_hotel_loca(map.get("dia_hotel_loca"));
			
			tdhotellist.add(dh);
		}
		
		for (i=0; i<dptitle.length; i++) {
			Trip_Diary_PlanVO dp = new Trip_Diary_PlanVO();
			System.out.println("--------------------------");
			System.out.println("name:" +String.valueOf(dptitle[i]));
			System.out.println("addr:" +String.valueOf(dptype[i]));
			System.out.println("loca:" +String.valueOf(dppay[i]));
			System.out.println("loca:" +String.valueOf(dpmemo[i]));
			System.out.println("loca:" +String.valueOf(dploca[i]));
			
			map.put("dia_plan_title", String.valueOf(dptitle[i]));
			map.put("dia_plan_pay_type", String.valueOf(dptype[i]));
			map.put("dia_plan_pay", String.valueOf(dppay[i]));
			map.put("dia_plan_memo", String.valueOf(dpmemo[i]));
			map.put("dia_plan_loca", String.valueOf(dploca[i]));
			
			dp.setDia_plan_title(map.get("dia_plan_title"));
			dp.setDia_plan_pay_type(map.get("dia_plan_pay_type"));
			dp.setDia_plan_pay(map.get("dia_plan_pay"));
			dp.setDia_plan_memo(map.get("dia_plan_memo"));
			dp.setDia_plan_loca(map.get("dia_plan_loca"));
			tdplanlist.add(dp);
		}
		
		
		
		
		
		//vo.setTranList(tdtranlist);
		//vo.setHotelList(tdhotellist);
		//vo.setPlanlist(tdplanlist);
	
		
		diaryService.addDiary(vo, tdtranlist, tdhotellist, tdplanlist);
		//diarylist 만들어야 합니다.
		ModelAndView mav = new ModelAndView("diary/diaryList");
		
		return mav;
	}*/
	
	@GetMapping(value="/diaryDetail")
	public String diaryDetail(@RequestParam int num, Model m) {
		Trip_DiaryVO vo = trip_DiaryDaoInter.diaryDetail(num);
		
		m.addAttribute("vo", vo);
		return "diary/diaryinfo";
	}
	
	// 다이어리 처리 완료하기
	@PostMapping("/addDiaryRec")
	public ModelAndView addDiaryRec(Trip_DiaryVO vo, HttpServletRequest request) {
		//rec
		String[] drnday = request.getParameterValues("dia_rec_nday");
		Map<String, String> map = new HashMap<String, String>();
		List<Dia_RecordVO> drlist = new ArrayList<>();
		int i;
		
		for (i=0; i<drnday.length; i++) {
			Dia_RecordVO dr = new Dia_RecordVO();
			System.out.println("drnday:" +String.valueOf(drnday[i]));
			map.put("dia_rec_nday", String.valueOf(drnday[i]));
			dr.setDia_rec_nday(Integer.parseInt((map.get("dia_rec_nday"))));
			drlist.add(dr);
		}
		
		//rec_schedule
		String[] rscloca = request.getParameterValues("rec_sc_loca");
		String[] rscaddr = request.getParameterValues("rec_sc_addr");
		String[] rsctime = request.getParameterValues("rec_sc_time");
		String[] rscmemo = request.getParameterValues("rec_sc_memo");
		Map<String, String> map1 = new HashMap<String, String>();
		List<Rec_ScheduleVO> recsc = new ArrayList<>();
		
		for (i=0; i<rscloca.length; i++) {
			Rec_ScheduleVO rsch = new Rec_ScheduleVO();
			
			System.out.println("rscloca:" +String.valueOf(rscloca[i]));
			System.out.println("rscaddr:" +String.valueOf(rscaddr[i]));
			System.out.println("rsctime:" +String.valueOf(rsctime[i]));
			System.out.println("rscmemo:" +String.valueOf(rscmemo[i]));
		
			map1.put("rec_sc_loca", String.valueOf(rscloca[i]));
			map1.put("rec_sc_addr", String.valueOf(rscaddr[i]));
			map1.put("rec_sc_time", String.valueOf(rsctime[i]));
			map1.put("rec_sc_memo", String.valueOf(rscmemo[i]));
			
			
			rsch.setRec_sc_loca(map1.get("rec_sc_loca"));
			rsch.setRec_sc_addr(map1.get("rec_sc_addr"));
			rsch.setRec_sc_time(map1.get("rec_sc_time"));
			rsch.setRec_sc_memo(map1.get("rec_sc_memo"));
			
			recsc.add(rsch);
		}
		
		//rec_memo
		String[] recmemocont = request.getParameterValues("rec_memo_cont");
		
		Map<String, String> map2 = new HashMap<String, String>();
		List<Rec_MemoVO> recmemo = new ArrayList<>();
		
		for (i=0; i<recmemocont.length; i++) {
			Rec_MemoVO recmemovo = new Rec_MemoVO();
			System.out.println("rscloca:" +String.valueOf(recmemocont[i]));
			map2.put("rec_memo_cont", String.valueOf(recmemocont[i]));
			recmemovo.setRec_memo_cont(map2.get("rec_memo_cont"));
			recmemo.add(recmemovo);
			}  //rec_memo 끝
				
		//rec_photo 
		String[] recphototitle = request.getParameterValues("rec_photo_title");
		
		Map<String, String> map3 = new HashMap<String, String>();
		List<Rec_PhotoVO> recphoto = new ArrayList<>();
		
		for (i=0; i<recphototitle.length; i++) {
			Rec_PhotoVO recphotovo = new Rec_PhotoVO();
			System.out.println("rscloca:" +String.valueOf(recphototitle[i]));
			map3.put("rec_photo_title", String.valueOf(recphototitle[i]));
			recphotovo.setRec_photo_title(map3.get("rec_photo_title"));
			recphoto.add(recphotovo);
		}	//rec_photo 끝
		
		//rec_pay
				String[] recpaycost = request.getParameterValues("rec_pay_cost");
				String[] recpaytype = request.getParameterValues("rec_pay_type");
				
				Map<String, String> map4 = new HashMap<String, String>();
				List<Rec_PayVO> recpay = new ArrayList<>();
				
				for (i=0; i<recpaycost.length; i++) {
					Rec_PayVO recpayvo = new Rec_PayVO();
					System.out.println("recpaycost:" +String.valueOf(recpaycost[i]));
					System.out.println("recpaycost:" +String.valueOf(recpaytype[i]));
					map4.put("rec_pay_cost", String.valueOf(recpaycost[i]));
					map4.put("rec_pay_type", String.valueOf(recpaytype[i]));
					
					recpayvo.setRec_pay_cost(Integer.parseInt((map4.get("rec_pay_cost"))));
					recpayvo.setRec_pay_type(map4.get("rec_pay_type"));
					recpay.add(recpayvo);
				}	//rec_pay 끝
		
	
		diaryService.addDiary(vo, drlist,recsc,recmemo,recphoto,recpay);
		ModelAndView mav = new ModelAndView("diary/diaryList");
		return mav;
	}
	
	
}
