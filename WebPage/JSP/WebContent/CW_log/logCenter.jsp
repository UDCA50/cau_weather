<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@	page import = "java.util.*" %>    
<%@	page import = "cw.log.*" %>

<%
LogDao ldao = new LogDao();
ArrayList<LogVo> list = new ArrayList<LogVo>();
list = ldao.logList();
%>
<!--start wrapper-->
<section class="wrapper">
	<section class="content blog">
		<div class="container">
<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="dividerHeading">
                    <h4><span>Log list</span></h4>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th></th>
                            <th>No.</th>
                            <th>Time</th>
                            <th>ID</th>
                            <th>Type</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <%
                        	for(LogVo lvo:list){%>
						<tr>
                            <td><input type = "checkbox" name = "l_num" value = "l_num"></td>
                            <td><%=lvo.getL_num() %></td>
                            <td><%=lvo.getL_time() %></td>
                            <td><%=lvo.getL_id() %></td>
                            <td><%=lvo.getL_type() %></td>
                        </tr>                        		
                        <% 	}         %>

                        
                        </tbody>
                    </table>
                </div>
            </div>
        </div> <!--./row-->
        </div>
        </section>
        </section>