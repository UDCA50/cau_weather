<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%@ page import="java.util.*"%>
<%@ page import="cw.member.*" %>
<%
	MemberDao dao = new MemberDao();
	ArrayList<MemberVo> list = new ArrayList<MemberVo>();
	list = dao.selectAllMember();
%>

<!--start wrapper-->
<section class="wrapper">
	<section class="content elements">
		<div class="container">
			<div class="row sub_content">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="dividerHeading">
						<h4>
							<span>Member List</span>
						</h4>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th></th>
									<th>No.</th>
									<th>Type</th>
									<th>ID</th>
									<th>Name</th>
									<th>Nickname</th>
									<th>Telephone</th>
									<th>E-mail</th>
									<th>regDate</th>
								</tr>
							</thead>
							<tbody>
							 <%for(MemberVo vo : list){ %>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=vo.getM_num() %></td>
									<td><%=vo.getM_type() %></td>
									<td><%=vo.getM_id() %></td>
									<td><%=vo.getM_name() %></td>
									<td><%=vo.getM_nickname() %></td>
									<td><%=vo.getM_telephone()%></td>
									<td><%=vo.getM_email() %></td>
									<td><%=vo.getM_regdate() %></td>
								</tr>
							<%} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!--./row-->
		</div>
		<!--./Container-->
	</section>
</section>
<!--end wrapper-->