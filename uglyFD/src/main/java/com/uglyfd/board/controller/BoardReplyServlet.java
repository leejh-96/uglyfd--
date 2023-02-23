package com.uglyfd.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uglyfd.notice.model.service.BoardService;
import com.uglyfd.notice.model.vo.Reply;

@WebServlet(name = "boardReply", urlPatterns = { "/board/reply" })
public class BoardReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardReplyServlet() {
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int result = 0;
		// 로그인 체크 (직접 적용시켜 보세요.)
//    	HttpSession session = request.getSession(false);
//		Member loginMember = (session == null) ? null : (Member) session.getAttribute("loginMember");
    	
    	int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    	String content = request.getParameter("content");
    	
    	Reply reply = new Reply();
    	reply.setBoardNo(boardNo);
//    	reply.setWriterNo(loginMember.getNo());
    	reply.setContent(content);
    	
    	System.out.println(boardNo + ", " + content);
    	
//    	댓글작성하는 기능을 전달하는 메서드.
    	result = new BoardService().saveReply(reply);
    	
    	if(result > 0) {
    		request.setAttribute("msg", "댓글 등록 성공");
			request.setAttribute("location", "/board/view?no=" + boardNo);
    	}else {
    		request.setAttribute("msg", "댓글 등록 실패");
			request.setAttribute("location", "/board/update?no=" + boardNo);
    	}
    
    	request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

}
