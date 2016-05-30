<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- menu order
0 : user
1 : manager
2: operator
3: admin
3: all

 -->

<%
	request.setAttribute("mainTop", "/CW_loginView/loginTop.jsp");
	request.setAttribute("mainBottom", "/mainBottom.jsp");
 	request.setAttribute("mainCenter", "/CW_message/msgAdminCenter.jsp"); 	

	
%>
<jsp:forward page="../mainTemplate.jsp"/>
