<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="cw.member.MemberDao"%>
<%@ page import= "cw.log.LogDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
<%
String id = (String)session.getAttribute("loginId");
MemberDao mdao = new MemberDao();
LogDao ldao = new LogDao();
String logId = id;
String logType = "logout";
ldao.insertLog(logId, logType);
 session.invalidate();
%>
location.href="/CW/index.jsp";
//-->
</script>