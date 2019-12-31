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
	function del(id) {
		
			if(confirm("确认删除吗")){
				location="del?id="+id;
			}
		
	}
	function delall() {
		var ids=$(".delall").map(function() {
			return this.value();
		}).get().join()
			if(confirm("你确定删除吗")){
				location="delall?ids"+ids;
		
		}
	}

</script>
</head>
<body>
<h1>商品列表</h1>
<hr>
<a href="toadd"> <input type="button" value="添加"> </a>
 <input type="button" value="批量删除" onclick="delall()">
	<form action="list" method="post">
	名称：<input name="cname" value="${g.cname }">
	<input type="submit" value="查询">
	<br>
	<c:forEach items="${pg.list }" var="g">
		<div style="float: left">
			<img alt="" src="/pic/${g.pic }" width="100px" height="100px"><br>
			<input type="checkbox" class="delall" value="${g.id }"><br>
			名称：${g.cname }<br>
			价格：${g.price }<br>
			品牌：${g.bname }<br>
			类型：${g.tname }<br>
			<a href="good?id=${g.id }"><input type="button" value="商品详情"></a><br>
			<a href="toupdate?id=${g.id }"><input type="button" value="修改"></a><br>
			<input type="button" value="删除" onclick="del(${g.id})">
		</div>
	</c:forEach>
	<div style="clear: both">
		<button name="pageNum" value="1">首页</button>
		<button name="pageNum" value="${pg.prePage==0?1:pg.prePage }">上一页</button>
		<button name="pageNum" value="${pg.nextPage==0?pg.pages:pg.nextPage }">下一页</button>
		<button name="pageNum" value="${pg.pages }">尾页</button>
		当前第${pg.pageNum }页/共${pg.pages }页
	</div>
	</form>

</body>
</html>