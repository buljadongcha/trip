package kr.co.trip.mvc.controller.member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import kr.co.trip.mvc.dao.Trip_MemberDaoInter;
import kr.co.trip.mvc.vo.Trip_MemberVO;
@Controller
@RequestMapping("/tripmember")
public class Trip_memController {
	@Autowired
	private Trip_MemberDaoInter trip_MemberDaoInter;
	
	@GetMapping("/memForm")
	public String memberform() {
		return "member/login"; // [View의 위치/View의 이름]
	}
	@GetMapping("/memList")
	public String memberAdminList() {
		return "member/memList"; // [View의 위치/View의 이름]
	}
	
	@GetMapping("/mypage")
	public String getMyPage(@RequestParam String id, Model model) {
		Trip_MemberVO vo = trip_MemberDaoInter.myPage(id);
		model.addAttribute("vo", vo);
		return "member/mypage";
	}
	
	@GetMapping("/idCheck")
	@ResponseBody
	public String idCheck(@RequestParam(required = true) String id) {
		int res1 = trip_MemberDaoInter.idCheck(id);
		System.out.println("res => " + res1);
		return String.valueOf(res1);
	}
	@GetMapping("/emailCheck")
	@ResponseBody
	public String emailCheck(@RequestParam(required = true) String email) {
		int res2 = trip_MemberDaoInter.emailCheck(email);
		System.out.println("res => " + res2);
		return String.valueOf(res2);
	}
	@GetMapping("/nickCheck")
	@ResponseBody
	public String nickCheck(@RequestParam(required = true) String nick) {
		int res3 = trip_MemberDaoInter.nickCheck(nick);
		System.out.println("res => " + res3);
		return String.valueOf(res3);
	}
	// 회원가입처리 완료하기
	@PostMapping("/addMember")
	public String addMember(Trip_MemberVO vo, Model m) {
		trip_MemberDaoInter.add(vo);
		m.addAttribute("vo", vo);
		return "member/success";
	}
	
	@PostMapping("/loginProcess")
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request, Trip_MemberVO vo,
			@RequestHeader("User-Agent") String userAgent) {
		ModelAndView mav = new ModelAndView("redirect:/main");
		System.out.println("id : "+vo.getMem_id());
		System.out.println("pwd : "+vo.getMem_pwd());
		Trip_MemberVO dto = trip_MemberDaoInter.loginCheck(vo);
		//System.out.println(dto.getId()+":"+dto.getName());
		if(dto == null) {
			mav.setViewName("error/paramException");
			mav.addObject("emsg", "로그인 실패입니다.");
		}else { // 인증성공
			session.setAttribute("sessionName", dto.getMem_name());
			session.setAttribute("sessionID", dto.getMem_id());
			session.setAttribute("sessionNick", dto.getMem_nick());
			System.out.println("닉 : "+dto.getMem_nick());
			System.out.println("로그인 실행! 및 세션 저장 -> Proceeding Call");
			/* Advice(공통관심사항)
			MyLoginLoggerVO lvo = new MyLoginLoggerVO();
			lvo.setIdn(dto.getId());
			lvo.setReip("192...........");
			lvo.setUarent("window");
			lvo.setStatus("login");
			memberDaoInter.addLoginLoggin(lvo);
			*/
		}
		return mav;
	}
	
	@GetMapping("/loginOut")
	public ModelAndView	loginfoutProcess(HttpSession session, HttpServletRequest request) {
		/* Advice(공통관심사항)
		MyLoginLoggerVO lvo = new MyLoginLoggerVO();
		lvo.setIdn("sessionID");
		lvo.setReip("192...........");
		lvo.setUarent("window");
		lvo.setStatus("logout");
		memberDaoInter.addLoginLoggin(lvo);
		*/
		
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionNick");
		mav.setViewName("redirect:/main");
		System.out.println("로그아웃 실행! 및 세션 삭제 -> Proceeding Call");
		
		return mav;
	}
}