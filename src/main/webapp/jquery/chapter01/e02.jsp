<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/26
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="form1" action="#">
    可用元素:<input name="add" value="可用文本框"/><br/>
    不可用元素:<input name="email" disabled="disabled" value="不可用文本框"/><br/>
    可用元素:<input name="che" value="可用文本框"/>
    不可用元素:<input name="name" disabled="disabled" value="不可用文本框"/><br/>
    <br/>
    多选框：<br/>
    <input type="checkbox" name="newsletter" checked="checked" value="test1"/>test1
    <input type="checkbox" name="newsletter" value="test2"/>test2
    <input type="checkbox" name="newsletter" value="test3"/>test3
    <input type="checkbox" name="newsletter" value="test4"/>test4
    <input type="checkbox" name="newsletter" value="test5"/>test5
    <div></div>
    <br/><br/>
    下拉列表1:<br/>
    <select name="test" multiple="multiple" style="height: 100px">
        <option>浙江</option>
        <option selected="selected">湖南</option>
        <option>北京</option>
        <option selected="selected">天津</option>
        <option>广州</option>
        <option>湖北</option>
    </select>

    <br/><br/>
    下拉列表2：<br/>
    <select name="test2">
        <option>浙江</option>
        <option>湖南</option>
        <option selected="selected">北京</option>
        <option>天津</option>
        <option>广州</option>
        <option>湖北</option>
    </select>
    <div></div>
</form>
<script>
    $(function () {
        $("#form1").click(function () {
            $("#form1 input:enabled").val("这里变化了!");
            $("#form1 input:disabled").val("这里也变化了!");
            var $len = $("input:checked").length;
            alert($len[0]);
            $("select:selected").text();
        });
    });
</script>
</body>
</html>
