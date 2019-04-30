package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class memberService {

	@Autowired
	private MemberDao mDao;
	
	
//	getMeberlist: 멤버전체정보 가져와서 List로 리턴,
//	joinMember: 사용자 정보를 디비에 저장 
//	loginMember: email을 통해 사용자 정보 가져와 사용자가 입력한 pw와 대조하여 같을시에 트루를 리턴
//	getMemberInfo:email을 통해 db에 사용자 정보 리턴
//	updatemember:email로 사용자 정보를 찾아 나머지 정보를 수정 
	
	
	public List<HashMap<String, Object>> getMemberList(){
		return mDao.selectAll();
	}
	
	
	public void joinMember(HashMap<String, Object>params) {
		if(params.get("m_pw").equals(params.get("m_pw_CHECK")))
			mDao.insertMember(params);
	}
	
	public boolean loginMember(String m_id, String m_pw) {

		HashMap<String, Object>member= mDao.selectOne(m_id);
	
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
	
		
		return mDao.selectOne(m_id);

	}
	
	
	
	public void updateMember(HashMap<String,Object>params) {
		
			mDao.updateMember(params);
		
	}
	
	
	
	
	
	
	
	
	
	
}
