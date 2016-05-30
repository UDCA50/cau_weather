<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="cw.member.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	String loginId = (String)session.getAttribute("loginId");
	
	MemberDao mdao = new MemberDao();
	MemberVo mvo = mdao.selectMember(loginId);
	
	int memberType = mvo.getM_type(); 		//�����(0), ������(1), ���������(2)
	String memberTypeString = null;
	switch(memberType){
		case 0:
			memberTypeString = "�Ϲݻ����";
			break;
		case 1:
			memberTypeString = "������";
			break;
		case 2:
			memberTypeString = "���������";
			break;
	}
%>
<!--start wrapper-->
<section class="wrapper">
    <div class="container">
        <div class="row sub_content">
        	<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="dividerHeading">
					<h4>
						<span>Register Agreement</span>
					</h4>
				</div>
				<p>����������ȣ�� ����ɿ� ���� ����������޹�ħ ����</p>
				<form id="contactForm" action="" novalidate="novalidate">
					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<textarea id="agree" class="form-control" id="message" rows="19" cols="50" data-msg-required="Please enter your message." readonly>
�� 1 �� (����)
1. "ȸ��"�� �� ����� ������ "ȸ��"�� ���� �� �� �ֵ��� ���� �ʱ� ȭ�鿡 �Խ��մϴ�.
2. ȸ��� �¶��� ��������������� ������, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����, ����� ������ ���� ����, �Һ��ڱ⺻�� �� ���ù��� �������� �ʴ� �������� �� ����� ������ �� �ֽ��ϴ�.
3. ȸ���� ��������� ���뿡 �������� �ʴ� ��� ȸ��� ���� ����� ������ ������ �� ������, �� ��� ȸ���� �̿����� ������ �� �ֽ��ϴ�. �ٸ�, ���� ����� ������ �� ���� Ư���� ������ �ִ� ��쿡�� ȸ��� �̿����� ������ �� �ֽ��ϴ�. 

�� 2 �� (ȸ������)
1. �̿��ڴ� ȸ�簡 ���� ���� ��Ŀ� ���� ȸ�������� ������ �� �� ����� ��������ó����ħ�� �����Ѵٴ� �ǻ� ǥ�ø� �����ν� ȸ�������� ��û�մϴ�.
2. �� �̿����� ���� ���Ǵ� ȸ������ ��� �ش� �� ����Ʈ�� �����ǡ� ��ư�� �����ų� ��Ȯ�Ρ� � üũ�ϴ� ����� ���� ��� �� ����� ������ ������ �����մϴ�.
3. ȸ�������� �ݵ�� �Ǹ����θ� ������ �� ������, ȸ��� �Ǹ�Ȯ����ġ�� �� �� �ֽ��ϴ�. �Ǹ����� ������� ���� �̿� ���� ��ü�� �Ǹ��� ������ �� �����ϴ�.

�� 3 �� (���������� ��ȣ �� ���)
ȸ��� ��������� ���ϴ� �ٿ� ���� ȸ�� ��������� ������ ȸ���� ���������� ��ȣ�ϱ� ���� ����մϴ�. ȸ�� ���������� ��ȣ �� ��뿡 ���ؼ��� ���ù��� �� ȸ���� ��������ó����ħ�� ����˴ϴ�. ��, ȸ���� ���Ļ���Ʈ�̿��� ������ ��ũ�� ����Ʈ������ ȸ���� ��������ó����ħ�� ������� �ʽ��ϴ�. ���� ȸ��� �̿����� ��å������ ���� ����� ������ ���ؼ� ��ü�� å���� ���� �ʽ��ϴ�.

�� 4 �� (ȸ���� �ǹ�)
1. "ȸ��"�� ���ù��� �� ����� �����ϰų� ��ǳ��ӿ� ���ϴ� ������ ���� ������, ������̰� ���������� "����"�� �����ϱ� ���Ͽ� �ּ��� ���Ͽ� ����մϴ�.
2. "ȸ��"�� "ȸ��"�� �����ϰ� "����"�� �̿��� �� �ֵ��� �������� ��ȣ�� ���� ���Ƚý����� ���߾�� �ϸ� ����������޹�ħ�� �����ϰ� �ؼ��մϴ�.
3. "ȸ��"�� �����̿�� �����Ͽ� "ȸ��"���κ��� ����� �ǰ��̳� �Ҹ��� �����ϴٰ� ������ ��쿡�� �̸� ó���Ͽ��� �մϴ�. "ȸ��"�� ������ �ǰ��̳� �Ҹ����׿� ���ؼ��� �Խ����� Ȱ���ϰų� ���ڿ��� ���� ���Ͽ� "ȸ��"���� ó������ �� ����� �����մϴ�. 

�� 5 �� (���� �̿�����)
1. ȸ��� ȸ���� ���� �̿볻�뿡 �־ ���� �� ȣ�� �ش��ϴ� ��� ���� �̿��� ������ �� �ֽ��ϴ�.
��. ��ǳ����� �����ϴ� ����� ID �� ���� ���
��. Ÿ �̿��ڿ��� ���� ����� �ְų�, ���� �̿��� ������ ���
��. ��Ÿ �������� ���� ��� ���ذ� �� ���
��. ������� ��������ȸ �� ���� ��������� ���� �䱸�� �ִ� ���
2. ��� �̿����� ������ ���� ���񽺸� �̿��ϴ� ȸ������ ���� �̿뿡 ���Ͽ� ���� ���� ���� ���� �̿��� �Ͻ�����, �ʱ�ȭ, �̿��� ���� ���� �ҷ��̿��� ó�������� ���� ���� �� �ֽ��ϴ�.

�� Ģ
(������) �� ����� 2016�� 5�� 15�Ϻ��� ����˴ϴ�.
								</textarea>
							</div>
						</div>
					</div>
				</form>
			</div>
            <div class="col-lg-6 col-sm-6">
                <div class="dividerHeading">
                    <h4><span>Member Profile Modify (<%=memberTypeString %>)</span></h4>
                </div>
                <form id="modifyform" method="post" name="modifyform" action="memberModifyProc.jsp">
                    <div class="form-group">
                    	<input type="hidden" name="m_num" value="<%=mvo.getM_num() %>">
                    	<input type="hidden" name="m_type" value="<%=mvo.getM_num() %>">
                        <input type="text" class="form-control" name="m_id" placeholder="<%=mvo.getM_id()%>" value="<%=mvo.getM_id() %>" readonly>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="m_pass" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password Check">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="m_name" placeholder="<%=mvo.getM_name()%>" value="<%=mvo.getM_name() %>">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="m_nickname" placeholder="<%=mvo.getM_nickname()%>" value="<%=mvo.getM_nickname()%>">
                    </div>
					<div class="form-group">
                        <input type="text" class="form-control" name="m_telephone" placeholder="<%=mvo.getM_telephone()%>" value="<%=mvo.getM_telephone()%>">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="m_email" placeholder="<%=mvo.getM_email()%>" value="<%=mvo.getM_email()%>">
                    </div>
                    <div class="form-group">
                    	<input type="checkbox" id="m_agree">���� ����� ��� �����Ͽ�����, ���� ������ �����մϴ�.
                    	<input type="hidden" name="m_type" value="<%=memberType %>">
                        <input type="submit" class="btn btn-default btn-lg button pull-right" value="Modify my account">
                    </div>
                </form>
            </div>
		</div>
    </div>
</section>
<!--end wrapper-->