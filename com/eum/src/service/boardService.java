package service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.BoardDao;
import model.Board;

@Service
public class boardService {

	@Autowired
	private BoardDao bDao;
	
	public Board selectOne(int b_num) {
		
		return bDao.selectOne(b_num);
	}
	
	
	public int getStartPage(int page) {
		// TODO Auto-generated method stub

		return ((page -1)/10) * 10 +1;

	}
	
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		if(page%10!=0)
		return (page/10+1)*10;
		else
		return (page /10) *10;
	}
	
	
	public int getLastPage(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return (bDao.getCount(params) - 1) / 10 + 1;
		
	}
	
	public int getSkip(int page) {
		// TODO Auto-generated method stub
		return (page-1)*10;
	}
	
	
	public Board getBoard(int b_num) {
		// TODO Auto-generated method stub
		return bDao.selectOne(b_num);
	}
	
	public File getAttachFile(int b_num) {
		// TODO Auto-generated method stub
		Board b=bDao.selectOne(b_num);
		String fileName=b.getB_file();
		String path="C:/bitcamp/image2/";
		return new File(path+fileName);
		
	}
	
	public HashMap<String, Object> getBoardListPage(HashMap<String, Object> params,int page) {
		// TODO Auto-generated method stub
		HashMap<String, Object>result = new HashMap<String, Object>();
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(params));
		params.put("skip", getSkip(page));
		params.put("qty", 10);
		
		
		result.put("boardList", bDao.selectBoardPage(params));
	
		
		
		return result;
	}
	
	public Board readBoard(int b_num) {
		// TODO Auto-generated method stub
		
		Board b = bDao.selectOne(b_num);
		b.setB_readCount((b.getB_readCount()+1));
		bDao.updateBoard(b);
		return b;
	}
	
	public int deleteBoard(int b_num) {
		// TODO Auto-generated method stub
		
		return bDao.deleteBoard(b_num);
	}
	
	
	public int modifyBoard(Board board) {
		// TODO Auto-generated method stub
		Board originBoard = bDao.selectOne(board.getB_num());
		if(originBoard.getB_pass().equals(board.getB_pass()))
			return bDao.updateBoard(board);
		else
			return 0;
	}
	
	
	
	public int writeBoard(Board board,MultipartFile ufile) {
		// TODO Auto-generated method stub
		String path="C:/bitcamp/image2/";
		File dir = new File(path);
		if(!dir.exists())
			dir.mkdirs();
		String fileName = ufile.getOriginalFilename();
		File attachFile = new File(path+fileName);
		try {ufile.transferTo(attachFile);
			board.setB_file(fileName); 
		} catch (IllegalStateException e) {
			// TODO: handle exception
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		bDao.insertBoard(board);
		
		return board.getB_num();
	}
	
	
	
	
	
	
	
	
	
	
}
