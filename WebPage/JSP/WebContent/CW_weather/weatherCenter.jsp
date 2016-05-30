<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@	page import = "java.util.*" %>    
<%@	page import = "cw.weather.*" %>
<%@ page import = "cw.log.*" %>

<%

String id = (String)session.getAttribute("loginId");
WeatherDao wdao = new WeatherDao();
ArrayList<WeatherVo> list = new ArrayList<WeatherVo>();
int building = Integer.parseInt((String)request.getParameter("b"));
int classroom = Integer.parseInt((String)request.getParameter("c"));
list = wdao.weatherList(building, classroom);

LogDao ldao = new LogDao();
String logId = id;
String logType = "weatherView ( " + building  + " - "+classroom+" )";
ldao.insertLog(logId, logType);
%>
<!--start wrapper-->
<section class="wrapper">
	<section class="content blog">
		<div class="container">
<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="dividerHeading">
                    <h4><span>Weather List ( <%=building %> - <%=classroom %> )</span></h4>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th></th>
                            <th>No.</th>
                            <th>Humidity</th>
                            <th>Temperature</th>
                            <th>Building</th>
                            <th>Classroom</th>
                            <th>Time</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <%
                        	for(WeatherVo wvo:list){%>
						<tr>
                            <td><input type = "checkbox" name = "l_num" value = "l_num"></td>
                            <td><%=wvo.getW_num() %></td>
                            <td><%=wvo.getW_hum() %></td>
                            <td><%=wvo.getW_temp() %></td>
                            <td><%=wvo.getW_building() %></td>
                            <td><%=wvo.getW_classroom() %></td>
                            <td><%=wvo.getW_time() %></td>
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