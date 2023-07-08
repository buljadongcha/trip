package kr.co.trip.mvc.controller.freeboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.trip.mvc.dao.FreeBoardDaoInter;
import kr.co.trip.mvc.vo.FreeBoardVO;
import kr.co.trip.mvc.vo.FreeBoard_CommVO;
import kr.co.trip.mvc.vo.PageVO;

@Controller
@RequestMapping("/board")
public class FreeboardController {
	@Autowired
	private FreeBoardDaoInter freeBoardDaoInter;
	
	@Autowired
	private PageVO pagevo;

	@RequestMapping("/boardlist")
	public String fBoardList(Model model, @RequestParam Map<String, String> param) {
		
		String stype = param.get("searchType");
		String sname = param.get("searchValue");
		String cPage = param.get("cPage");
		System.out.println("파라미터 출력 : "+ cPage);
		System.out.println("검색 시, 링크 시 넘어오는 파라미터 출력 : "+stype);
		System.out.println("검색 시, 링크 시 넘어오는 파라미터 출력 : "+sname);
		System.out.println("****************************************");
		
		pagevo.setTotalRecord(freeBoardDaoInter.getTotal(param));
		int totalRecord = pagevo.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		
		System.out.println("2. totalPage : "+pagevo.getTotalPage());
		pagevo.setTotalPage((int)Math.ceil(totalRecord/(double)pagevo.getNumPerPage()));
		
		pagevo.setTotalBlock((int) Math.ceil((double) pagevo.getTotalPage() / pagevo.getPagePerBlock()));
		
		if (cPage != null) {
			pagevo.setNowPage(Integer.parseInt(cPage));
		}else {
			pagevo.setNowPage(1);
		}
		System.out.println("4. nowPage : "+pagevo.getNowPage());
		
		pagevo.setBeginPerPage((pagevo.getNowPage()-1) * pagevo.getNumPerPage()+1);
		pagevo.setEndPerPage((pagevo.getBeginPerPage()-1) + pagevo.getNumPerPage());
		System.out.println("5. beginPerPage : "+pagevo.getBeginPerPage());
		System.out.println("5. endPerPage : "+pagevo.getEndPerPage());
		
		
		// 페이징 테스트
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(pagevo.getBeginPerPage()));
		map.put("end", String.valueOf(pagevo.getEndPerPage()));

		// map에 param을 합치기
		map.putAll(param);
		
		// 검수
		System.out.println("========Map All=========");
		for(Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey()+","+e.getValue());
		}

		List<FreeBoardVO> list = freeBoardDaoInter.listFBoard(map);
		
		int startPage = (int)((pagevo.getNowPage() - 1)/pagevo.getPagePerBlock()) * pagevo.getPagePerBlock()+1;
		int endPage = startPage + pagevo.getPagePerBlock()-1;
		if(endPage > pagevo.getTotalPage()) {
			endPage = pagevo.getTotalPage(); }
		System.out.println("6. startPage : "+startPage);
		System.out.println("6. endPage : "+endPage);

		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));
		
		model.addAttribute("startPage", startPage);	// 블록의 시작페이지값
		model.addAttribute("endPage", endPage);		// 블록의 끝 값
		model.addAttribute("page", pagevo);	// nowPage, pagePerBlock, totalPage
		model.addAttribute("list1", list);
		
		return "/board/bbslist";
	}

	@GetMapping("/boardDetail")
	public String fboardCommList(Model m, @RequestParam(required = true) int num, @RequestParam(defaultValue = "detail") String type){
		if(!type.equals("comm")) {
			freeBoardDaoInter.updateHit(num);
		}else {
			
		}
		FreeBoardVO vo = freeBoardDaoInter.detailFBoard(num);
		m.addAttribute("detail1", vo);
		

		List<FreeBoard_CommVO> listComm = freeBoardDaoInter.listCommBoard(num); 
		//댓글 값을 뷰로전달하기
		m.addAttribute("listComm1", listComm);
		return "/board/bbdetail";
		
	}
	
	@GetMapping("/upHit")
	public String fBoardHit(Model model, int num) {
		freeBoardDaoInter.updateHit(num);
		return "redirect:boardDetail?num=" + num;
	}
	
	@GetMapping("/boardwrite")
	public String fboardForm(HttpSession session) {
		return "/board/bbswrite";
	}

	@PostMapping("/fboardInsert")
	public String fboardInsert(FreeBoardVO vo) {

		freeBoardDaoInter.addFBoard(vo);
		
		// redirect로 list 이동 저장 버튼을 누르면 바로 list 로 보내겠다.
		return "redirect:boardlist";
	}
	
	@GetMapping("/chkPwdForm")
	public String boardChkPwdForm(Model model, @RequestParam Map<String, String> param) {
		System.out.println("num:" + param.get("num")); 
		System.out.println("job:"+param.get("job")); 
		model.addAttribute("map", param);
		return "/board/chkpwdForm";
	}
	

	@PostMapping("/fboardChkpwd")
	public String pwdCheck(Model model, @RequestParam Map<String, String> param, HttpSession session) {
		String job = param.get("job");
		String num = param.get("num");
		String pwd = param.get("pwd");

		FreeBoardVO vo = new FreeBoardVO();
		vo.setFb_num(Integer.parseInt(num));
		boolean res2 = freeBoardDaoInter.checkPwd(vo);

		if (!res2) {
			model.addAttribute("errMsg", "잘못된 정보입니다.");
			return "/board/error";
		} else {
			if (job.equals("del")) {
				session.setAttribute("delkey", "delOk");
				return "redirect:fbdel?num=" + num;
			} else if (job.equals("up")) {
				return "redirect:fbmod?num=" + num;
			} else {
				model.addAttribute("errMsg", "잘못된 정보입니다.");
				return "/board/error";
			}
		}
	}

	@GetMapping("/fbdel")
	public String fboardDelete(Model model, int num, HttpSession session) {
		
		/*try {
			if(!session.getAttribute("sessionNick")) {
				model.addAttribute("errMsg","삭제 권한이 없습니다.");
				session.removeAttribute("delkey");
				return "/board/error";
			} else {
				freeBoardDaoInter.deleteFBoard(num);
				session.removeAttribute("delkey");//delkey session을 지우겠다
				return "redirect:boardlist";
			}
		}catch (Exception e) {
			model.addAttribute("errMsg","삭제 권한이 없습니다.");
			session.removeAttribute("delkey");
			return "/board/error";
		}*/
			if(session.getAttribute("sessionID") == null) {
				model.addAttribute("errMsg","삭제 권한이 없습니다.");
				return "/board/error";
			}else {
				freeBoardDaoInter.deleteFBoard(num);
				return "redirect:boardlist";
			}
			
	}
	
	@GetMapping("/fbmod")
	public String fboardModify(Model model, int num) {
		FreeBoardVO vo = freeBoardDaoInter.detailFBoard(num);
		model.addAttribute("vo", vo);
		return "/board/bbsmodify";
	}
	
	@PostMapping("/fbUpdate")
	public String fboardUpdate(FreeBoardVO vo) {
		freeBoardDaoInter.updateFBoard(vo);
		return "redirect:boardDetail?num="+vo.getFb_num();
	}
	
	@PostMapping("/fCommInsert")
	public String fboardCommAdd(FreeBoard_CommVO fcvo, Model m) {
		freeBoardDaoInter.addBoardComm(fcvo);
		return"redirect:boardDetail?num="+fcvo.getFbc_ucode()+"&type=comm#comm";
		
	}
	
	
}
