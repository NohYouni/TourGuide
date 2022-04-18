<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/commonCss.css">
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/modal.css">
<style>


</style>

<header>
        <div id="test1" class="">
            <ul class="inlineUl rigthUl">
            	<c:choose>
            		<c:when test="${sts == 1}">
            			<li><a class="selected_menu" href="../mypage">마이페이지</a></li>
            			<li><a class="selected_menu" href="/logout">로그아웃</a></li>
            		</c:when>
            		<c:when test="${sts == 0}">
            			<li><a class="selected_menu" href="/admins/page">관리자페이지</a></li>
            			<li><a class="selected_menu" href="/logout">로그아웃</a></li>
            		</c:when>
            		<c:otherwise>
            			<li><a class="selected_menu" href="/login">로그인</a></li>
            			<li><a class="selected_menu" href="/signUp">회원가입</a></li>
            		</c:otherwise>
            	</c:choose>
            	
            </ul>
        </div>
        <div id=""  class="siteName">
            <a class="siteName" href="../index.jsp" id="">*어쩌다 여행*</a>	
        </div>
    </header>
