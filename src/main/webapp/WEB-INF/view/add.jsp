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
	var msg=${msg}
	if(msg!=null && msg.length>0){
		location="list";
	}
	/* $(function() {
		$.post(
			"type",
			function(obj) {
				alert(JSON.stringify(obj))
				for ( var i in obj) {
					$("[name='tid']").append(" <option value='"+obj[i].id+"'>"+obj[i].name+"</option>")
				}
			}
		)
		$.post(
			"brand",
			function(obj) {
				for ( var i in obj) {
					$("[name='bid']").append("<option value='"+obj[i].id+"'>"+obj[i].name+"</option>")
				}
			}
		)
	 })  */
</script>
</head>
<body>
<h1>商品添加页面</h1>
<hr>
	<form action="add" method="post" enctype="multipart/form-data">
		商品名称：<input name="cname" ><br>
		商品价格：<input name="price" ><br>
		上传图片：<input type="file" name="f"><br>
		商品种类：<select name="bid"> 
		<option value="1">小米<option>	
		</select><br>
		商品类型：<select name="tid">
		<option value="1">拍照<option>	
		</select>	<br>
		<input type="submit" value="添加">
	</form>
</body>
</html>