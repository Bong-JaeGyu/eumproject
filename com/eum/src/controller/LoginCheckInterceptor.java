package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

//	
//	
////	//요청이 컨트롤러에서 처리가 완료 후에 수행할 작업
////	@Override
////	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
////			ModelAndView modelAndView) throws Exception {
////		// TODO Auto-generated method stub
////		super.postHandle(request, response, handler, modelAndView);
////	}
//
//	
//	
//	//요청이 컨트롤러에 전달되기전에 수행할 작업
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		// TODO Auto-generated method stub
//		HttpSession session =request.getSession();
//		
//		String m_email= (String) session.getAttribute("m_email");
//		
//		if(m_email==null) {
//			response.sendRedirect("loginForm.do");
//			return false;}
//			else {
//				return true;
//			}
//		
//		
//		
//		
//
//	}

	
	
}
