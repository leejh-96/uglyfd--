<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세페이지</title>
<link rel="stylesheet" href="${path }/resources/css/uglyFD-components/uglyFD-figure,section.css">
<link rel="stylesheet" href="${path }/resources/css/uglyFD-components/uglyFD-recycle.css">
<link rel="stylesheet" href="${path }/views/admin/product_css/product_detail_page.css">
<link rel="stylesheet" href="${path }/resources/css/common_css/uglyFD-main.css">
</head>
<body>
	
	<jsp:include page="/views/common/header.jsp" />
	
	<div id="productdetail-wrap">
        <div id="productdetail-wrap-div1"></div>
        <div id="productdetail-wrap-div2">
			<div class="recycle-div2"></div>
  			
			<form action="">
  			<div class="text-center">
			  <img src="${path }/resources/upload/product/${productFile.renamedFileName}" width="700px" height="200px" class="rounded" alt="...">
			  <div class="recycle-div2"></div>
			</div>
			 <table class="table">
                    <thead>
                        <tr>
                            <th scope="row">상품이름</th>
                            <th scope="row">${product.productName }</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">가격</th>
                            <th>${product.productPrice }</th>
                        </tr>
                        <tr>
                            <th scope="row">상품내용</th>
                            <th colspan="2">${product.productDetail }</th>
                        </tr>
                        <tr>
                            <th scope="row">할인율</th>
                            <th>${product.discount }%</th>
                        </tr>
                        <tr>
                            <th scope="row">현재재고</th>
                            <th>5kg ${product.productAmount }Box</th>
                        </tr>
                    </tbody>
                </table>
				
					<c:if test="${product.productAmount == 0 }">
						<h2>현재 주문가능한 수량이 없습니다. 다음에 다시 이용해주세요.</h2>
					</c:if>
					<c:if test="${product.productAmount != 0 }">
						<label for="amount">수량 : 
	            			<input type="number" name="amount" id="amount" value="0" min="0" max="${product.productAmount }" step="1">Box
						</label>
					</c:if>
					<c:if test="${product.productAmount > 0 }">
	                    <button type="button" class="btn find-btn1">주문하기</button>
	                    <button type="button" class="btn find-btn1">장바구니</button>
	                </c:if>
				</form>
				<form action="${path }/review/update" method="post">
					<table class="table">
	                    <tbody>
	                        <tr>
	                            <th scope="row" colspan="2"></th>
	                            <td>
	                            	<input type="hidden" name="productCategoryNum" value="${product.productCategoryNum }">
	                            	<input type="hidden" name="productNum" value="${product.productNum }">
	                            	<input type="hidden" name="loginMemberId" value="${member.memberId}">
		                            <input type="text" placeholder="리뷰를 달아주세요^_^" size="60px" name="review">
		                            <button type="submit" class="btn find-btn1">등록</button>
	                            </td>
	                            <td></td>
	                        </tr>
	                    </tbody>
	                </table>
				</form>
				<c:if test="${not empty product.review }">
					<table class="table">
		                <tbody>
		                	<c:forEach var="pr" items="${product.review }">
		                		<tr>
		                			<th>${pr.memberId }</th>
		                			<th>${pr.memberId }</th>
		                        	<th>${pr.content }</th>
		                        	<th>${pr.createDate }</th>
		                        	<th>${pr.modifyDate }</th>
		                    	</tr>
		                    </c:forEach>
		                </tbody>
	            	</table>
<!-- 	            	<div id="pagebar"> -->
<%-- 	                <button class="btn inoutbtn" onclick="location.href='${path}/product/detail?page=1'"><<</button> --%>
<%-- 	                <button class="btn inoutbtn" onclick="location.href='${path}/product/detail?page=${pageInfo.prevPage }'"><</button> --%>
<%-- 	            <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" varStatus="status"> --%>
<%-- 	            	<c:choose> --%>
<%-- 	            		<c:when test="${status.current == pageInfo.currentPage }"> --%>
<%-- 			                <button class="btn inoutbtn" disabled>${status.current }</button> --%>
<%-- 		                </c:when> --%>
<%-- 		                <c:otherwise> --%>
<%-- 			                <button class="btn inoutbtn" onclick="location.href='${path}/product/detail?page=${status.current }'">${status.current }</button> --%>
<%-- 						</c:otherwise>			                 --%>
<%-- 	                </c:choose> --%>
<%-- 				</c:forEach> --%>
<%-- 	                <button class="btn inoutbtn" onclick="location.href='${path}/product/detail?page=${pageInfo.nextPage}'">></button> --%>
<%-- 	                <button class="btn inoutbtn" onclick="location.href='${path}/product/detail?page=${pageInfo.maxPage}'">>></button> --%>
<!-- 	            </div> -->
				</c:if>
			</div>
        <div id="productdetail-wrap-div3"></div>
    </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<jsp:include page="/views/common/footer.jsp" />
	
</body>
</html>