<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%@ page import ="cw.member.MemberDao, cw.member.MemberVo" %>
<%
	request.setCharacterEncoding("euc-kr");

	request.setAttribute("mainTop", "/CW_loginView/loginTop.jsp");
	request.setAttribute("mainCenter", "/CW_member/memberModifyCenter.jsp");	
	request.setAttribute("mainBottom", "/mainBottom.jsp");
	
%>
<jsp:forward page="../mainTemplate.jsp" />

