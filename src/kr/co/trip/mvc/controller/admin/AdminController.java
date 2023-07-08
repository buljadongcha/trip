package kr.co.trip.mvc.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.trip.mvc.dao.Trip_MemberDaoInter;
import kr.co.trip.mvc.vo.PageVO;
import kr.co.trip.mvc.vo.Trip_MemberVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private Trip_MemberDaoInter trip_MemberDaoInter;

	@Autowired
	private PageVO pagevo;


	@RequestMapping("/adminMemberList")
	public String adminMemberList(Model model, @RequestParam Map<String, String> param) {
		String stype = param.get("searchType");
		String sname = param.get("searchValue");
		String cPage = param.get("cPage");
		System.out.println("파라미터 출력 : "+ cPage);
		System.out.println("검색 시, 링크 시 넘어오는 파라미터 출력 : "+stype);
		System.out.println("검색 시, 링크 시 넘어오는 파라미터 출력 : "+sname);
		System.out.println("****************************************");
		
		/* 1. Model2를 스프링타입으로 변경	[C:\KOSMO132\Wep\workspace\web0607_Model2\src\main\java\action\Mem1Action 참고]
			System.out.println("*************************");
			// 총 게시물 수 가져오기 => 실행결과 TotalRecord : 53
			totalRecord = MemberDao.getDao().getCnt();
			System.out.println("1. TotalRecord : "+totalRecord);*/
		
		pagevo.setTotalRecord(trip_MemberDaoInter.getTotal(param));
		int totalRecord = pagevo.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		
		/*	2. Model2의 totalPage를 스프링타입으로 변경
			totalPage =(int)Math.ceil(totalRecord/(double)numPerPage);
			System.out.println("2. totalPage : "+totalPage); */
		System.out.println("2. totalPage : "+pagevo.getTotalPage());
		pagevo.setTotalPage((int)Math.ceil(totalRecord/(double)pagevo.getNumPerPage()));
		
		/* 3. Model2의 totalBlock를 스프링타입으로 변경
			// 전체 블록 구하기 => 전체페이지(totalPage)/보여줄블록수(pagePerBlock)
			// totalBlock = 6/5;
			totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
			System.out.println("3. totalBlock : "+totalBlock); */
		pagevo.setTotalBlock((int) Math.ceil((double) pagevo.getTotalPage() / pagevo.getPagePerBlock()));
		
		/*	4. // 현재 페이지를 요청할 때 파라미터로 현재 페이지값을 받는다. 1~~~~n
			String s_page = request.getParameter("cPage");
				if (s_page != null) {
					nowPage = Integer.parseInt(s_page);	} */
		//String s_page = String.valueOf(cPage); // 리팩토링 구간
		if (cPage != null) {
			pagevo.setNowPage(Integer.parseInt(cPage));
		}else {
			pagevo.setNowPage(1);
		}
		System.out.println("4. nowPage : "+pagevo.getNowPage());
		
		/*	5. beginPerPage = (nowPage-1) * numPerPage+1;
				endPerPage = (beginPerPage-1) + numPerPage;
				System.out.println("5. beginPerPage : "+beginPerPage);
				System.out.println("5. endPerPage : "+endPerPage);	*/
		
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

		List<Trip_MemberVO> list = trip_MemberDaoInter.memList(map);
		
		/* 6. int startPage = (int)((nowPage - 1)/pagePerBlock) * pagePerBlock +1;
				int endPage = startPage + pagePerBlock -1 ;
				// endPage의 연산의 범위가 우리가 구한 totalPage값 미만이라면 totalPage의 값으로 대입시킨다.
				if(endPage > totalPage) {
					endPage = totalPage; }
				System.out.println("6. startPage : "+startPage);
				System.out.println("6. endPage : "+endPage); */
		int startPage = (int)((pagevo.getNowPage() - 1)/pagevo.getPagePerBlock()) * pagevo.getPagePerBlock()+1;
		int endPage = startPage + pagevo.getPagePerBlock()-1;
		if(endPage > pagevo.getTotalPage()) {
			endPage = pagevo.getTotalPage(); }
		System.out.println("6. startPage : "+startPage);
		System.out.println("6. endPage : "+endPage);
		
		// 검색값을 view로 전달
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));
		
		model.addAttribute("startPage", startPage);	// 블록의 시작페이지값
		model.addAttribute("endPage", endPage);		// 블록의 끝 값
		model.addAttribute("page", pagevo);	// nowPage, pagePerBlock, totalPage
		model.addAttribute("listv", list);
		
		return "admin/adminMemList";
	}
}
