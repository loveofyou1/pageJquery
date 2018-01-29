<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/26
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../jquery-3.3.1.js"></script>
<html>
<head>
    <title>jquery.ajax</title>
</head>
<body>
<form id="form2" action="#">
    <p>评论：</p>
    <p>姓名：<input type="text" name="username" id="username"/></p>
    <p>内容：<textarea name="content" id="content" rows="2" cols="20"></textarea></p>
    <p><input id="send" type="button" value="提交"/></p>
    <div class="comment">已有评论：</div>
    <div id="resText"></div>
</form>
</body>
</html>
<script>
    $(function () {
        $("#send").click(function () {
            //$("#resText").load("test.html .para");
            $.get("test.html", {
                username: $("#username").val(),
                content: $("#content").val()
            }, function (data, textStatus) {
                //$("#resText").html(data);
                var username = data.username;
                var content = data.content;
                var txtHtml = "<div class='commit'><h6>" + username + ":</h6><p class='para'>"
                    + content + "</p></div>";
                $("#resText").html(txtHtml);
            }, "json");
        });
    });
</script>
