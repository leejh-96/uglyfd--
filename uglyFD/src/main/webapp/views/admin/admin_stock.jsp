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
<title>관리자 페이지</title>
<link rel="stylesheet" href="${path }/resources/css/common_css/uglyFD-main.css">
<link rel="stylesheet" href="${path }/resources/css/uglyFD-components/uglyFD-recycle.css">
<link rel="stylesheet" href="${path }/views/admin/admin_css/admin_page.css">
</head>
<body>
	<jsp:include page="/views/common/header.jsp" />
	
	<div id="admin-wrap">
        <div id="wrap-div1">
            <div><a href="${path }/views/admin/admin_members.jsp" class="admin-sidenav">회원관리</a></div>
            <div><a href="${path }/views/admin/admin_product.jsp" class="admin-sidenav">상품등록</a></div>
            <div><a href="${path }/views/admin/admin_product_detail.jsp" class="admin-sidenav">재고관리</a></div>
            <div><a href="${path }/productinout" class="admin-sidenav">입/출고조회</a></div>
        </div>
       <div id="wrap-div2">
       
       		<div class="card card-margin">
                 <img id="stock-img" src="${path}/resources/upload/product/${productfile.renamedFileName}"  width="300px" height="150px" >
            </div>
		<h1>재고등록</h1>
<%--       <img id="stock-img" src="${path}/resources/upload/product/${productfile.renamedFileName}"> --%>
			<form action="${path }/productstockupdate" method="POST" >
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row" colspan="2">상품종류</th>
                            <c:if test="${product.productCategoryNum == 1 }">
	                            <td>
	                                과일
	                            </td>
                            </c:if>
                            <c:if test="${product.productCategoryNum == 2 }">
	                            <td>
	                                채소
	                            </td>
                            </c:if>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">상품명</th>
                            <td>${product.productName }</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">판매가</th>
                            <td>${product.productPrice }</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">상품내용</th>
                            <td>${product.productDetail }</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">할인율</th>
                            <td>${product.discount }%</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">등록날짜</th>
                            <td>${product.createDate}</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">수정날짜</th>
                            <td>${product.modifyDate }</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">현재상품수량</th>
                            <td>${product.productAmount }</td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">입/출고 등록</th>
                            <td>
                            	<label for="in"><input type="radio" id="in" name="inout" value="입고"checked>입고</label>
                                <label for="out"><input type="radio" id="out" name="inout" value="출고">출고</label>
	                        </td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">등록재고수량</th>
                            <td>
                            	<input type="text" size="5px" name="stock">box
	                        </td>
                        </tr>
                    </tbody>
                </table>
                <div class="find-btn">
                	<input type="hidden" name="productCategoryNum" value="${product.productCategoryNum}">
                	<input type="hidden" name="productNum" value="${product.productNum}">
                    <button type="submit" class="btn find-btn1">등록하기</button>
                    <button type="reset" class="btn find-btn1">취소</button>
                </div>
            </form>
				</div>
		        <div id="wrap-div3"></div>
		    </div>
            
            <jsp:include page="/views/common/footer.jsp" />
	
	<script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>
	
</body>
</html>