<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ page import = "cw.log.*" %>
<%	request.setCharacterEncoding("euc-kr");	 %>
<jsp:useBean id="mdao" class="cw.member.MemberDao" />
<jsp:useBean id="mvo" class="cw.member.MemberVo" />
<jsp:setProperty property="*" name="mvo" />
<%
	LogDao ldao = new LogDao();
	int idRst = 0;
	String id = (String)request.getParameter("m_id");
	idRst = mdao.idCheck(id);
	int rst = 0;
	String logType = null;
	if (idRst==0) {
		rst = mdao.insertMember(mvo);
		if(rst > 0){
			logType = "member Join";
			ldao.insertLog(id, logType);
		
			%>
			<script type="text/javascript">
				alert("ȸ������ ����");
				location.href="/CW/CW_loginView/loginIndex.jsp";
			</script>	
	<%}else{
		logType = "member Join fail";
		ldao.insertLog(id, logType);
		%>
		<script type="text/javascript">
			alert("ȸ������ ����");
			history.go(-1);
		</script>
	<%} %>
<%} else {
	logType = "member Join fail - ID duplication";
	ldao.insertLog(id, logType);
	%>
	<script type="text/javascript">
			alert("�̹� �����ϴ� ���̵��Դϴ�.");
			history.go(-1);
	</script>
<%}%>
