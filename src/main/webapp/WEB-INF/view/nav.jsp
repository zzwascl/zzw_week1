<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@  taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"   %>
<%@  taglib prefix="f" uri="http://www.springframework.org/tags/form" %>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript" src="<%=path%>/resource/jquery-3.2.1.js"></script>
  <link rel="stylesheet" href="<%=path%>/resource/bootstrap.css" type="text/css"></link>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var msg='${msg}'
	alert(msg)
</script>
</head>
<body>
	导航页面  <br>
	${msg } <br>
	<a href="list"> <input type="button" value="进入列表"> </a>
</body>
</html>