<%--
  Created by IntelliJ IDEA.
  User: TD
  Date: 2017/11/17
  Time: 18:51
  PageName: 01_OCUpload.jsp
  Function: 一键上传
  URL：http://localhost:8080/JavaWeb01_4.3_OCUpload/OCUpload/01_OCUpload.jsp
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> OCUpload </title>

    <%-- easyui --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>

    <%-- 引入js文件 --%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.ocupload-1.1.2.js"></script>

    <script type="text/javascript">
        $(function () {
            // 页面加载完成后，调用插件的upload方法，动态修改了HTML页面元素
            $("#myButton").upload({
                action: 'xxx.action',
                name: 'myFile'
            });
        });
    </script>

</head>

<body>
<%-- 在页面中提供任意一个元素 --%>
<input id="myButton" type="button" value="上传">
</body>

</html>