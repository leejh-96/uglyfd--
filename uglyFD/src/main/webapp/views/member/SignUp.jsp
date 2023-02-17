<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="${ path }/views/common/header.jsp/"></jsp:include>
<body>
<p>
    <h1 align="center">회원 가입</h1><br><hr><br><br>
</p>
<FORM name="f" method="post" onsubmit="return validate()" >
<table width="50%" height="80" border="1" align="center" cellpadding="5" cellspacing="0" >
    <tr align="center">
        <td colspan="2" align="cener" bgcolor="beige">
            <div style="font-weight: bold; font-size: 18px; padding : 10px 0;">회원 기본 정보
            </div></td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center">
            <div style="font-weight: bold; padding : 10px 0;">아이디 :
            </div></td> 
        <td>&nbsp<input type="text" name="my_id" id="my_id" size="12" maxlength="12">
            <input type="submit" name="overlap" value="중복확인" style="width:70px; height: 30px; background-color: beige; border: 1;" onclick="return check()">
            <p>&nbsp4~12자의 영문 대소문자와 숫자로만 입력</p></td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">비밀번호 :</div></td>
        <td>&nbsp<input type="password" id="my_pwd" name="my_pwd" size="12" maxlength="12">
            <p>&nbsp4~12자의 영문 대소문자와 숫자로만 입력</p></td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">비밀번호 확인 :</div></td>
        <td>&nbsp<input type="password" id="my_pwd2" name="my_pwd2" size="12" maxlength="12"></td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">메일주소 :</div></td>
        <td>&nbsp<input type="text" name="my_mail" id="my_mail" size="30" maxlength="30">
           <p>&nbspex) uglyfd@naver.com</p></td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">이름 :</div></td>
        <td>&nbsp<input type="text" name="my_name" id="my_name" size="10" maxlength="10"></td>
    </tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">생년월일 :</div></td>
        <td>&nbsp
            <select id="year" name="year">
        <option>1950</option>
        <option>1951</option>
        <option>1952</option>
        <option>1953</option>
        <option>1954</option>
        <option>1955</option>
        <option>1956</option>
        <option>1957</option>
        <option>1958</option>
        <option>1959</option>
        <option>1960</option>
        <option>1961</option>
        <option>1962</option>
        <option>1963</option>
        <option>1964</option>
        <option>1965</option>
        <option>1966</option>
        <option>1967</option>
        <option>1968</option>
        <option>1969</option>
        <option>1970</option>
        <option>1971</option>
        <option>1972</option>
        <option>1973</option>
        <option>1974</option>
        <option>1975</option>
        <option>1976</option>
        <option>1977</option>
        <option>1978</option>
        <option>1979</option>
        <option>1980</option>
        <option>1981</option>
        <option>1982</option>
        <option>1983</option>
        <option>1984</option>
        <option>1985</option>
        <option>1986</option>
        <option>1987</option>
        <option>1988</option>
        <option>1989</option>
        <option>1990</option>
        <option>1991</option>
        <option>1992</option>
        <option>1993</option>
        <option>1994</option>
        <option>1995</option>
        <option>1996</option>
        <option>1997</option>
        <option>1998</option>
        <option>1999</option>
        <option>2001</option>
        <option>2002</option>
        <option>2003</option>
        <option>2004</option>
        <option>2005</option>
        <option>2006</option>
        <option>2007</option>
        <option>2008</option>
        <option>2009</option>
        <option>2010</option>
        <option>2011</option>
        <option>2012</option>
        <option>2013</option>
        <option>2014</option>
        <option>2015</option>
        <option>2016</option>
        <option>2017</option>
        <option>2018</option>
        <option>2019</option>
        <option>2020</option>
        <option>2021</option>
        <option>2022</option>
    </select>년&nbsp
            <select name="month" id="month">
            <option value="1" >1</option>
            <option value="2">2</option>
                <option value="3" >3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            </select>
            월&nbsp<select name="day" id="day">
            <option value="1" >1</option>
            <option value="2">2</option>
                <option value="3" >3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
                <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
                <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
            </select>일</td>
            
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">성별 :</div></td>
        <td>&nbsp<input type="radio" name="gender" id="gender" size="10" value="M" > 남자 
            <input type="radio" name="gender" id="gender" size="10" value="W" > 여자</td>
    </tr>
    <tr>
        <td bgcolor="beige" align="center"><div style="font-weight: bold; padding : 10px 0;">전화번호 :</div></td>
        <td>&nbsp<input type="text" name="phone" id="phone" size="20" maxlength="30">
            <p>&nbspex) 010-0000-0000</p></td>
        </td>
    </tr>
</table>
<br><br>
<p align="center">
    <input type="submit" name="submit" value="회원 가입" style="width: 100px; height: 35px;" onclick="return validate();" >
    <input type="reset" value="다시 입력" style="width: 100px; height: 35px;">
</p>

<br><br>
</FORM>

</body>

<jsp:include page="${ path }/views/common/footer.jsp/"></jsp:include>