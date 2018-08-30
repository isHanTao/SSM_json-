<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/17
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head>
    <title>教师登陆</title>
</head>
<body>

<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
<header>
    <section>
        <div class="container">
            <h1 class="diaplay2 text-center ">教师登陆</h1>
        </div>
    </section>
</header>
<main>

    <section>
        <div class="container col-md-8">
            <form action="/teacher/main" method="post">
                <div><p id="message">${message}
                </p></div>
                <div class="form-group">
                    <label for="name">UserName</label>
                    <input type="hidden" style="display: none">
                    <input type="text" class="form-control" id="name" placeholder="UserName" name="name">
                    <span id="userSpan"></span>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                </div>
                <button type="submit" class="btn btn-default">登陆</button>
            </form>
        </div>
    </section>


</main>


</body>
<script type="text/javascript">
    $(function () {
        $("#name").change(function () {
            var name= $("#name").val();
            $.ajax({
                url:"/teacher/logIn/check",
                data:{"name":name},
                dataType:"json",
                type:"post",
                success:function(result) {
                    var p_message = $("#message");
                    p_message.text(result.mes);
                    p_message.addClass("text-danger");
            }
            });

        });
        var text = "${name}";
        if(text.length>0)
        $("#name").val(text);
    })
</script>

</html>


