<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<html>
<head>
 	<!-- 包含公共的JSP代码片段 -->
	
<title>跟踪任务</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 跟踪任务
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>任务名称</td>
				<td>实施人</td>
				<td>开始时间</td>
				<td>结束时间</td>
				<td>任务状态</td>
				<td>选择</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
		
        <tbody id="TableData">
		  <c:forEach items="${followList}"  var="follow" >
			<tr class="TableDetail1">
				<td align="center">${follow.dutyname }</td>
				<td align="center">${follow.staff }</td>
				<td align="center">${follow.starttime}</td>
				<td align="center">${follow.endtime }</td>
				<td align="center">${follow.status }</td>
				<td>
					<a href="${pageContext.request.contextPath }/DutyServlet?f=7&followname=${follow.dutyname }" class="FunctionButton">详细信息</a>	
					<a href="${pageContext.request.contextPath }/DutyServlet?f=14&dutyname=${follow.dutyname }" onClick="return delConfirm();" class="FunctionButton">删除</a>							
				</td>
			</tr>
		  </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
    