package com.uglyfd.admin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/*
 * 서블릿 필터
 * 	- request, response가 서블릿이나 JSP 등에 도달하기 전에 필요한 전/후 처리 작업을 실행한다.
 * 	- FilterChain을 통해서 여러 개의 필터를 연속적으로 사용이 가능하다.
 * 서블릿 필터 등록 및 매핑
 * 	- WEB-INF/web.xml 파일에 필터를 등록해서 사용한다.
 * 	- @WebFilter 어노테이션으로 필터를 등록해서 사용한다.
 * 
 * 
 * 
 */

// 모든 요청에 대해서 필터를 적용하겠다. "/*"
@WebFilter(filterName = "encoding", urlPatterns = "/*")
public class EncodingFilter implements Filter{

	public EncodingFilter() {
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		System.out.println("인코딩 필터가 생성되어 초기화 진행");
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("서블릿 동작 전 코드 실행");
		
		String requestMethod = ((HttpServletRequest)request).getMethod();

		//post 요청에 대해서만 적용이 되도록 조건문을 통해 적용했다.
		if (requestMethod.equals("POST")) {
		
			request.setCharacterEncoding("UTF-8");
		
			System.out.println(request.getCharacterEncoding()+"인코딩 완료");
		}
		
		//다음 필터를 호출하거나, 마지막 필터면 servlet, JSP를 호출한다.
		//아래 메서드를 기준으로 서블릿 동작 전 코드는 위에 작업하고, 서블릿 동작 후 코드는 아래에서 작업한다.
		chain.doFilter(request, response);

		//JSP에는 아래의 설정이 들어가 있기 때문에 별도로 해줄 필요는 없지만 서블릿에서만 써야 할 경우는 위의 doFilter 메도드 이후에 설정해 주면 된다.
//		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("서블릿 동작 후 코드 실행");
		
	}

	@Override
	public void destroy() {

		System.out.println("인코딩 필터가 소멸됨");
	
	}
}
