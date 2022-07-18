<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문 완료</title>
		<style type="text/css">
			section { margin-top:30px;}		
		</style>
	</head>
	<body>
		<div id="wrap">
			<!-- top  -->			
			<c:import url="/WEB-INF/views/layout/top.jsp"></c:import>
	
			<section>
				주문 완료! <br>
				주문번호 : ${ordNo }
			</section>
		
			<!-- bottom -->			
			<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
	</div>
	</body>
</html>