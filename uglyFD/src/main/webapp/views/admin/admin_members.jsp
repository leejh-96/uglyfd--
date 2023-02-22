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
<title>회원관리페이지</title>
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
            <div class="recycle-div1"></div>
            <h1>회원관리</h1>
            <div class="recycle-div1"></div>
            <!-- 회원관리-회원 검색을 위한 form -->
            <form action="">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="row" colspan="4">회원정보입력</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" colspan="2">이름</th>
                            <td><input type="text" placeholder="회원이름을 입력해주세요." size="60px"></td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">주민번호</th>
                            <td><input type="text" placeholder="주민번호를 입력해주세요." size="60px"></td>
                        </tr>
                        <tr>
                            <th scope="row" colspan="2">전화번호</th>
                            <td><input type="text" placeholder="전화번호를 입력해주세요." size="60px"></td>
                        </tr>
                    </tbody>
                </table>
                <div class="find-btn">
                    <button type="button" class="btn find-btn1">조회하기</button>
                    <button type="reset" class="btn find-btn1">취소</button>
                </div>
                <div class="recycle-div1"></div>
            </form>
            <!-- 회원관리-회원 검색을 위한 form 끝-->
            <!-- 회원관리-검색한 회원을 출력하는 table -->
            <table class="table">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>이름</th>
                        <th>주민번호</th>
                        <th>전화번호</th>
                        <th>주소</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>1</th>
                        <!-- onclick속성 주기 -->
                        <td><a href="#">ㅇㅇㅇㅇ</a></td>
                        <td>0000000000</td>
                        <td>0000000000</td>
                        <td>경기동두천</td>
                    </tr>
                </tbody>
            </table>
            <!-- 회원관리-검색한 회원을 출력하는 table 끝-->
        </div>
        <div id="wrap-div3"></div>
    </div>
    <jsp:include page="/views/common/footer.jsp" />
	
	<script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>
	
</body>
</html>