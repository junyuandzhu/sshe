<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>My JSP 'index.jsp' starting page</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/uploadify.css">
        <script src="<%=basePath%>js/uploadify/jquery-1.4.2.min.js"></script>
        <script src="<%=basePath%>js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
        <script src="<%=basePath%>js/uploadify/swfobject.js"></script>
    <script type="text/javascript" src="jslib/uploadify/jquery.uploadify.js"></script></head>
    <body>
        This is my JSP page.
        <br>
        <table class="stable tp0" cellSpacing="0" cellPadding="0" border="0">
            <tr>
                <td width="15%" align="left" colspan="4" style="padding-left: 158px">
  
                    <input type="hidden" id="fileSize" value="0" />
  
                    <div id="custom-queue"></div> 附件：<input id="uploadify" type="file"
                    name="Filedata" />
                </td>
            </tr>
        </table>
    </body>
    <script type="text/javascript">
  $(document).ready(function(){
   
      $(document).ready(function () {
            $("#uploadify").uploadify({
                'uploader': '<%=basePath%>js/uploadify/uploadify.swf',
                'script': '<%=basePath%>servlet/UploadServlet',
                'cancelImg': '<%=basePath%>js/uploadify/cancel.png',
                'folder': 'upload',
                'queueID' : 'custom-queue',
                'auto':true,
                'multi':true,
                'fileDataName':'Filedata',
                 'onCancel' : function(file) { 
                },
                'onUploadError' : function(file, errorCode, errorMsg, errorString) { 
                    alert(456); 
                }
            });
        });
  });
 
  </script>
</html>