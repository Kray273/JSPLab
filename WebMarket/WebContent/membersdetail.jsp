<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "DB.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>MemberDetail_M</title>

</head>
<body>
<%@ include file = "header.jsp" %>
<%
	mname = (String)session.getAttribute("mname");
	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
%> 
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">MemberDetail for manager</h1>
</div>	
</div>

<%	
	String no = request.getParameter("no");
	DTOmember list = DAOmember.Detail(no);
			
	String img = list.getIname();
	String imgstr = "";
	if(img != null){
		imgstr ="images/" + img;
	}	
%>
<div class="container">
	<main>
		<div class="col-md-7 col-lg-8"> 
		<div class="card col-15" >
		<div class="card-body">
			<h5 class="card-title">No. <%=list.getMno()%> :  <%=list.getMname()%></h5>
			<hr class="my-2">
			<h6 class="card-subtitle mb-2 text-muted">Password  : <%=list.getMpass()%></h6>
			<h6 class="card-subtitle mb-2 text-muted">Tel       : <%=list.getMtel()%></h6>
			<h6 class="card-subtitle mb-2 text-muted">Email     : <%=list.getMemail()%></h6>
			<h6 class="card-subtitle mb-2 text-muted">Gender    :<%=list.getMgender()%></h6>
			<hr class="my-2">
			<p class="card-text"><img src="<%=imgstr%>"></p>
			<hr class="my-2">
			<p class="card-text">
			<div id="map" style="width:100%;height:350px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=42860fa80259451dc82f6c30fbce9b2d&libraries=services"></script>
				<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('<%=list.getMaddr()%>', function(result, status) {
				
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
				
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });
				
				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:2px 0;">회원주소</div>'
				        });
				        infowindow.open(map, marker);
				
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});    
				</script>
				<p style="margin-top:-12px">
				    <em class="link">
				        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
				            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
				        </a>
				    </em>
				</p>
			</p>	
			<hr class="my-2">
			<p class="card-text">Level : <%=list.getMlevel()%></p>
			<p class="card-text text-end">DATE : <%=list.getMdate()%></p> 
		</div>
		</div>
		<div class="text-end">
		<a href="membersupdatepage.jsp?no=<%=list.getMno()%>" class="card-link text-end">수정</a>
		</div>
		</div>
		
	</main>
</div>

 <br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="members.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>


<%@ include file = "footer.jsp" %>	

</body>
</html>