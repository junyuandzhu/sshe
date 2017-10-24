<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML >
<html>
<head>
<title>SSHE DEMO</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="jslib/jquery-easyui-1.5.1/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="jslib/jquery-easyui-1.5.1/themes/icon.css" type="text/css"></link>
<%--<link rel="stylesheet" href="jslib/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css">
--%>
<script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<%--<script type="text/javascript" src="jslib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
--%>
</link>
<style>
.demo {
	color: red;
	font-style: 30px;
}
</style>

</head>
<body>
	<p class="demo">CSS DEMO.</p>

	<p title="选择你最喜欢的水果">你最喜欢的水果是？</p>
	<ul>
		<li title="苹果">苹果</li>
		<li title="橘子">橘子</li>
		<li title="菠萝">菠萝</li>
	</ul>
</body>
</html>
<script type="text/javascript">
	//function demo(){
	//	alert("jQuery demo!");
	//}

	$(".demo").click(function() {
		alert("jQuery demo!");
	})

	var $li = $("ul li:eq(1)");
	var li_tet = $li.text();
	alert(li_tet);

	var $para = $("p:last");
	var p_txt = $para.attr("title");
	alert(p_txt);
</script>