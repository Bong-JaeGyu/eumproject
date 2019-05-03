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

import com.my.dto.UserVO;
import com.my.service.UserService;

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
	
	// 로그인 페이지 실행하도록
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView loginPage(HttpServletRequest request, Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
	
		String id = (String) request.getParameter("email1");			// 보내진 id 받아옴
		String pass = (String) request.getParameter("exampleInputPassword1");		// 보내진 pw 받아옴
		System.out.println(request.toString());
		System.out.println(id+pass);
		return new ModelAndView("login");
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
	
	
	
	
	
	
	
	
	
	
	
	// 로그인 페이지에서 아이디, 비번 입력하고나서 로그인 유무 정하는 페이지
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public ModelAndView loginCheckPage(HttpServletRequest request, Model model) {
		String id = (String) request.getParameter("user_id");			// 보내진 id 받아옴
		String pass = (String) request.getParameter("user_pw");		// 보내진 pw 받아옴
		String testId = "test";
		String testPass = "test";
		
		// 데이터베이스에 내가 로그인에서 친 아이디가 있는지 확인하기,  데이터베이스 아이디가 있으면 패스워드 확인
		try {
			System.out.println("test용 아이디는 잇습니다.");
		} catch(Exception e) {
			System.out.println("아이디가 없습니다.");
			return new ModelAndView("/loginFail");
		}
		
		if(pass.equals(testPass)) {			// password 맞음.
			System.out.println("로그인 성공");
			return new ModelAndView("/loginSuccess");
		}
		return new ModelAndView("/loginFail");
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


	
	
	
	
	
	
	// loginFail 페이지 실행하도록
	@RequestMapping(value = "/loginFail", method = RequestMethod.GET)
	public ModelAndView loginFailPage(HttpServletRequest request, Model model){  // 사용자에게 보여질 view 결정 String을 사용해도 됨.
		
		
		
		
		
		return new ModelAndView("login");
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
	
	
	
	
	
	

	// db 접속
	@RequestMapping(value = "/dbTest.do", method = RequestMethod.GET)
	public ModelAndView dbTestPage(Locale locale, Model model) throws Exception{
	    List<HashMap<String, Object>> userList = service.getMemberList();
	       
	    
	    model.addAttribute("userList", userList);
	    System.out.println(userList.toString());
	    return new ModelAndView("dbTest");
	}
	
	
	
}

