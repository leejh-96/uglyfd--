package com.uglyfd.member.controller;

import java.io.IOException;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.uglyfd.member.model.service.MemberService;
import com.uglyfd.member.model.vo.Member;

@WebServlet(name = "update", urlPatterns = { "/mypage/update" })
public class updateServlert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updateServlert() {
        
    }



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member = null;
		int result = 0;
		
		HttpSession session = request.getSession(false);
		Member loginmember = (session == null) ? null : (Member) session.getAttribute("loginmember");
		
		if (loginmember != null) {
			member = new Member();
			
			member.setNo(member.getNo());
			member.setPassword(request.getParameter("M_PWD"));
			member.setMail(request.getParameter("M_MAIL"));
			member.setName(request.getParameter("M_NAME"));
			member.setBirth(request.getParameter("M_BIRTH"));
			member.setPhone(request.getParameter("M_PHONE"));
			member.setAddr(request.getParameter("M_ADDR"));
			
			result = new MemberService().save(member);
			
			if (result > 0) {
				session.setAttribute("loginmember", new MemberService().findMemberById(member.getId()));
				
				request.setAttribute("msg", "회원 정보 수정 완료");
				request.setAttribute("location", "/views/mypage/mypage.jsp");
			}else {
				
				request.setAttribute("msg", "회원 정보 수정 실패");
				request.setAttribute("location", "views/mypage/myrevise.jsp");
			}
			
	} else {
			request.setAttribute("msg", "로그인 후 수정해 주세요.");
			request.setAttribute("location", "/");			
		}
		
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}
		
		
		
		
	}



