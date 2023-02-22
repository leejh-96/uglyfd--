<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/views/mypage/mycart.css">
<link rel="stylesheet" href="${path }/resources/css/common_css/uglyFD-main.css">
<!-- uglyFD-figure / section 부분 script -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<fmt:formatNumber type="number" value="${resultList.totAmt}"/>
</head>
<body>
<jsp:include page="/views/common/header.jsp" />

 <section class="cart">
            <!-- <div class="cart__information">
                <ul>
                    <li>장바구니 상품은 최대 30일간 저장됩니다.</li>
                    <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                    <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
                </ul>
            </div> -->

            <br>
            <div class="c_cr">
                <div class="c_cr1">
                    <img class="img1"  src="${path }/resources/images/mycart.png">shopping bag
                </div>
            </div> 
            <br>        

            
            <table class="cart__list">
                <form>
                    <thead>
                        <tr>
                            <td class="td1"><input type="checkbox" id="chkAll" name="chk"></td>
                            <td class="td1" colspan="2">상품정보</td>
                            <td class="td1">수량</td>
                            <td class="td1">상품금액</td>
                            <td class="td1">배송비</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart__list__detail">
                            <td class="td1"><input type="checkbox" onClick="itemSum(this.form)" name="chk" value="30000"  ></td>
                            <td class="td1"><img class="img2" src="${path }/resources/images/food1.jpg"></td>
                            <td class="td1"><a href="#"></a><span class="cart__list__smartstore" name="fruit">당근</span>
                                <p>너무 신선해서 당근이 움직일 것 같아요!</p>
                            </td>
                            <td  class="td1">
                                <label for="amount">수량 :</label>
                                <input type="number" name="amount" id="amount" value="1" min="0" >
                            </td>
                            <td class="td1"><span class="price">30,000원</span><br>
                            </td>
                            <td class="td1">2500원</td>
                        </tr>
                        <tr class="cart__list__detail">
                            <td class="td1" style="width: 2%;"><input type="checkbox" onClick="itemSum(this.form)" name="chk"  value="30000" "></td>
                            <td class="td1"style="width: 13%;">
                                <img class="img2" src="${path }/resources/images/food2.jpg">
                            </td>
                            <td class="td1" style="width: 27%;"><a href="#"></a><span class="cart__list__smartstore"  name="fruit">무우</span>
                                <p>무가 생동감이 넘쳐 가출을 감행해요!</p>
                            </td>
                            <td  class="td1" style="width: 27%;">
                            <label for="amount" >수량 :</label>
                            <input type="number" name="amount" id="amount" value="1" min="0" >    
                            </td>
                            <td class="td1" style="width: 15%;"><span class="price">40,000원</span><br>
                            </td>
                            <td class="td1" style="width: 15%;">2500원</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td class="td1" colspan="2"><button class="cart__list__optionbtn" id="btnDelete" style="color:black;" >선택상품 삭제</button>
                       <td class="td1" style="padding-left:65%;" colspan="4" >   합계 : <input  name="total_sum" type="text" size="20" readonly ></td>
                            </td> 
                            <td class="td1"></td>
                            <td class="td1"></td>
                            <td class="td1"></td>
                            <td class="td1"></td>
                            <td class="td1"></td>
                        </tr>
                    </tfoot>
                </form>
            </table>


</body> 








            <div class="cart__mainbtns">
                <button class="cart__bigorderbtn left" ><a  href="${path }"  style="color:black;">쇼핑계속하기</a></button> 
                <button class="cart__bigorderbtn right">주문하기</button>
            </div>
        </section>
<script>

/* const chkAll = document.querySelector("#chkAll")
chkAll.addEventListener("change", () => {
	const chkList = document.getElementsByName("chk");
	for (chk of chkList) {
		chk.checked = chkAll.checked;
	}
});
*/

function itemSum(frm)
{
   var sum = 0;
   var count = frm.chk.length;
   for(var i=0; i < count; i++ ){
       if( frm.chk[i].checked == true ){
	    sum += parseInt(frm.chk[i].value);
       }
   }
   frm.total_sum.value = sum;
} 

 $(document).ready(() => {
    $('#btnDelete').on('click', () => {
       if(confirm('정말로 상품을 삭제 하시겠습니까?')) {
          location.replace('${ path }/mycart/delete?no=${ board.no }');
       }
    });
    
 });










		
</script>


<jsp:include page="/views/common/footer.jsp" />
</body>
</html>