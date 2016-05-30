<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	    <%@ page import="cw.member.MemberDao"%>
<%@ page import= "cw.log.LogDao" %>
<%	request.setCharacterEncoding("euc-kr");	 %>
<jsp:useBean id="msgdao" class="cw.message.MessageDao" />
<jsp:useBean id="msgvo" class="cw.message.MessageVo" />
<jsp:setProperty property="*" name="msgvo" />

<%
	int memberType = Integer.parseInt((String)request.getParameter("msg_writer_type"));

	int rst = 0;
	
	rst = msgdao.insertMessage(msgvo);
	if (rst > 0) {
%>

<%
String id = (String)session.getAttribute("loginId");
MemberDao mdao = new MemberDao();
LogDao ldao = new LogDao();
String logId = id;
String logType =null;

%>
<script type="text/javascript">
	alert("메세지 전송 성공");
<% switch(memberType){
case 0:
	logType = "msgWriteByUser";
	ldao.insertLog(logId, logType);
	%>	
	location.href="/CW/CW_message/msgNormal.jsp";
	<%
	break;
	case 1:
		logType = "msgWriteByManager";
	ldao.insertLog(logId, logType);%>
	location.href="/CW/CW_message/msgManager.jsp";
	<%break;
	case 2:
		logType = "msgWriteByOperator";
	ldao.insertLog(logId, logType);%>
	location.href="/CW/CW_message/msgOperator.jsp";
	<%break;
	case 3:
		logType = "msgWriteByAdmin";
	ldao.insertLog(logId, logType);%>
	location.href="/CW/CW_message/msgAdmin.jsp";
	<%
	break;}%>
	
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("메세지 전송 실패");
	history.go(-1);
</script>
<%
	}
%>
