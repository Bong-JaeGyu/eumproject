package com.my.dao;

import java.util.HashMap;
import java.util.List;

import com.my.dto.BoardVO;
import com.my.dto.UserVO;

public interface UserDAO {
	// 회원목록 받아옴
	public List<UserVO> selectUser();

	
	public boolean insertMember(HashMap<String, Object> params);

	public boolean updateMember(HashMap<String, Object> params);

	public boolean deleteMember(String member_id);

	public HashMap<String, Object> selectOne(String member_id);

	public List<HashMap<String, Object>> selectAll();
	
	public List<HashMap<String, Object>> selectMsg(String member_id);
	
	public List<HashMap<String, Object>> selectmentor(String member_id);
	
	public HashMap<String, Object> boardOne(BoardVO board);
	
	public boolean insertboard(HashMap<String, Object> params);
	
    public List<HashMap<String, Object>> selectboard(String board_own);
	 
	 
	public boolean insermessage(HashMap<String, Object> params); 
	 
}

