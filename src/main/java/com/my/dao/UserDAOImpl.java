package com.my.dao;

import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.my.dto.UserVO;
import com.my.mapper.UserMapper;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
    private SqlSession sqlSession;

	@Override
	public List<UserVO> selectUser() {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class); // mapper중에 UserMapper 받아오기
		return mapper.selectUser();    // mapper의 selectUser를 생성해 리턴합니다.
	}

	@Override
	public boolean insertMember(HashMap<String, Object> params) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		mapper.insertMember(params);
		// TODO Auto-generated method stub
		return false;
		
	}

	@Override
	public boolean updateMember(HashMap<String, Object> params) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		mapper.updateMember(params);
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteMember(String member_id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		mapper.deleteMember(member_id);
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public HashMap<String, Object> selectOne(String member_id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		// TODO Auto-generated method stub
		return mapper.selectOne(member_id);
	}

	@Override
	public List<HashMap<String, Object>> selectAll() {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}	
	
	
	
}
