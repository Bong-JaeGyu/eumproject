package com.my.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import com.my.dto.BoardVO;
import com.my.dto.UserVO;
 
public interface UserService {
    public List<UserVO> selectUser() throws Exception;
    public List<HashMap<String, Object>> getMemberList();
    public void joinMember(HashMap<String, Object>params);
    
    public int loginMember(String m_id, String m_pw);
    
    public HashMap<String, Object>getMemberInfo(String m_id);
    
    public void updateMember(HashMap<String,Object>params);
    
    
    public List<HashMap<String, Object>> getMsgList(String member_id);
    
    public List<HashMap<String, Object>> getMentorList(String member_id);
    
    public String careerApi1() throws IOException;
    
    public HashMap<String, Object>getboard(BoardVO board);
    
    public void writeboard(HashMap<String, Object>params);
    
    public List<HashMap<String, Object>> boardList(String board_own);
    
    
    public void sendmsg(HashMap<String, Object>params);
    
    
    public List<HashMap<String, Object>> getComentList(int board_num);
    
    public void postcomment(HashMap<String, Object>params);
    
}

