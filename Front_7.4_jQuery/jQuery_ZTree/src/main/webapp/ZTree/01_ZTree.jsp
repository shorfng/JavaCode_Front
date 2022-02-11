<!--
Created by IntelliJ IDEA.
User: TD
Date: 2017/11/27
Time: 15:59
PageName: 01_ZTree.jsp
Function: 展示ztree效果：使用标准json数据构造ztree
URL：http://localhost:8080/JavaWeb01_4.2_ZTree/ZTree/01_ZTree.jsp
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>展示ztree效果：使用标准json数据构造ztree</title>

    <%-- 引入 EasyUI 的资源文件 --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>

    <%-- 引入 ZTree 的资源文件 --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"></script>

    <%-- 展示ztree效果：使用标准json数据构造ztree --%>
    <script type="text/javascript">
        $(function () {
            // 页面加载完成后，执行这段代码 -> 动态创建ztree
            var setting = {};
            // 构造节点数据
            var zNodes = [
                // 每个json对象表示一个节点数据
                {"name": "节点一", "children": [
                    {"name": "节点一_1"},
                    {"name": "节点一_2"}]},
                {"name": "节点二"},
                {"name": "节点三"}
            ];
            // 调用API初始化ztree
            $.fn.zTree.init($("#ztree1"), setting, zNodes);
        });
    </script>
</head>

<body class="easyui-layout">

<div title="XXX管理系统" style="height: 100px" data-options="region:'north'">北部区域</div>
<div title="系统菜单" style="width: 200px" data-options="region:'west'">
    <!-- 制作accordion折叠面板 -->
    <div class="easyui-accordion" data-options="fit:true">
        <!-- 展示ztree效果：使用标准json数据构造ztree-->
        <div title="面板一">
            <ul id="ztree1" class="ztree"></ul>
        </div>
        <div title="面板二"></div>
        <div title="面板三"></div>
        <div title="面板四"></div>
    </div>
</div>
<div data-options="region:'center'">
    <!-- 制作一个tabs选项卡面板 -->
    <div id="mytabs" class="easyui-tabs" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
        <div data-options="iconCls:'icon-cut'" title="面板一">1111</div>
        <div data-options="closable:true" title="面板二">2222</div>
        <div title="面板三">3333</div>
    </div>
</div>
<div style="width: 100px" data-options="region:'east'">东部区域</div>
<div style="height: 50px" data-options="region:'south'">南部区域</div>
</body>
</html>