<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="cw.member.MemberDao, cw.member.MemberVo" %>
<%
	String loginId = (String)session.getAttribute("loginId");
	
	
	request.setAttribute("mainTop", "/CW_loginView/loginTop.jsp");
	request.setAttribute("mainBottom", "/mainBottom.jsp");
	
	MemberDao mdao = new MemberDao();	
	MemberVo mvo = mdao.selectMember(loginId);
	
	int memberType = mvo.getM_type();
	switch(memberType){
		/*일반 사용자회원*/
		case 0:
			request.setAttribute("mainCenter", "/CW_loginView/normalCenter.jsp");	
			break;
		case 1:
			/*교직원 회원*/
			request.setAttribute("mainCenter", "/CW_loginView/managerCenter.jsp");	
			break;
		case 2:
			/*공사 관리자회원*/
			request.setAttribute("mainCenter", "/CW_loginView/operatorCenter.jsp");	
			break;
		case 3:
			/*전체 관리자*/
			request.setAttribute("mainCenter", "/CW_loginView/adminCenter.jsp");	
			break;
	}

%>
<jsp:forward page="../mainTemplate.jsp" />

