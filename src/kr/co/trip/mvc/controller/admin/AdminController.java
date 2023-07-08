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
		System.out.println("�Ķ���� ��� : "+ cPage);
		System.out.println("�˻� ��, ��ũ �� �Ѿ���� �Ķ���� ��� : "+stype);
		System.out.println("�˻� ��, ��ũ �� �Ѿ���� �Ķ���� ��� : "+sname);
		System.out.println("****************************************");
		
		/* 1. Model2�� ������Ÿ������ ����	[C:\KOSMO132\Wep\workspace\web0607_Model2\src\main\java\action\Mem1Action ����]
			System.out.println("*************************");
			// �� �Խù� �� �������� => ������ TotalRecord : 53
			totalRecord = MemberDao.getDao().getCnt();
			System.out.println("1. TotalRecord : "+totalRecord);*/
		
		pagevo.setTotalRecord(trip_MemberDaoInter.getTotal(param));
		int totalRecord = pagevo.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);
		
		/*	2. Model2�� totalPage�� ������Ÿ������ ����
			totalPage =(int)Math.ceil(totalRecord/(double)numPerPage);
			System.out.println("2. totalPage : "+totalPage); */
		System.out.println("2. totalPage : "+pagevo.getTotalPage());
		pagevo.setTotalPage((int)Math.ceil(totalRecord/(double)pagevo.getNumPerPage()));
		
		/* 3. Model2�� totalBlock�� ������Ÿ������ ����
			// ��ü ��� ���ϱ� => ��ü������(totalPage)/�����ٺ�ϼ�(pagePerBlock)
			// totalBlock = 6/5;
			totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
			System.out.println("3. totalBlock : "+totalBlock); */
		pagevo.setTotalBlock((int) Math.ceil((double) pagevo.getTotalPage() / pagevo.getPagePerBlock()));
		
		/*	4. // ���� �������� ��û�� �� �Ķ���ͷ� ���� ���������� �޴´�. 1~~~~n
			String s_page = request.getParameter("cPage");
				if (s_page != null) {
					nowPage = Integer.parseInt(s_page);	} */
		//String s_page = String.valueOf(cPage); // �����丵 ����
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
		
		
		// ����¡ �׽�Ʈ
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(pagevo.getBeginPerPage()));
		map.put("end", String.valueOf(pagevo.getEndPerPage()));

		// map�� param�� ��ġ��
		map.putAll(param);
		
		// �˼�
		System.out.println("========Map All=========");
		for(Map.Entry<String, String> e : map.entrySet()) {
			System.out.println(e.getKey()+","+e.getValue());
		}

		List<Trip_MemberVO> list = trip_MemberDaoInter.memList(map);
		
		/* 6. int startPage = (int)((nowPage - 1)/pagePerBlock) * pagePerBlock +1;
				int endPage = startPage + pagePerBlock -1 ;
				// endPage�� ������ ������ �츮�� ���� totalPage�� �̸��̶�� totalPage�� ������ ���Խ�Ų��.
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
		
		// �˻����� view�� ����
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));
		
		model.addAttribute("startPage", startPage);	// ����� ������������
		model.addAttribute("endPage", endPage);		// ����� �� ��
		model.addAttribute("page", pagevo);	// nowPage, pagePerBlock, totalPage
		model.addAttribute("listv", list);
		
		return "admin/adminMemList";
	}
}
