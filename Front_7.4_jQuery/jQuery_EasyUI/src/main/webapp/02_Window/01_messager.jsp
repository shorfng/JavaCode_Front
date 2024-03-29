<!--
Created by IntelliJ IDEA.
User: TD
Date: 2017/11/27
Time: 15:59
PageName: 01_EasyUI_messager.jsp
Function: 消息框
URL：http://localhost:8080/JavaWeb01_4.1_EasyUI/02_Window/01_messager.jsp
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>messager：消息框</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">
        $(function () {
            // alert方法：提示框  error、question、info、warning
            // $.messager.alert("标题","内容","question");

            // confirm方法：确认框
            // $.messager.confirm("提示信息","你确定要删除当前记录吗？",function(r){
            // alert(r);
            // });

            // show方法：欢迎框
            $.messager.show({
                title: '欢迎信息',
                msg: '欢迎【admin】登录系统！',
                timeout: 5000,     // 出现时间
                showType: 'slide'  // 显示方式：滑动
            });
        });
    </script>
</head>

</html>