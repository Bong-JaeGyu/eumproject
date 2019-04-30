package controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import service.memberService;



@Controller
public class MemberController {
	
	@Autowired
	private memberService mService;
	
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String m_email, String m_pw) {
		
		
	
		System.out.println(m_pw+""+m_email);
		
		
		
		return null;
	
		
	}
	
	
	
	
	
	
	 	
//		@ResponseBody
//	    @RequestMapping(value="checkId.do")
//	    public int idCheck(ModelAndView mav, String m_email) {
//	        System.out.println("Controller.idCheck() 호출");
//	        int result=0;
//	        
//	      
//	        if(mService.getMemberInfo(m_email)!=null) 
//	        	result=1;
//	        else System.out.println("아이디사용가능");
//	        return result;
//	    }
//	
//
//	
//	@RequestMapping("loginForm.do")
//	public String loginForm() {
//		return "loginForm";  // 
//		
//	}
//	
//	@RequestMapping("joinForm.do")
//	public void joinForm() {
//		
//	}
//	
//	@RequestMapping("join.do")
//	public String join(@RequestParam HashMap<String,Object>params) {
//	
//		mService.joinMember(params);
//		
//		return "redirect:loginForm.do";
//		
//		
//		
//	}
//	
//	@RequestMapping("login.do")
//	public String login(HttpSession session, String m_email, String m_pw) {
//		
//		
//	
//		if(session.getAttribute("m_email")==null) {
//			
//			if(mService.loginMember(m_email, m_pw)) {
//				session.setAttribute("m_email", m_email);
//				if(mService.admin(m_email))
//
//					session.setAttribute("m_admin", "admin");
//				else
//					session.setAttribute("m_admin", "user");
//				
//				return "redirect:main.do";}
//			else
//				return "redirect:loginForm.do";
//		}
//		return "redirect:main.do";
//		
//	}
//	
//	@RequestMapping("main.do")
//	public void main() {
//	
//	
//	}
//	
//	
//	@RequestMapping("logout.do")
//	public String logout(HttpSession session) {
//		session.removeAttribute("m_email");
//		session.removeAttribute("admin");
//		session.removeAttribute("page");
//		session.removeAttribute("type");
//		return "redirect:loginForm.do";
//	}
//	
//	
//	@RequestMapping("memberUpdate.do")
//	public String updateMember(Model model,HttpSession session) {
//		model.addAttribute("member", mService.getMemberInfo((String) session.getAttribute("m_email")));
//		
//		return "memberUpdate";
//
//	}
//	
//	
//	@RequestMapping("update.do")
//	public String updateMember(@RequestParam HashMap<String,Object>params) {
//		
//		mService.updateMember(params);
//			return "redirect:main.do";
//
//	}
//	
//	@RequestMapping("memberList.do")
//
//	public ModelAndView memberList() {
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("memberList", mService.getMemberList());
//		mav.setViewName("memberList");
//		return mav;
//	}
	
	
	
	
	
}






