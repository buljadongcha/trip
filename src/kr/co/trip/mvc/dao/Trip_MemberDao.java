package kr.co.trip.mvc.dao;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.trip.mvc.vo.Trip_MemberVO;
@Repository
public class Trip_MemberDao implements Trip_MemberDaoInter{
	
	@Autowired
	public SqlSessionTemplate ss;
	@Override
	public void add(Trip_MemberVO v) {
		ss.insert("tripmem.add", v);
		
	}
	@Override
	public int idCheck(String id) {
		return ss.selectOne("tripmem.idCheck", id);
	}
	@Override
	public Trip_MemberVO loginCheck(Trip_MemberVO v) {
		return ss.selectOne("tripmem.loginchk", v);
	}
	@Override
	public Trip_MemberVO myPage(String id) {
		return ss.selectOne("tripmem.mypage", id);
	}
	@Override
	public List<Trip_MemberVO> memList(Map<String, String> map) {
		return ss.selectList("tripmem.list", map);
	}
	@Override
	public int getCnt() {
		return 0;
	}
	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("tripmem.totalCount", map);
	}
	@Override
	public int emailCheck(String email) {
		return ss.selectOne("tripmem.emailCheck", email);
	}
	@Override
	public int nickCheck(String nick) {
		return ss.selectOne("tripmem.nickCheck", nick);
	}
	
	
}