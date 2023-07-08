package kr.co.trip.mvc.controller.recode;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.trip.mvc.controller.diary.DiaryService;
import kr.co.trip.mvc.dao.Trip_DiaryDaoInter;
import kr.co.trip.mvc.vo.Dia_RecordVO;
import kr.co.trip.mvc.vo.Rec_MemoVO;
import kr.co.trip.mvc.vo.Rec_PayVO;
import kr.co.trip.mvc.vo.Rec_PhotoVO;
import kr.co.trip.mvc.vo.Rec_ScheduleVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;

@Controller
@RequestMapping("/recode")
public class RecodeController {
	
	@Autowired
	private Trip_DiaryDaoInter trip_DiaryDaoInter;
	
	@Autowired
	private DiaryService diaryService;
	
	@GetMapping("/recodewrite")
	public String recodeForm() {
		return "/recode/recwrite";
	}
	@GetMapping("/recodedetail")
	public String recodedetail() {
		return "/recode/recdetail";
	}
	
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
		
		for (i=0; i<rscmemo.length; i++) {
			Rec_ScheduleVO rsch = new Rec_ScheduleVO();
			
			System.out.println("rscloca:" +String.valueOf(rscloca[i]));
			System.out.println("rscaddr:" +String.valueOf(rscaddr[i]));
			System.out.println("rsctime:" +String.valueOf(rsctime[i]));
			System.out.println("rscmemo:" +String.valueOf(rscmemo[i]));
		
			//map1.put("rec_sc_loca", String.valueOf(rscloca[i]));
			map1.put("rec_sc_addr", String.valueOf(rscaddr[i]));
			map1.put("rec_sc_time", String.valueOf(rsctime[i]));
			map1.put("rec_sc_memo", String.valueOf(rscmemo[i]));
			
			
			//rsch.setRec_sc_loca(map1.get("rec_sc_loca"));
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
			}  //rec_memo ³¡
				
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
		}	//rec_photo ³¡
		
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
				}	//rec_pay ³¡
		
	
		diaryService.addDiary(vo, drlist,recsc,recmemo,recphoto,recpay);
		ModelAndView mav = new ModelAndView("diary/diaryList");
		return mav;
	}
}
