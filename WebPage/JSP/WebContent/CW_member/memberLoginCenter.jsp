<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<section class="wrapper">
	<div class="container">
		<div class="row sub_content">
			<div class="col-lg-6 col-sm-6 col-lg-offset-1">
				<div class="dividerHeading">
					<h4>
						<span>Member Login</span>
					</h4>
				</div>
				<form id="loginform" method="post" name="loginform" action="memberLoginProc.jsp">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" class="form-control" placeholder="User ID" name="m_id">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input type="password" class="form-control" placeholder="Password" name="m_pass">
						</div>
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> Remember me
							</label>
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-default btn-lg button pull-right">Sign in</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</section>
<!--end wrapper-->