/*
 Author：蓝田_Loto
 Date：2019-09-10 10:41
 PageName：Utils.js
 Function：获取另外一个页面url传过来的参数
*/

/* 获取另外一个页面url传过来的单个参数 */
var getParamString = function (name) {
    var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
    var r = window.location.search.substr(1).match(reg);
    if (r != null) {
        return unescape(r[2]);
    }
    return null;
};

// 调用
var id = getParamString("id");
document.write("获取另外一个页面url传过来的单个参数：" + id + "<br>");

/* 获取另外一个页面url传过来的多个参数 */
var getParamStrings = function () {
    var url = location.search;  // 获取url中"?"符后的字串
    var theRequest = {};
    if (url.indexOf("?") !== -1) {
        var str = url.substr(1);
        var strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
        }
    }
    return theRequest;
};

// 调用
var params = getParamStrings();
var param1 = getParamString('name');
var param2 = getParamString('age');
document.write("获取另外一个页面url传过来的多个参数：" + params + "<br>");
document.write("获取另外一个页面url传过来的多个参数：参数param1（name）为" + param1 + "<br>");
document.write("获取另外一个页面url传过来的多个参数：参数param2（age）为" + param2 + "<br>");


/* 参考代码出处
* https://blog.csdn.net/banpu/article/details/79623147
*/