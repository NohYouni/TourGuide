<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/board.css">
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
        <li><a href="" id="a_header_fv" class="selected_menu">전국의 행사</a></li>
        <li><a href="" id="a_header_ev">이벤트</a></li></ul><hr>
    </nav>
	<section>
	
	<div class="" id="">
		<div id ="div_boardDetail_04">

			<table>
				<tr><td rowspan="5" colspan="2"><img src="/board/noImages.jpg" alt="" /></td><td></td><td></td></tr>
				<tr><td>행사 이름 </td><td>제11회 월드커피리더스포럼</td></tr>
				<tr><td>행사 시기 </td><td>2022.03.14 ~ 2022.03.16</td></tr>
				<tr><td>연 락 처 </td><td>02-6000-6698</td></tr>
				<tr><td>홈페이지  </td><td><a href=\"https://www.wclforum.org/kr/index.asp\" target=\"_blank\" title=\"새창 : 제11회 월드커피리더스포럼\">www.wclforum.org</a></td></tr>
			</table>
			<hr/>
			<table>

				<tr>
					<td></td>
				</tr><tr>
					<td>
					"아시아를 대표하는 커피 전문 컨퍼런스 월드커피리더스포럼은 UN 산하 국제커피기구(International Coffee Organization)가 전세계 최초로 공식 후원하는 국제회의로써 2012년 첫 개최 이후로 글로벌 커피 시장의 지속가능한 성장을 위해 매회 논의가 필요한 이슈를 선정해 세계 최고 커피 전문가들의 인사이트를 공유하며 시장이 직면한 변화를 짚어보고 산업의 미래에 대한 새로운 패러다임을 모색해왔다.<br><br>커피의 높은 품질에 대한 니즈로 인해 스페셜티 커피 시장의 확산, 이에 다른 원가 부담과 커피 가격 상승, 지구 온난화 현상으로 인한 커피 병충해 및 재배 온도 부적절 현상, 커피 생산자와 소비국과의 관계, 팬데믹 이후 커피 시장의 변화와 이에 대응하는 솔루션 등 글로벌 커피 산업의 전반적인 문제점을 극복하기 위해 국내외 초청 연사들은 새로운 가능성을 제시하고 참가자들은 세계 커피 시장의 경향과 도전의 방향을 모색하는 자리를 제공한다."
					</td>
				</tr>
		</table>
		<hr/>
		</div>
		
	</div>
	
	<div class="" id="">
		<div class="" id="" style="margin-bottom: 20px;">
			<button class="btn_tab selected_tab" id="tab_boardDetail_01" onclick="tabSwitch(event);">리뷰</button>
			<button class="btn_tab" id="tab_boardDetail_02" onclick="tabSwitch(event);">주변관광지</button>
		</div>
		<div class="tab_view" id="tab1_boardDetail">
		<!-- 리뷰 보기 -->
		<p>이 곳을 방문하셨다면 리뷰를 남겨 보세요. 		
		<button class="btn_middle btn_primary" style="float: right" onclick="reviewModalOpen(event);">리뷰 쓰기</button>
		</p>
		<hr>
			<c:forEach end="5" begin="1" var="i">
				<table>
				<tr>
				<td class="image" rowspan="4">이미지</td>
				<td>작성자 : 박나연</td>
				<td >작성일시 : 2022-01-24</td>
				
				</tr>
					<tr>
					<td colspan="5">제목 : 너무 재밌어요!!!!</td>
					</tr>
					<tr>
					<td colspan="5">가야 할 때가 언제인가를 분명히 알고 가는 이의 뒷모습은 얼마나 아름다운가. 봄 한 철 격정을 인내한 나의 사랑은 지고 있다. 분분한 낙화. 결별이 이룩하는 축복에 싸여 지금은 가야 할 때 무성한 녹음과 그리고 머지않아 열매 맺는 가을을 향하여 나의 청춘은 꽃답게 죽는다. 헤어지자 섬세한 손길을 흔들며 하롱하롱 꽃잎이 지는 어느 날 나의 사랑, 나의 결별 샘터에 물 고이듯 성숙하는 내 영혼의 슬픈 눈.</td>
					</tr>
				</table>
				<hr />	
			</c:forEach>
			
		</div>
		
		<div class="tab_hidden" id="tab2_boardDetail">
		<!-- 주변 관광지 -->
			<div class="square_list" id="div_boardDetail_03">
				<c:forEach begin="1" end="32">
					<div class="" id="">
						<table id="tb_boardDetail">
						<tr><td><img alt="no image" src="/board/noImages.jpg" id="img_boardList"></td></tr>
						<tr><td>신나는 관광지입니다.</td></tr>
						</table>				
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</section>
	<c:import url="/footer.jsp"></c:import>
	<div id="tothetop" class='tothetop'>▲</div>
	<c:import url="/board/boardModal.jsp"></c:import>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/board/board.js"></script>

</html>