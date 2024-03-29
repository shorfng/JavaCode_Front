<%--
  Created by IntelliJ IDEA.
  User: TD
  Date: 2017/11/17
  Time: 18:51
  PageName: 01_combobox.jsp
  Function: 下拉列表框
  URL：http://localhost:8080/JavaWeb01_4.1_EasyUI/05_From/01_combobox.jsp
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>01_combobox</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.ocupload-1.1.2.js"></script>
</head>

<body>
<input data-options="url:'${pageContext.request.contextPath }/json/combobox_data.json',
			  valueField:'id',
			   textField:'name',
			    editable:false"
              class="easyui-combobox">

</body>
</html>