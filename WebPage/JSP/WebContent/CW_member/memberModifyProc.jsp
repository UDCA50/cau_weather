<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cw.member.MemberDao" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="vo" class="cw.member.MemberVo"/>
<jsp:setProperty property="*" name="vo"/>
<%
 int rst = 0;
 MemberDao dao = new MemberDao();
 rst = dao.updateMember(vo);
%>
<%if(rst>0){%>
<script type="text/javascript">
alert("정보 수정 완료");
location.href="/CW/CW_loginView/loginIndex.jsp";
</script>
<%}else{%>
<script type="text/javascript">
alert("정보 수정 실패");
history.go(-1);
</script>
<%}%>
