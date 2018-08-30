<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/16
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head>
    <title>添加学生</title>
</head>
<body>
<section class="h-100">
    <div class="container h-60">
        <h2 class="display-3 text-center mt-5"> 添加学生</h2>
        <form class="form h-50" method="post" action="/student/addStudent">
            <div class="form-group">
                <label >学号:</label>
                <input name="id" id="id" type="text" class="form-control">
            </div>
            <div class="form-group ">
                <label>名字:</label>
                <input name="name" id="name" type="text" class="form-control">
            </div>
            <div class="form-group ">
                <label>性别:</label>
                <input name="sex" id="sex" type="text" class="form-control">
            </div>
            <div class="form-group ">
                <label>班级:</label>
                <input name="classId" id="classId" type="number" class="form-control">
            </div>
            <div class="form-group">
                <label>寝室号:</label>
                <input name="roomId" id="roomId" type="text" class="form-control">
            </div>
            <div class="form-group ">
                <label>QQ号:</label>
                <input name="qqNumber" id="qqNumber" type="text" class="form-control">
            </div>
            <br>
            <input value="提交" type="submit" class="btn btn-info" class="form-control">
        </form>
    </div>
</section>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</body>
</html>