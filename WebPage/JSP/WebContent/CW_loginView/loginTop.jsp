<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import ="cw.member.*" %>
<%@ page import = "cw.buildings.*" %>
<%@ page import = "cw.classroom.*" %>
<%
	String loginId = (String)session.getAttribute("loginId");
	MemberDao mdao = new MemberDao();	
	
	MemberVo mvo = mdao.selectMember(loginId);
	
	int memberType = mvo.getM_type();
	
	BuildingDao bdao = new BuildingDao();
	ArrayList<BuildingVo> blist = new ArrayList<BuildingVo>();
	blist = bdao.buildingList();
	
	ClassroomDao cdao = new ClassroomDao();
	ArrayList<ClassroomVo> clist = new ArrayList<ClassroomVo>();
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">

<!-- CSS FILES -->
<link rel="stylesheet" href="/CW/css/animate.css" />
<link rel="stylesheet" href="/CW/css/bootstrap.min.css" />
<link rel="stylesheet" href="/CW/css/font-awesome.css" />
<link rel="stylesheet" href="/CW/css/fractionslider.css" />
<link rel="stylesheet" href="/CW/css/magnified.css" />
<link rel="stylesheet" href="/CW/css/style-fraction.css" />
<link rel="stylesheet" href="/CW/css/style.css">
<link rel="stylesheet" href="/CW/css/switcher.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/CW/css/layout/wide.css" data-name="layout">




<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<title>MENU</title>
</head>
<body class="home">
	<!--Start Header-->
	<header id="header">
	<div id="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 top-info hidden-xs">
					<span><i class="fa fa-lock"></i>
					<%if(memberType==0){ %>일반회원으로 접속중<%}
					else if(memberType==1){ %> 교직원으로 접속중 <%}
					else if(memberType==2){ %> 공사관계자로 접속중 <%}
					else{%>관리자로 접속중<%} %>
					</span>
					<span>	<a href="/CW/CW_member/memberLogoutProc.jsp">
								<i class="fa fa-rocket"></i>로그아웃</a></span>
				</div>
				<div class="col-sm-4 top-info">
					<ul>
						<li><a href="https://twitter.com/Campus_weather" class="my-tweet"><i class="fa fa-twitter"></i></a></li>
						<li><a href="facebook.com/campusweather" class="my-facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="" class="my-skype"><i class="fa fa-skype"></i></a></li>
						<li><a href="https://www.instagram.com/campus_weather/" class="my-instagram"><i class="fa fa-instagram"></i></a></li>
						<li><a href="" class="my-google"><i	class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="logo-bar">
		<div class="container">
			<div class="row">
				<!-- Logo / Mobile Menu -->
				<div class="col-lg-3 col-sm-3 ">
					<div>
						<a href="/CW/CW_loginView/loginIndex.jsp"><img alt="logo" src="/CW/images/n_images/logo.jpg" /></a>
					</div>
				</div>

<!--================================================== -->
				<div class="col-lg-9 col-sm-9">
					<div class="navbar navbar-default navbar-static-top"
						role="navigation">
						<!--  <div class="container">-->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Messages</a>
									<ul class="dropdown-menu">
										<%if(memberType==3){ %>
											<li><a href="/CW/CW_message/msgAdmin.jsp">Message (All)</a></li>
											<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=0">Message (사용자)</a></li>
											<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=1">Message (교직원)</a></li>
											<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=2">Message (공사관리자)</a></li>
										<%}else if(memberType==0){ %>
											<li><a href="/CW/CW_message/msgNormal.jsp">Message (All)</a></li>
											<li><a href="/CW/CW_message/msgNormal.jsp?menuOrder=1">Message (교직원)</a></li>
											<li><a href="/CW/CW_message/msgNormal.jsp?menuOrder=2">Message (공사관리자)</a></li>
										<%}else if(memberType==1){ %>
											<li><a href="/CW/CW_message/msgManager.jsp?menuOeder=10">Message (All)</a></li>
											<li><a href="/CW/CW_message/msgManager.jsp?menuOrder=0">Message (사용자)</a></li>
											<li><a href="/CW/CW_message/msgManager.jsp?menuOrder=2">Message (공사관리자)</a></li>
										<%} else{%>
											<li><a href="/CW/CW_message/msgOperator.jsp">Message (All)</a></li>
											<li><a href="/CW/CW_message/msgOperator.jsp?menuOrder=0">Message (사용자)</a></li>
											<li><a href="/CW/CW_message/msgOperator.jsp?menuOrder=1">Message (교직원)</a></li>
										<% }%>
									</ul></li>

								<li><a href="#">Weather Info</a>
									<ul class="dropdown-menu">
									<%for(BuildingVo bvo :blist){ 
										clist = cdao.classroomList(bvo.getB_num());%>
										<li><a href="#"><%=bvo.getB_name() %></a>
											<ul class="dropdown-menu">
												<%for(ClassroomVo cvo : clist){ %>
												<li><a href="/CW/CW_weather/weatherIndex.jsp?b=<%=bvo.getB_num()%>&c=<%=cvo.getC_num()%>"><%=cvo.getC_name() %></a></li>
												<%} %>
											</ul> 
										</li>
										<%} %>
									</ul>
								</li>
								<%if(memberType!=0){ %>
								<li><a href="#">Error Report</a>
									<ul class="dropdown-menu">
										<li><a href="/CW/CW_log/logIndex.jsp">Report Log</a></li>
									</ul>
								</li>
								<%} %>
								<li><a href="#">Contact</a>
									<ul class="dropdown-menu">
										<li><a href="#">About</a></li>
										<li><a href="#">Help</a></li>
										<li><a href="#">User Menual</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!--End Header-->