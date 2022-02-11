<!--
Created by IntelliJ IDEA.
User: TD
Date: 2017/11/27
Time: 15:59
PageName: 03_ZTree.jsp
Function: 展示ztree效果：发送ajax请求获取简单json数据构造ztree
URL：http://localhost:8080/JavaWeb01_4.2_ZTree/ZTree/03_ZTree.jsp
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>展示ztree效果：发送ajax请求获取简单json数据构造ztree</title>

    <%-- 引入 EasyUI 的资源文件 --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>

    <%-- 引入 ZTree 的资源文件 --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"></script>

    <%-- 展示ztree效果：发送ajax请求获取简单json数据构造ztree --%>
    <script type="text/javascript">
        $(function () {
            // 页面加载完成后，执行这段代码 -> 动态创建ztree
            var setting3 = {
                data: {
                    // 使用简单json数据构造ztree节点
                    simpleData: {
                        enable: true
                    }
                },
                callback: {
                    // 使用ztree提供的API为节点绑定单击事件
                    onClick: function (event, treeId, treeNode) {
                        if (treeNode.page != undefined) {
                            // 判断选项卡是否已经存在
                            var e = $("#mytabs").tabs("exists", treeNode.name);
                            if (e) {
                                // 已经存在，选中
                                $("#mytabs").tabs("select", treeNode.name);
                            } else {
                                // 动态添加一个选项卡
                                $("#mytabs").tabs("add", {
                                    title: treeNode.name,
                                    closable: true,
                                    content: '<iframe frameborder="0" height="100%" width="100%" src="' + treeNode.page + '"></iframe>'
                                });
                            }
                        }
                    }
                }
            };

            // 发送ajax请求，获取json数据
            // jQuery提供的ajax方法：ajax、post、get、load、getJSON、getScript
            var url = "${pageContext.request.contextPath}/json/menu.json";
            $.post(url, {}, function (data) {
                // 调用API初始化ztree
                $.fn.zTree.init($("#ztree3"), setting3, data);
            }, 'json');
        });
    </script>
</head>

<body class="easyui-layout">

<div title="XXX管理系统" style="height: 100px" data-options="region:'north'">北部区域</div>
<div title="系统菜单" style="width: 200px" data-options="region:'west'">
    <!-- 制作accordion折叠面板 -->
    <div class="easyui-accordion" data-options="fit:true">
        <!-- 展示ztree效果：发送ajax请求获取简单json数据构造ztree -->
        <div title="面板一">
            <ul id="ztree3" class="ztree"></ul>
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