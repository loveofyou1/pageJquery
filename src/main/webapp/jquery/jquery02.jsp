<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/23
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="jquery-3.3.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#hide").click(function () {
            $("p").hide(1000);
        });
        $("#show").click(function () {
            $("p").show();
        });
        $("#change").click(function () {
            $("p").toggle();
        });


        $("button").click(function () {
            $("#div1").fadeIn();
            $("#div2").fadeIn("slow");
            $("#div3").fadeIn(3000);
        });
        $("#button1").click(function () {
            $("#div1").fadeOut();
            $("#div2").fadeOut("slow");
            $("#div3").fadeOut(3000);
        });
        $("#button2").click(function () {
            $("#div1").fadeToggle();
            $("#div2").fadeToggle("slow");
            $("#div3").fadeToggle(3000);
        });

        $(".flip").click(function () {
            $(".panel").slideUp("slow");
        });
        $(".flip1").click(function () {
            $(".panel").slideDown("slow");
        });
        $(".flip2").click(function () {
            $(".panel").slideToggle("slow");
        });
        $("#cartoon").click(function () {
            $("#div4").animate({left: '250px'});
        });
    });

    function getHello() {
        alert("hello");
    }
</script>
</head>
<body>
<p id="p1">如果点击“隐藏”按钮，我就会消失。</p>
<button id="hide" type="button" onclick="getHello()">隐藏</button>
<button id="show" type="button">显示</button>
<button id="change" type="button">切换</button>

<p>演示带有不同参数的 fadeIn() 方法。</p>
<button>点击这里，使三个矩形淡入</button>
<button id="button1">点击这里，使三个矩形淡出</button>
<button id="button2">自动淡入淡出</button>
<br><br>
<div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div>
<br>
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div>
<br>
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div>

<div class="panel">
    <p>W3School - 领先的 Web 技术教程站点</p>
    <p>在 W3School，你可以找到你所需要的所有网站建设教程。</p>
</div>

<p class="flip">请点击这里</p>
<p class="flip1">下滑</p>
<p class="flip2">自动</p>

<button id="cartoon">播放</button>
<!-- 动画-->
<div id="div4" style="background:#98bf21;height:100px;width:100px;position:absolute;"/>

</body>
</html>
