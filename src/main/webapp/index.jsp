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
<script type="text/javascript" src="jslib/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="jslib/jyUtil.js"></script>
<%--<script type="text/javascript" src="jslib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
--%>
</link>
<script type="text/javascript"><%--
	$(function() {
		$('#index_regDialog').dialog({
			title : '注册',
			//closed : true,
			closable : false,
			modal : true,
			buttons : [ {
				text : '注册',
				iconCls : 'icon-edit',
				handler : function() {
					console.info($('#index_regForm'));
				}
			} ]
		}).dialog('close');
	});
--%>
	$(function() {

	});
	
	function regUser(){
		$('#index_regForm').form('submit',{
			url : '${pageContext.request.contextPath}/userAction!reg.action',
			success : function(data) {
				alert(data);
			}
		});
	}
</script>
</head>
<body class="easyui-layout">
	<%--页面布局--%>
	<div data-options="region:'north'" style="height:60px;"></div>
	<div data-options="region:'south'" style="height:20px;"></div>
	<div data-options="region:'west',split:true" style="width:200px;">
		<div class="easyui-panel" data-options="title :'west', border:false,fit:true"}"></div>
	</div>
	<div data-options="region:'east',title:'east',split:true" style="width:200px;"></div>
	<div data-options="region:'center',title:'欢迎使用SSHE示例系统'" style="overflow: hidden;"></div>
	
	<div class="easyui-dialog" data-options="title:'登陆',closable:false,modal:true,buttons:[{
				text:'注册',
				iconCls:'icon-edit',
				handler:function(){$('#index_regDialog').dialog('open')}
			},{
				text:'登陆',
				iconCls:'icon-help',
				handler:function(){alert('tips')}
				
			}]">
		<table>
			<tr>
				<th>用户名</th>
				<td><input /></td>
			</tr>
			<tr>
				<th>密码</th>
				<td><input /></td>
			</tr>

		</table>
	</div>
	<div id="index_regDialog" class="easyui-dialog" data-options="title:'注册',closed : true,
			closable : false,
			modal : true,
			buttons : [ {
				text : '注册',
				iconCls : 'icon-edit',
				handler : function() {
					
				}
			} ]">
		<form id="index_regForm" method="post">
			<table>
				<tr>
					<th>用户名</th>
					<td><input name="name" class="easyui-validatebox" data-options="required:true,missingMessage:'用户名必填'" />
					</td>
				</tr>
				<tr>
					<th>密码</th>
					<td><input name="pwd" type="password" class="easyui-validatebox" data-options="required:true" />
					</td>
				</tr>
				<tr>
					<th>重复密码</th>
					<td><input name="rePwd" type="password" class="easyui-validatebox" data-options="required:true,validType:'equals[\'#index_regForm input[name=pwd]\']'" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
