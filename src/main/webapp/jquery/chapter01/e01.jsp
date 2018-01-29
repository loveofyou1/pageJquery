<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/26
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery01</title>
    <script src="../jquery-3.3.1.js">
    </script>
    <!--<script>
        $(document).ready(function () {//等待dom元素加载完毕
            alert("hello world!");     //弹出一个框
        })
    </script>-->
    <script>
        var xmlHttpReq = null;

        function Ajax() {

            if (window.ActiveXObject) {
                xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
            } else if (window.XMLHttpRequest) {
                xmlHttpReq = new XMLHttpRequest();
            }

            xmlHttpReq.open("GET", "e02.jsp", true);

            xmlHttpReq.onreadystatechange = RequestCallback;

            xmlHttpReq.send(null);
        }


        function RequestCallback() {
            if (xmlHttpReq.readyState == 4) {
                if (xmlHttpReq.status == 200) {
                    //将xmlHttpReq.reposetest的值赋予id为resText的元素
                    document.getElementById("resText").innerHTML = xmlHttpReq.responseText;
                }
            }
        }
    </script>
</head>
<body
>
<h3>
    例子
</h3>
<p title="选择你喜欢的水果.">你最喜欢的水果?</p>
<ul>
    <li>苹果</li>
    <li>橘子</li>
    <li>菠萝</li>
</ul>
<input type="checkbox" id="cr"/><label for="cr">我已经阅读了上面制度</label>

<p>test1</p>
<p>test2</p>

<form>
    你爱好的运动是？<br/>
    <input type="checkbox" name="items" value="足球"/>足球
    <input type="checkbox" name="items" value="篮球"/>篮球
    <input type="checkbox" name="items" value="羽毛球"/>羽毛球
    <input type="checkbox" name="items" value="乒乓球"/>乒乓球<br/>
    <input type="button" id="checkedAll" value="全 选"/>
    <input type="button" id="checkedNo" value="全不选"/>
    <input type="button" id="checkedRev" value="反 选"/>
    <input type="button" id="send" value="提 交"/>
</form>

<input type="button" value="Ajax提交" onclick="Ajax()"/>
<div id="resText"></div>
<script>
    $(function () {         //等待dom对象加载完成
        var $cr = $("#cr");//jquery对象
        var cr = $cr[0];    //dom对象，或者#cr.get(0)
        $cr.click(function () {
            if (cr.checked) {
                alert("感谢您的支持！您可以继续操作！")
            }
        });


        var items = document.getElementsByTagName("p");//获取当前页面的所有p元素
        for (var i = 0; i < items.length; i++) {
            items[i].onclick = function () {
                alert("test" + i);
            }
        }

        var $li = $("ul li:eq(1)");
        var li_txt = $li.text();
        alert(li_txt);

        //全选
        $("#checkedAll").click(function () {
            $('[name=items]:checkbox').attr('checked', true);
        });
        //全不选
        $("#checkedNo").click(function () {
            $('[name=items]:checkbox').attr('checked', false);
        });
        //反选，将当前选择的状态变为相反的状态
        $("#checkedRev").click(function () {
            $('[name=items]:checkbox').each(function () {
                $(this).attr("checked", !$(this).attr("checked"));
            });
        });
        //提交按钮
        $("#send").click(function () {
            var str = "你选中的是:\r\n";
            $('[name=items]:checkbox:checked').each(function () {
                str += $(this).val() + "\r\n";
            });
            alert(str);
        });

    });

</script>
</body>
</html>
