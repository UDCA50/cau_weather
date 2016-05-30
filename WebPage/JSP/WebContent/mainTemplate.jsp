<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String mainTop = (String) request.getAttribute("mainTop");
	String mainCenter = (String) request.getAttribute("mainCenter");
	String mainBottom = (String) request.getAttribute("mainBottom");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01

 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Campus Weather</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td height="172px"><jsp:include page="<%=mainTop %>" /></td>
		</tr>
		<tr>
			<td><jsp:include page="<%=mainCenter %>" /></td>
		</tr>
		<tr>
			<td><jsp:include page="<%=mainBottom %>" /></td>
		</tr>
	</table>
</body>
</html>
