package com.uglyfd.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uglyfd.admin.model.service.ProductService;

@WebServlet(name = "productreview", urlPatterns = { "/review/update" })
public class ProductReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductReviewServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int productNum = Integer.parseInt(request.getParameter("productNum"));
//		String loginMemberId = request.getParameter("loginMemberId");
		int productCategoryNum = Integer.parseInt(request.getParameter("productCategoryNum"));
		String review = request.getParameter("review");
		
		System.out.println(productNum);
//		System.out.println(loginMemberId);
		System.out.println(productCategoryNum);
		System.out.println(review);
		
		int result = 0;
		//loginMemberId, 매개변수에 넣기
		result = new ProductService().productReview(productNum,productCategoryNum,review);
		
		if (result > 0) {
			System.out.println("댓글 등록이 최종 성공했습니다.");
			request.setAttribute("msg", "댓글이 정상적으로 등록되었습니다.");
			request.setAttribute("location", "/product/category");
		}else {
			System.out.println("댓글 등록이 최종 실패했습니다.");
			request.setAttribute("msg", "댓글 등록에 실패했습니다..");
			request.setAttribute("location", "/product/category");
		}
		
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

}
