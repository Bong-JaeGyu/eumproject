package dao;

import java.util.HashMap;
import java.util.List;

import model.Board;

public interface BoardDao {
	
	public int insertBoard(Board board);
	public int updateBoard(Board board);
	public int deleteBoard(int b_num);
	public Board selectOne(int b_num);
	
	public List<Board> selectBoardPage(HashMap<String, Object>params);
	
	public List<Board> selectSearchTitleContent(HashMap<String, Object>params);
	
	public List<Board> selectSearchName(HashMap<String, Object>params);
	
	public List<Board> selectSearchPeriod(HashMap<String, Object>params);
	
	public int getCount(HashMap<String, Object>params);
	
	
	
}
