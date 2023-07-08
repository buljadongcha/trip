package kr.co.trip.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.trip.mvc.vo.FreeBoardVO;
import kr.co.trip.mvc.vo.FreeBoard_CommVO;


@Repository // Dao를 빈으로 등록시켜준다.
public class FreeBoardDao implements FreeBoardDaoInter {
	
	@Autowired // 스프링 컨테이너에 등록한 빈에게 의존관계주입이 필요할 때, DI(의존성 주입)을 도와주는 어노테이션
	private SqlSessionTemplate ss;

	@Override
	public void addFBoard(FreeBoardVO vo) {
		ss.insert("freeboard.fwrite",vo);
	}

	@Override
	public List<FreeBoardVO> listFBoard(Map<String, String> map) {
		return ss.selectList("freeboard.flist", map);
	}

	@Override
	public void updateHit(int num) {
		ss.update("freeboard.hit", num);
	}

	@Override
	public FreeBoardVO detailFBoard(int num) {
		return ss.selectOne("freeboard.finfo", num);
	}

	@Override
	public boolean checkPwd(FreeBoardVO vo) {
		int res = ss.selectOne("freeboard.chkpwd",vo);
		if(res > 0 ) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public void deleteFBoard(int num) {
		ss.delete("freeboard.del",num);
	}

	@Override
	public void updateFBoard(FreeBoardVO vo) {
		ss.update("freeboard.up", vo);
	}

	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("freeboard.totalCount", map);
	}

	@Override
	public void addBoardComm(FreeBoard_CommVO vo) {
		ss.selectList("freeboard.addComm",vo);
	}

	@Override
	public List<FreeBoard_CommVO> listCommBoard(int num) {
		return ss.selectList("freeboard.commList",num);
	}

}
