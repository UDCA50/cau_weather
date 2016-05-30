<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import = "cw.member.*" %>
<%	String loginId = (String)session.getAttribute("loginId");
		MemberDao mdao = new MemberDao();
		MemberVo mvo = mdao.selectMember(loginId);
		
		int memberType = mvo.getM_type();
%>	
<!--start wrapper-->
<section class="wrapper">
	<section class="contact_2">
		<div class="container">
			<div class="row sub_content">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="dividerHeading">
						<h4>
							<span>Message Write</span>
						</h4>
					</div>
					<p>메세지(알림)을 작성합니다. 아래 항목을 빠짐없이 채워주세요.</p>

					<form id="contactForm" action="/CW/CW_message/msgWriteProc.jsp" method="post" novalidate="novalidate">
						<div class="row">
							<div class="form-group">
								<div class="col-lg-6 ">
									<input type="hidden" id="msg_writer" name="msg_writer" value="<%=mvo.getM_id() %>">
									<input type="hidden" id="msg_writer_type" name="msg_writer_type" value="<%=mvo.getM_type() %>">
									<input type="text" id="m_name" name="name" class="form-control" 	value="<%=mvo.getM_name() %>"   readonly>
								</div>
								<div class="col-lg-6 ">
								<%	String writerType = null;
										if(memberType==0){
											writerType="일반사용자";
										}else if(memberType==1){
											writerType="교직원";
										}else if(memberType==2){
											writerType="공사관리자";
										}else{
											writerType="관리자";
										}
									%>
									<input type="text" id="msg_sender_show" name="msg_sender_show" class="form-control" value="<%=writerType%>" readonly>
									<input type="hidden" id="msg_sender" name="msg_sender" class="form-control" value="<%=memberType%>" readonly>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								
								<div class="col-md-12">
									<input type="text" id="msg_title" name="msg_title"	class="form-control" 	data-msg-required="Please enter the subject." placeholder="Title">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<div class="col-md-12">
									<textarea id="message" class="form-control" name="msg_contents" rows="10" cols="50" data-msg-required="Please enter your message." 	maxlength="5000" placeholder="Message"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
									<div class="alert alert-danger alert-dismissable">
									<%if(memberType==0){ %>
									<input type="radio" name="msg_receiver" value="1">&nbsp;교직원&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="msg_receiver" value="2">&nbsp;공사관리자&nbsp;&nbsp;&nbsp;&nbsp;
									<%}else if(memberType==1){ %>
									<input type="radio" name="msg_receiver" value="0">&nbsp;사용자&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="msg_receiver" value="2">&nbsp;공사관리자&nbsp;&nbsp;&nbsp;&nbsp;
									<%}else if(memberType==2){ %>
									<input type="radio" name="msg_receiver" value="0">&nbsp;사용자&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="msg_receiver" value="1">&nbsp;교직원&nbsp;&nbsp;&nbsp;&nbsp;
									<%}else{%>
									<input type="radio" name="msg_receiver" value="0">&nbsp;사용자&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="msg_receiver" value="1">&nbsp;교직원&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="msg_receiver" value="2">&nbsp;공사관리자&nbsp;&nbsp;&nbsp;&nbsp;
									<%} %>
									</div>			
								</div>
							<div class="col-md-12 text-right">
								<input type="submit" data-loading-text="Loading..."	class="btn btn-default btn-lg" value="Send Message">
							</div>
						</div>
					</form>
				</div>

				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="sidebar">
						<div class="widget_info">
							<div class="dividerHeading">
								<h4>
									<span>How to Use</span>
								</h4>
							</div>
							<p>메세지(알림)작성 시 해당 부서의 관리자가 확인 후 답변 드립니다.</p>
							<ul class="widget_info_contact">
								<li><i class="fa fa-book"></i><strong>Manager</strong>
									<p>교직원<br>김정욱 // manager@cau.ac.kr
									</p></li>
								<li><i class="fa fa-cog"></i><strong>Operation Managerl</strong>
									<p>공사관계자<br>최준영 // operator@cau.ac.kr
									</p></li>
								<li><i class="fa fa-phone"></i><strong>System Administrator</strong>
									<p>시스템관리자<br>서준호 // administrator@cau.ac.kr
									</p></li>
							</ul>
						</div>

						<div class="widget_social">
							<ul class="widget_social">
								<li><a class="fb" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Facbook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a class="twtr" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a class="gmail" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Google"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a class="dribbble" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Dribbble"><i
										class="fa fa-dribbble"></i></a></li>
								<li><a class="skype" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
								<li><a class="pinterest" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Pinterest"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a class="instagram" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Instagram"><i
										class="fa fa-instagram"></i></a></li>
								<li><a class="youtube" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Youtube"><i
										class="fa fa-youtube"></i></a></li>
								<li><a class="linkedin" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a class="flickrs" href="#." data-placement="bottom"
									data-toggle="tooltip" title="Flickr"><i
										class="fa fa-flickr"></i></a></li>
								<li><a class="rss" href="#." data-placement="bottom"
									data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
</section>
<!--end wrapper-->