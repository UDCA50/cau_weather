<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");

	request.setAttribute("mainTop", "/mainTop.jsp");
	request.setAttribute("mainCenter", "/CW_member/memberJoinSelectCenter.jsp");	
	request.setAttribute("mainBottom", "/mainBottom.jsp");
	
%>
<jsp:forward page="../mainTemplate.jsp" />

