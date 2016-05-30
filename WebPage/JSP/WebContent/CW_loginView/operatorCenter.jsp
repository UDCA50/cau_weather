<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
	<%@ page import = "cw.buildings.*" %>
<%@ page import = "cw.classroom.*" %>
<%@page import = "cw.member.*" %>
<%@page import = "cw.message.*" %>
<%
	BuildingDao bdao = new BuildingDao();
	ArrayList<BuildingVo> blist = new ArrayList<BuildingVo>();
	blist = bdao.buildingList();
	
	ClassroomDao cdao = new ClassroomDao();
	ArrayList<ClassroomVo> clist = new ArrayList<ClassroomVo>();

%>
<%	String loginId = (String)session.getAttribute("loginId");
		MessageDao msgdao = new MessageDao();
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();

		String writerId = null;	
		MemberDao mdao = new MemberDao();
			
	%>	
<!--start wrapper-->
<section class="wrapper">
	<!--start info service-->
	<section class="info_service">
		<div class="container">
			<div class="row sub_content wow fadeIn">
				<div class="col-md-3 col-sm-6">
					<div class="serviceBox_2 green">
						<div class="service-icon">
							<i class="fa fa-cloud"></i>
						</div>
						<div class="service-content">
							<h3>Weather Information</h3>
							<p>건물 강의실의 온도와 습도를 알 수 있습니다.</p>
							<div class="read">
								<a href="/CW/CW_weather/weatherIndex.jsp?b=208&c=101">Read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="serviceBox_2 purple">
						<div class="service-icon">
							<i class="fa fa-comments"></i>
						</div>
						<div class="service-content">
							<h3>My Messages (Alarm)</h3>
							<p>메세지를 관리할 수 있습니다.</p>
							<div class="read">
								<a href="/CW/CW_message/msgOperator.jsp">Read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="serviceBox_2 red">
						<div class="service-icon">
							<i class="fa fa-upload"></i>
						</div>
						<div class="service-content">
							<h3>Add Request</h3>
							<p>날씨정보장소의 추가를 요청합니다.</p>
							<div class="read">
								<a href="/CW/CW_message/msgTemplate.jsp?buttonOrder=1">Read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="serviceBox_2 blue">
						<div class="service-icon">
							<i class="fa fa-child"></i>
						</div>
						<div class="service-content">
							<h3>Change Info.</h3>
							<p>나의 정보를 확인, 수정할 수 있습니다.</p>
							<div class="read">
								<a href="/CW/CW_member/memberModify.jsp">Read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--end info service-->

	<section>
		<div class="container">
			<div class="row sub_content">
				<div class="col-md-4 wow fadeInLeft">
					<div class="dividerHeading">
						<h4>
							<span>Recent Messages</span>
						</h4>
					</div>
					<div class="widget widget_tab">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#Popular" data-toggle="tab">교직원</a></li>
							<li class=""><a href="#Recent" data-toggle="tab">관리자</a></li>
							<li class="last-tab"><a href="#Recent-Comment"
								data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
						</ul>

						<div class="tab-content clearfix">
							<div class="tab-pane fade active in" id="Popular">
								<p>사용자로부터 받은 최근 메세지를 <br> 날짜 내림차순으로 표기합니다.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageListOper(21, loginId); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#"> <%=msgvo.getMsg_title() %></a></li>
									<%} %>
								</ul>
							</div>
							<div class="tab-pane fade" id="Recent">
								<p>교직원으부터 받은 최근 메세지를 <br> 날짜 내림차순으로 표기합니다.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageListOper(22, loginId); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#">  <%=msgvo.getMsg_title() %></a></li>
									<%} %>
								</ul>
							</div>
							<div class="tab-pane fade" id="Recent-Comment">
								<p>전체 받은 최근 메세지를 <br>날짜 내림차순으로 표기합니다.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageListOper(20, loginId); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#">  <%=msgvo.getMsg_title() %></a></li>
									<%} %>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 wow fadeInUp">
					<div class="dividerHeading">
						<h4>
							<span>CAU Buildings</span>
						</h4>
					</div>
					<div id="accordion" class="panel-group accordion">
						<!-- Accordians -->
						<%
							int i=1;
							for(BuildingVo bvo :blist){
								String divName = "collapse"+i;
								clist = cdao.classroomList(bvo.getB_num());%>
						<div class="panel panel-default">

							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"	href="#<%=divName%>"> <%=bvo.getB_name() %></a>
								</h4>
							</div>
							<div class="panel-collapse collapse" id="<%=divName%>">
								<%for(ClassroomVo cvo :clist){ %>
								<div class="panel-body"><%=cvo.getC_name() %></div>
								<%}%>
							</div>
							
						</div>
						<%i++;
							} %>
					</div>
				</div>

				<div class="col-md-4 wow fadeInRight">
					<div class="dividerHeading">
						<h4>
							<span>Current Weather</span>
						</h4>
					</div>
					<div class="embed-responsive embed-responsive-4by3"><img src="/CW/images/mainImg.png" width="250px" height="280px"></div>
				</div>
			</div>
		</div>
	</section>

</section>
<!--end wrapper-->