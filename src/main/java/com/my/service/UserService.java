package com.my.service;

import java.util.HashMap;
import java.util.List;
import com.my.dto.UserVO;
 
public interface UserService {
    public List<UserVO> selectUser() throws Exception;
    public List<HashMap<String, Object>> getMemberList();
    public void joinMember(HashMap<String, Object>params);
    public boolean loginMember(String m_id, String m_pw);
    
    public HashMap<String, Object>getMemberInfo(String m_id);
    
    public void updateMember(HashMap<String,Object>params);
    
}

