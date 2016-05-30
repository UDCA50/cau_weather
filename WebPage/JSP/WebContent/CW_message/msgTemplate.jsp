<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- list order
0 : msgList
1 : msgWrite

 -->

<%
	request.setAttribute("mainTop", "/CW_loginView/loginTop.jsp");
	request.setAttribute("mainBottom", "/mainBottom.jsp");
	
	String buttonOrder = (String)request.getParameter("buttonOrder");
		
	if(buttonOrder.equalsIgnoreCase("1")){
		request.setAttribute("mainCenter", "/CW_message/msgWrite.jsp");
	}else if(buttonOrder.equalsIgnoreCase("2")){
		request.setAttribute("mainCenter", "/CW_message/msgModify.jsp");
	}else{
		request.setAttribute("mainCenter", "/CW_message/msgDel.jsp");
	}
	
%>
<jsp:forward page="../mainTemplate.jsp"/>
