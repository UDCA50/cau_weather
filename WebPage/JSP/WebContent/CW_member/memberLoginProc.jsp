<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="cw.member.MemberDao"%>
<%@ page import= "cw.log.LogDao" %>
<%
     int[] rst;
     MemberDao mdao = new MemberDao();
     request.setCharacterEncoding("euc-kr");
     String id = (String)request.getParameter("m_id");
     String pass = (String)request.getParameter("m_pass");
     rst = mdao.loginCheck(id, pass);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginPro.jsp</title>
</head>
<body>
<%
	LogDao ldao = new LogDao();
	String logId = id;
	String logType = null;
	
	
	if(rst[0] == 2){
	session.setAttribute("loginId", id);
	session.setMaxInactiveInterval(60*60);
	logType = "login";
	ldao.insertLog(logId, logType);
%>
<script type="text/javascript">
	location.href="/CW/CW_loginView/loginIndex.jsp";
</script>
<%

	}else if(rst[0] == 1){ 
	logType = "login fail-password error";
	ldao.insertLog(logId, logType);
	%>
<script type="text/javascript">
alert("비밀번호 틀렸습니다");

history.go(-1);
</script>

<%  }else{
	logType = "login fail-account error";
	ldao.insertLog(logId, logType);
	%>
<script type="text/javascript">
alert("존재하지 않은 계정입니다.");
history.go(-1);
</script>
<%  } %>

</body>
</html>