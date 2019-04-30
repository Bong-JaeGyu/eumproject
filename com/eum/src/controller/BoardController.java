package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import model.Board;
import service.boardService;



@Controller
public class BoardController {

	@Autowired
	private boardService bService;
	
	
	
	
  



	
	
	
	
	
	@RequestMapping("freeBoardList.do")
	public String freeBoard() {
		
		return "redirect:boarList.do";
	}
	
	@RequestMapping("noticeBoardList.do")
	public String noticeBoard() {

		return "redirect:boarList.do";
	}
	
	@RequestMapping("boardList.do")
	public ModelAndView boardList(HttpSession session,@RequestParam(defaultValue="1")int page,@RequestParam(required =false)String keyword,@RequestParam(required =false)String keyword2,@RequestParam(defaultValue="0")int type,
			@RequestParam(required=false)Date startDate,@RequestParam(required=false)Date endDate){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> params=new HashMap<String,Object>();
	
		
	
		if(session.getAttribute("b_index").equals("자유"))
			mav.setViewName("freeBoardList");
		else {
			mav.setViewName("noticeBoardList");
		}
		params.put("b_index", session.getAttribute("b_index"));
		
	
		if(session.getAttribute("type")== null|| (int)session.getAttribute("type")==0) {
			
			params.put("type", 0);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);
		
			mav.addAllObjects(result);
			mav.addAllObjects(params);
		
			session.setAttribute("page", page);
			session.setAttribute("type", type);
		}
		if(type==1 || (int)session.getAttribute("type")==1) {
			if(keyword!=null) {
				params.put("type", type);
				params.put("b_title", keyword);
			
				session.setAttribute("type", type);
				session.setAttribute("keyword", keyword);}
			else {
				params.put("type", session.getAttribute("type"));
				params.put("b_title", session.getAttribute("keyword"));

			}
			session.setAttribute("page", page);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);

			mav.addAllObjects(result);
			mav.addAllObjects(params);


		}
		if(type==2 || (int)session.getAttribute("type")==2) {
			
			if(keyword!=null) {
				params.put("type", type);
				params.put("b_content", keyword);
		
				session.setAttribute("type", type);
				session.setAttribute("keyword", keyword);}
			else {
				params.put("type", session.getAttribute("type"));
				params.put("b_content", session.getAttribute("keyword"));

			}
			session.setAttribute("page", page);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);
			mav.addAllObjects(result);
			mav.addAllObjects(params);	


		}


		if(type==3 || (int)session.getAttribute("type")==3) {
		
			if(keyword!=null) {
				params.put("type", type);
				params.put("b_email", keyword);
			
				session.setAttribute("type", type);
				session.setAttribute("keyword", keyword);}
			else {
				params.put("type", session.getAttribute("type"));
				params.put("b_email", session.getAttribute("keyword"));

			}
			session.setAttribute("page", page);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);
			mav.addAllObjects(result);
			mav.addAllObjects(params);	


		}

		if(type==4 || (int)session.getAttribute("type")==4) {
			if(keyword!=null) {
				params.put("type", type);
				params.put("startdate", keyword);
				params.put("enddate", keyword2);
		
				session.setAttribute("type", type);
				session.setAttribute("keyword", keyword);
				session.setAttribute("keyword2", keyword2);}
			else {
				params.put("type", session.getAttribute("type"));
				params.put("startdate", session.getAttribute("keyword"));
				params.put("enddate", session.getAttribute("keyword2"));
			}
			session.setAttribute("page", page);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);
			mav.addAllObjects(result);
			mav.addAllObjects(params);	
		}
	
		
		if(type==5 || (int)session.getAttribute("type")==5) {
			
			if(keyword!=null) {
				params.put("type", type);
				params.put("b_title", keyword);
				params.put("b_email", keyword);
			
				session.setAttribute("type", type);
				session.setAttribute("keyword", keyword);}
			else {
				params.put("type", session.getAttribute("type"));
				params.put("b_title", session.getAttribute("keyword"));
				params.put("b_email", session.getAttribute("keyword"));

			}
			session.setAttribute("page", page);
			HashMap<String, Object>result=bService.getBoardListPage(params, page);
			mav.addAllObjects(result);
			mav.addAllObjects(params);	


		}
		
		
		
		
		
		return mav;
	}
	
	
	@RequestMapping("view.do")
	public String view(Model model, int b_num) {
		model.addAttribute("board", bService.readBoard(b_num));
		return "view";

	}
	
	@RequestMapping("writeForm.do")
	public void writeForm() {


	}

	@RequestMapping("write.do")
	public String write(Board board,@RequestParam("ufile")MultipartFile ufile) {
		bService.writeBoard(board, ufile);
		return "redirect:view.do?b_num="+board.getB_num();

	}
	
	
	
	
	
	
	
	
	@RequestMapping("download.do")
	public View download(int b_num) {
		View view = new DownloadView(bService.getAttachFile(b_num));
		return view;

	}
	
	
	@RequestMapping("modifyForm.do")
	public void modifyForm(Model model, int b_num) {
		model.addAttribute("board", bService.getBoard(b_num));
	}


	@RequestMapping("modify.do")
	public String modify(Board board) {
		if(bService.modifyBoard(board)!=0)
			return "redirect:view.do?b_num=" + board.getB_num();
		else
			return "redirect:boardList.do";
	}

	
	@RequestMapping("deleteboard.do")
	public String deleteBoard(@RequestParam int b_num, @RequestParam String b_pass) {
		if(bService.readBoard(b_num).getB_pass().equals(b_pass))
			bService.deleteBoard(b_num);
		return "redirect:freeBoardList.do";
	}
	
	
	
	
	
	
	
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd" );
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	

}
