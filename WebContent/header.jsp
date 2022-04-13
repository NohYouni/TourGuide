<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/commonCss.css">
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/modal.css">

<header>
 
        <div id="" class="">
            <ul class="inlineUl rigthUl">
            	<c:choose>
            		<c:when test="${stsCode == 1}">
            			<li><a href="../mypage">마이페이지</a></li>
            			<li><a href="">로그아웃</a></li>
            		</c:when>
            		<c:when test="${stsCode == 0}">
            			<li><a href="../admins/page">관리자페이지</a></li>
            			<li><a href="../logOut">로그아웃</a></li>
            		</c:when>
            		<c:otherwise>
            			<li><a href="../sign/login.jsp">로그인</a></li>
            			<li><a href="../sign/singUp.jsp">회원가입</a></li>
            		</c:otherwise>
            	</c:choose>
            	
            </ul>
        </div>
        <div id="" class="siteName">
            <a href="../index.jsp">어쩌다 여행</a>
        </div>
    </header>
