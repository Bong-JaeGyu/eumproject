package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class freeBoardCheckInterceptor extends HandlerInterceptorAdapter{

	
	

	
	//요청이 컨트롤러에 전달되기전에 수행할 작업
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session =request.getSession();
		session.setAttribute("b_index", "자유");
	
	
		response.sendRedirect("boardList.do");
		
		return false;


	}

	
	
}
