<%@page import="java.util.ArrayList"%>
<%@page import="proto.TestVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="/css/commonCss.css">
</head>
<%

	List<TestVO> nameList = new ArrayList<TestVO>();
	for(int i=0; i<13; i++){
		TestVO test1 = new TestVO("test1 str1", "email1@naver.com");
		TestVO test2 = new TestVO("test2 str2", "email2@naver.com");
		TestVO test3 = new TestVO("test3 str3", "email3@naver.com");
		TestVO test4 = new TestVO("test4 str4", "email4@naver.com");
		TestVO test5 = new TestVO("test5 str5", "email5@naver.com");
		nameList.add(test1);
		nameList.add(test2);
		nameList.add(test3);
		nameList.add(test4);
		nameList.add(test5);
	}
	
	session.setAttribute("nameList", nameList);

%>
<style>
.rigthUl{
  float: right;
}
.leftUl{
  float: left;
}
.rect {
  width: 400px;
  height: 400px;
  border: 2px solid black;
  margin: 15px;
}
.srect{
  width: 300px;
  height: 100px;
  border: 2px solid black;
  margin: 20px auto;
}
.main{
	margin: 5px;
}

</style>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="main">
    	<div class="rect leftUl"><a href="eventPage/event.jsp">행사</a><a href="eventPage/dangchum.jsp">행사확인</a></div>  	
        <div class="rect rigthUl">
        	<div class="srect">검색탭</div>
            <div class="srect">이벤트</div>
            <div class="srect">코로나</div>
        </div>
    </div>
    <c:import url="footer.jsp"></c:import>
</body>
</html>