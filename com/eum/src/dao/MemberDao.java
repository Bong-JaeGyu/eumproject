package dao;

import java.util.HashMap;
import java.util.List;

public interface MemberDao {
	public boolean insertMember(HashMap<String, Object> params);

	public boolean updateMember(HashMap<String, Object> params);

	public boolean deleteMember(String member_id);

	public HashMap<String, Object> selectOne(String member_id);

	public List<HashMap<String, Object>> selectAll();
	
	
	
}
