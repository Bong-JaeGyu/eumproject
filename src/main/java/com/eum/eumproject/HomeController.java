package com.eum.eumproject;




import java.io.IOException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.my.dto.BoardVO;
import com.my.dto.UserVO;
import com.my.service.UserService;
import com.google.gson.*;


@Controller
public class HomeController {
	@Inject
	UserService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	
	
	
	@RequestMapping(value = "careerApi.do", method = RequestMethod.GET)
	public ModelAndView careerApiPage(HttpServletRequest request, Model model) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
	
		return new ModelAndView("careerApi");
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "careerApigo.do",produces = "application/text; charset=UTF-8")
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void careerApigo(Model model, HttpServletResponse resp) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		String result=service.careerApi1();
	
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("UTF-8");
		System.out.println(result);
		
		
		
		resp.getWriter().println(result);
		
//		return new ModelAndView("login");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "mlogWrite.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public ModelAndView mlogWrite(Model model, HttpServletResponse resp ) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		 
		 
		return new ModelAndView("mlogWrite");

	}
	
	@ResponseBody
	@RequestMapping(value = "mlogwritego.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void mlogwritego(String mlogtitle,  String mlogcontent, Model model, HttpServletResponse resp, HttpSession session) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
		
	
		
		
		HashMap<String, Object>board = new HashMap<String, Object>();
		
		board.put("board_title", mlogtitle);
		board.put("board_writer", session.getAttribute("id"));
		board.put("board_type", "mlog");
		board.put("board_own", session.getAttribute("id"));
		board.put("board_pw", "test pw");
		board.put("board_cate", "test cate");
		board.put("board_content",mlogcontent);
		
		System.out.println(board.get("board_title"));
		System.out.println(board.get("board_content"));
		
		
		service.writeboard(board);
		

		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "boardWrite.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public ModelAndView boardWrite(Model model, HttpServletResponse resp ) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		 
		 
		return new ModelAndView("boardWrite");

	}
	
	
	@ResponseBody
	@RequestMapping(value = "writego.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void writego(String boardtitle,  String boardcontent, Model model, HttpServletResponse resp, HttpSession session) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
		
	
		
		
		HashMap<String, Object>board = new HashMap<String, Object>();
		
		board.put("board_title", boardtitle);
		board.put("board_writer", "bong2");
		board.put("board_type", "board");
		board.put("board_own", "bong2");
		board.put("board_pw", "1111");
		board.put("board_cate", "test cate");
		board.put("board_content","test");
		
		System.out.println(board.get("board_title"));
		System.out.println(board.get("board_content"));
		
		
		service.writeboard(board);
		
		
		
	}
	
	
	
	 
	
	
	
	

	@RequestMapping(value = "boardlist.do", method = RequestMethod.GET)
	public ModelAndView boardlistgo(HttpServletRequest request, Model model, HttpSession session){  
		
	
		
		 List<HashMap<String, Object>> boardList=service.boardList("bong2");
		
		 
		 System.out.println(boardList.size());
		 
		 
		 for(int i =0; i<boardList.size();i++) {
			 
			 boardList.get(i).put("board_no", boardList.size()-i);
		
			 
		
		 };
		 
		 
		 
		 System.out.println(boardList);
	
	
		 
		
		 
		 model.addAttribute("boardList", boardList);
		 
	
		
		return new ModelAndView("boardlist");
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@ResponseBody
	@RequestMapping(value = "mlog.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public ModelAndView mlog(Model model, HttpServletResponse resp ) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		 
		 
		return new ModelAndView("mlog");

	}
	
	
	@ResponseBody
	@RequestMapping(value = "boardload.do",produces = "application/text; charset=UTF-8" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void boardload(String board_num, String board_writer,Model model, HttpServletResponse resp ) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("UTF-8");
		
			BoardVO board= new BoardVO();
			board.setBoard_num(board_num);
			board.setBoard_writer(board_writer);
		 HashMap<String, Object> boardinfo=service.getboard(board);
		
		 System.out.println(boardinfo);
		
		 Gson gson=new Gson();
		 String result=gson.toJson(boardinfo);
		 System.out.println(result);
		 resp.getWriter().println(result);
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "careerApiresult.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void careerApiresult(String result, Model model, HttpServletResponse resp) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		System.out.println("들어옴");
		System.out.println(result);
		
		

	}
	
	
	
	
	
	
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public ModelAndView loginSuccessPage(HttpServletRequest request, Model model, HttpSession session){  
		
		
		if(session.getAttribute("id")==null) {
			return new ModelAndView("index");
		};
		
		 List<HashMap<String, Object>> msgList=service.getMsgList((String)session.getAttribute("id"));
//		System.out.println(msgList);
		
		 List<HashMap<String, Object>> mentorList=service.getMentorList((String)session.getAttribute("id"));
		 HashMap<String, Object> memberinfo=service.getMemberInfo((String)session.getAttribute("id"));
		 System.out.println(msgList);
		 System.out.println(mentorList);
		 System.out.println(memberinfo);
		 
		model.addAttribute("msgList", msgList);
		model.addAttribute("mentorList", mentorList);
		model.addAttribute("memberinfo", memberinfo);
		
		return new ModelAndView("mypage");
	}


	
	
	

	@ResponseBody
	@RequestMapping(value = "logingo.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void logingo(String member_id,  String member_pw,  Model model, HttpServletResponse resp, HttpSession session) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	

		System.out.println(member_id+"                "+member_pw);
		
		System.out.println(service.loginMember(member_id, member_pw));
		System.out.println(session.getAttribute("id"));
		
		String result="fail";
		if(service.loginMember(member_id, member_pw)==1){
			session.setAttribute("id", member_id);
		
			result = member_id;
			
		}
		resp.getWriter().println(result);
		
//		return new ModelAndView("login");
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "joingo.do" ) 
//	public  ModelAndView logingo(HttpServletRequest request,  Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	public void joingo(String user_id,  String user_pw, String job, Model model, HttpServletResponse resp, HttpSession session,String user_pw_cf,String user_tel,
			String user_name,String user_birthday,String user_career,int mentor) throws IOException{  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
		

		System.out.println("user_id"+user_id+"        user_pw        "+user_pw+"    job    " +job+"userpwcf      "+user_pw_cf+"       usertel"+user_tel+"         username"+user_name
				+"          userbirthday"+user_birthday+"           user+career"+user_career+"                  mentor"+mentor);
		
		 
		HashMap<String, Object>member = new HashMap<String, Object>();
		
		member.put("member_id", user_id);
		member.put("member_pw", user_pw);
		member.put("user_pw_cf", user_pw_cf);
		member.put("user_tel", user_tel);
		member.put("user_name", user_name);
		member.put("user_birthday", user_birthday);
		if(mentor==1) {
			member.put("grade", user_career);
			member.put("school", job);
		}else {
			member.put("career", user_career);
			member.put("job", job);
		}
		
		
	
		member.put("mentor", mentor);
		service.joinMember(member);
		
		
		
	}
	
	
	
	
	
	
	
}

