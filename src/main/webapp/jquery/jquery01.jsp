<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/23
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery01</title>
    <script type="text/javascript" src="jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("button").click(function () {
                //$(this).hide();
                //$("#test").hide();
                //$("p").hide();
                $(".test").hide();
                if ($("#sel1").length > 0)
                jQuery("#sel1").empty();
            })
        });


    </script>
</head>
<body>
<center>
    <button type="button">click me</button>
    <p id="test">This is another paragraph.</p>
    <p id="hello">hello world!</p>
    <h2 class="test">This is a heading</h2>
</center>

<select id="sel1" name="symbol">
    <
    <option value="0">hello</option>
</select>
</body>
</html>
