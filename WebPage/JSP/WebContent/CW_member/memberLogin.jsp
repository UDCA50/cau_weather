<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setAttribute("mainTop", "/mainTop.jsp");
	request.setAttribute("mainCenter", "/CW_member/memberLoginCenter.jsp");	
	request.setAttribute("mainBottom", "/mainBottom.jsp");
	
%>
<jsp:forward page="../mainTemplate.jsp" />

