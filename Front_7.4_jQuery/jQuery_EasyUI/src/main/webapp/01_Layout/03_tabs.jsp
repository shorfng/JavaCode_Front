<!--
Created by IntelliJ IDEA.
User: TD
Date: 2017/11/27
Time: 15:59
PageName: 03_EasyUI_tabs.jsp
Function: 选项卡面板
URL：http://localhost:8080/JavaWeb01_4.1_EasyUI/01_Layout/03_tabs.jsp
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>03_EasyUI_tabs.jsp</title>

    <%-- 引入 EasyUI 的资源文件 --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>

</head>
<body class="easyui-layout">
<!-- 使用div元素描述每个区域：东南西北中 -->
<div title="XXX管理系统" style="height: 100px" data-options="region:'north'">北部区域</div>

<div title="系统菜单" style="width: 200px" data-options="region:'west'">
    <%-- 制作accordion折叠面板 --%>
    <%-- fit:true 表示自适应(填充父容器) --%>
    <div class="easyui-accordion" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
        <div data-options="iconCls:'icon-cut'" title="面板一">1111</div>
        <div title="面板二">2222</div>
        <div title="面板三">3333</div>
    </div>
</div>

<div data-options="region:'center'">
    <!-- 制作tabs选项卡面板 -->
    <div class="easyui-tabs" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
        <%-- closable:true 可以关闭面板 --%>
        <div data-options="iconCls:'icon-cut'" title="面板一">1111</div>
        <div data-options="closable:true" title="面板二">2222</div>
        <div title="面板三">3333</div>
    </div>
</div>

<div style="width: 100px" data-options="region:'east'">东部区域</div>
<div style="height: 50px" data-options="region:'south'">南部区域</div>
</body>
</html>