<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>카테고리별 상품 조회</title>
	</head>
	<body>
		<div id="wrap">
    	
    	<!-- 이 부분 TOP으로 이동 -->
    	<!-- TOP 포함 -->    
    	<%-- <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/> --%>
    	 <c:import url="/WEB-INF/views/layout/top.jsp" />
	
		<h3>카테고리별 상품 조회</h3><br>
			<table border="1" width="800">
			<tr><th>상품번호</th><th>상품명</th><th>가격</th>
			<th>제조사</th><th>재고</th>
			<th>사진</th><th></th></tr>
		
		<c:forEach items="${prdList }" var="prd">
		<tr>
			<td><a href="<c:url value='/product/productDetailView/${prd.prdNo }'/>">${prd.prdNo }</a></td>
			<td>${prd.prdName }</td>
			<td>${prd.prdPrice }</td>
			<td>${prd.prdCompany }</td>
			<td>${prd.prdStock }</td>
			<td><img src="<c:url value='/images/${prd.prdImg}'/>" width="30" height="20"></td>
		</tr>
		</c:forEach>	
		<tr></tr>	
		</table><br>
		
		<a href="<c:url value='/'/>">메인화면으로 이동</a><br><br><!-- 같은 표현 -->
	
	
	 <!-- 이 부분 BOTTOM으로 이동 -->
            <!-- BOTTOM 포함 -->
          	<%--  <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true"/> --%>
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
	</body>
</html>