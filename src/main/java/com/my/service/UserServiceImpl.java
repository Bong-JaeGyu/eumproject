package com.my.service;

import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.my.dao.UserDAO;
import com.my.dto.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDAO dao;
	
	@Override
	public List<UserVO> selectUser() throws Exception {
		return dao.selectUser();
	}
	
	
	public List<HashMap<String, Object>> getMemberList(){
		return dao.selectAll();
	}
	
	
	public void joinMember(HashMap<String, Object>params) {
		if(params.get("m_pw").equals(params.get("m_pw_CHECK")))
			dao.insertMember(params);
	}
	
	public boolean loginMember(String m_id, String m_pw) {

		HashMap<String, Object>member= dao.selectOne(m_id);
	
		if(member ==null)
			return false;
		else {
			if(member.get("m_pw").equals(m_pw)) {
				return true;
			}else 
				return false;
		}

	}
	
//	public boolean admin(String m_id){
//	
//		
//		HashMap<String, Object>member= mDao.selectOne(m_id);
//
//		if(member.get("m_admin").equals("admin"))
//			return true;
//		else
//			return false;
//		
//	}	
	
	public HashMap<String, Object>getMemberInfo(String m_id){
	
		
		return dao.selectOne(m_id);

	}
	
	
	
	public void updateMember(HashMap<String,Object>params) {
		
			dao.updateMember(params);
		
	}
	
}



