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
							<p>�ǹ� ���ǽ��� �µ��� ������ �� �� �ֽ��ϴ�.</p>
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
							<h3>Messages (Alarm)</h3>
							<p>�޼����� ������ Ȯ�� �� �� �ֽ��ϴ�.</p>
							<div class="read">
								<a href="/CW/CW_message/msgAdmin.jsp">Read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="serviceBox_2 red">
						<div class="service-icon">
							<i class="fa fa-bug"></i>
						</div>
						<div class="service-content">
							<h3>Error Report</h3>
							<p>����/���� �α׸� Ȯ�� �� �� �ֽ��ϴ�.</p>
							<div class="read">
								<a href="/CW/CW_message/logIndex.jsp">Read more</a>
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
							<h3>Member Admin</h3>
							<p>Campus Weather�� ȸ���� �����մϴ�.</p>
							<div class="read">
								<a href="/CW/CW_memberAdmin/memberListView.jsp">Read more</a>
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
							<li class="active"><a href="#Popular" data-toggle="tab">������ �ۼ�</a></li>
							<li class=""><a href="#Recent" data-toggle="tab">������ �ۼ�</a></li>
							<li class="last-tab"><a href="#Recent-Comment" 	data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
						</ul>

						<div class="tab-content clearfix">
							<div class="tab-pane fade active in" id="Popular">
							
								<p>��� �������� �߼��� ��� �޼����� ǥ���մϴ�.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageList(1); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#"> <%=msgvo.getMsg_title() %></a></li>
									<%} %>
								</ul>
							</div>
							<div class="tab-pane fade" id="Recent">
								<p>���� �����ڰ� �߼��� ��� �޼����� ǥ���մϴ�.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageList(2); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#"> <%=msgvo.getMsg_title() %></a></li>
								<%} %>
								</ul>
							</div>
							<div class="tab-pane fade" id="Recent-Comment">
								<p>����ڰ� �߼��� ��� �޼����� ǥ���մϴ�.</p>
								<ul class="list_style circle">
								<% list = msgdao.messageList(0); %>
									<%for(MessageVo msgvo : list){ %>
									<li><a href="#"> <%=msgvo.getMsg_title() %></a></li>
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
							<span>WeatherNews</span>
						</h4>
					</div>
					<div><img src="/CW/images/mainImg.png" width="250px" height="280px">				</div>
				</div>
			</div>
		</div>
	</section>

</section>
<!--end wrapper-->