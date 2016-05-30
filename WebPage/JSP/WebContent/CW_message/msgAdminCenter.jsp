<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>	
<%@ page import="cw.message.*" %>
<%@ page import="cw.member.*" %>

<%
		MessageDao msgdao = new MessageDao();
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		
		String writerId = null;	
		MemberDao mdao = new MemberDao();

		if((String)request.getParameter("menuOrder")==null){
			list = msgdao.messageList();
		}else{
			String menuOrder = (String)request.getParameter("menuOrder");
			list = msgdao.messageList(Integer.parseInt(menuOrder));
		}
		
%>	
<!--start wrapper-->
<section class="wrapper">
	<section class="content blog">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
					<div class="blog_medium">
						<%for(MessageVo msgvo : list){ %>
						<%MemberVo mvo = mdao.selectMember(msgvo.getMsg_writer()); %>
						<article class="post no_images">
								<div class="post_date">
									<span class="day"><%=msgvo.getMsg_num() %></span>
									<span class="month">
									<%if(mvo.getM_type()==0){ %>사용자<%}
										else if(mvo.getM_type()==1){ %>교직원<%} 
										else if(mvo.getM_type()==2){ %>공사<%} 
										else{ %>관리자<%} %>
									</span>
								</div>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href="#"><%=msgvo.getMsg_title() %></a>
										</h2>
										<div class="metaInfo">
											<span><i class="fa fa-calendar"></i> <%=msgvo.getMsg_wrdate() %> </span>
											<span><i class="fa fa-user"></i><%=msgvo.getMsg_writer() %> </span>
											<span><i class="fa fa-tag"></i> To
											<%if(msgvo.getMsg_receiver()==0){ %>일반사용자<%} 
											else if(msgvo.getMsg_receiver()==1){ %>교직원<%} 
											else if(msgvo.getMsg_receiver()==2){ %>공사관리자<%}
											else{ %>시스템관리자<%} %>
											</span>
											<span><i class="fa fa-comments"></i> X Comments</span>
										</div>
									</div>
									<p><%=msgvo.getMsg_contents() %></p>
									<a class="btn btn-small btn-default pull-right" href="#">Reply</a>
									
								</div>
							</article>
					<%} %>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12">
						<ul class="pagination pull-left mrgt-0">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>

				</div>

				<!--Sidebar Widget-->
				<div class="col-xs-12 col-md-4 col-lg-4 col-sm-4">
					<div class="sidebar">
						<div class="widget widget_search">
							<div class="site-search-area">
								<form method="get" id="site-searchform" action="#">
									<div>
										<input class="input-text" name="s" id="s"
											placeholder="Enter Search keywords..." type="text" /> <input
											id="searchsubmit" value="Search" type="submit" />
									</div>
								</form>
							</div>
							<!-- end site search -->
						</div>

						<div class="widget widget_categories">
							<div class="widget_title">
								<h4>
									<span>Categories</span>
								</h4>
							</div>
							<ul class="arrows_list list_style">
								<li><a href="/CW/CW_message/msgAdmin.jsp">전체( <%=msgdao.messageCount() %> )</a></li>
								<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=0">일반 사용자( <%=msgdao.messageCount(0)%> )</a></li>
								<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=1">교직원( <%=msgdao.messageCount(1) %> )</a></li>
								<li><a href="/CW/CW_message/msgAdmin.jsp?menuOrder=2">공사관리자( <%=msgdao.messageCount(2) %> )</a></li>
							</ul>
						</div>

						<div class="widget widget_about">
							<div class="widget_title">
								<h4>
									<span>manual</span>
								</h4>
							</div>
							<p>Test</p>
						</div>



					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>

</section>
<!--end wrapper-->