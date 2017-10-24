<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'choose.jsp' starting page</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"></link>
<script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript">
href="<%=basePath%>"
alert(href);
</script>
</head>

<body>
	<!-- 测试的元素 -->
	<div class="one" id="one">
		id为one,class为one的div
		<div class="mini">class为mini</div>
	</div>

	<div class="one" id="two" title="test">
		id为two,class为one,title为test的div.
		<div class="mini" title="other">class为mini,title为other</div>
		<div class="mini" title="test">class为mini,title为test</div>
	</div>

	<div class="one">
		<div class="mini">class为mini</div>
		<div class="mini">class为mini</div>
		<div class="mini">class为mini</div>
		<div class="mini"></div>
	</div>

	<div class="one">
		<div class="mini">class为mini</div>
		<div class="mini">class为mini</div>
		<div class="mini">class为mini</div>
		<div class="mini" title="tesst">class为mini,title为tesst</div>
	</div>


	<div style="display:none;" class="none">style的display为"none"的div</div>

	<div class="hide">class为"hide"的div</div>

	<div>
		包含input的type为"hidden"的div<input type="hidden" size="8" />
	</div>

	<span id="mover">正在执行动画的span元素.</span>
</body>
</html>
