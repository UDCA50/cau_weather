<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String loginId = (String)session.getAttribute("loginId");
	if(loginId==null){
		request.setAttribute("mainTop", "/mainTop.jsp");
	}else{
		request.setAttribute("mainTop", "/mainTopLogged.jsp");
	}

 	request.setAttribute("mainCenter", "/mainCenter.jsp");
	request.setAttribute("mainBottom", "/mainBottom.jsp");
%>
<jsp:forward page="/mainTemplate.jsp" />
