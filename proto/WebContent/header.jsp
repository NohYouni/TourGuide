<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/commonCss.css">
</head>

<body>
<header>
        <div id="" class="">
            <ul class="inlineUl rigthUl">
              <li>로그아웃</li>
              <li><a href="${pageContext.request.contextPath}/mypage/mypage.jsp">마이페이지</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/adminPage.jsp">관리자페이지</a></li>
            </ul>
        </div>
        <div id="" class="siteName">
            <a id=>어쩌다 여행</a>
        </div>
    </header>
    <nav>
        <ul class="inlineUl">
        <li><a href="" id="a_header_fv">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
</body>
</html>