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
		商品名称：<input name="cname" value="${g.cname }" ><br>
		商品价格：<input name="price"  value="${g.price }"><br>
		商品图片：<img alt="" src="/pic/${g.pic }" width="100px" height="100px">
		商品种类：<select name="bid"> 
		<option value="1">小米<option>	
		</select><br>
		商品类型：<select name="tid">
		<option value="1">拍照<option>	
		</select>	<br>
		<a href="list"><input type="button" value="返回列表" onclick="list()"></a>

</body>
</html>