<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/17
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head>
    <title>老师界面</title>
</head>
<body>
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<section>
    <div class="container text-center display2">
        <h1>${className.name}${teacher.name}老师欢迎你</h1>
        <h2 class="text-left " style="color: #7affb6;">班级标语：${className.slogan}</h2>
    </div>
</section>
<section class="container">
    <h2 class="display3">班级学生信息：</h2>
    <div class="container text-center">

        <table class="w-100 table bg-info table-hover table-spriped table-bordered ">
            <thead >
            <tr class="text-center bg-primary">
                <th>学号</th>
                <th>名字</th>
                <th> 性别</th>
                <th>QQ号</th>
                <th>班级号</th>
                <th>寝室号</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="tbody">

            </tbody>


        </table>
        <div class="text-right">
            <a href="/student/addStudent" class="btn btn-info">添加学生</a>
        </div>

    </div>
</section>
<section>
    <div class="container">
        <h2 class="display2 ">模糊查询</h2>
        <form action="/teacher/select" class="form-inline">

            <div class="form-group col-md-2">
                <label for="name">名字：</label>
                <input type="text" class="form-control col-md-6" name="name" id="name">
            </div>
            <div class="form-group col-md-2">
                <label for="id">学号：</label>
                <input type="text" class="form-control col-md-6" name="id" id="id">
            </div>
            <div class="form-group col-md-2">
                <label for="sex">性别：</label>
                <select class="form-control" name="sex" id="sex" placeholder="">
                    <option>男</option>
                    <option>女</option>
                </select>
            </div>
            <div class="form-group col-md-2">
                <label for="roomId">寝室号：</label>
                <input type="text" class="form-control col-md-6" name="roomId" id="roomId">
            </div>
            <input style="display: none" type="number" value="${teacher.classId}" name="classId">
            <input type="submit" class="btn btn-info col-md-1" value="查询">
        </form>
    </div>
</section>
<section>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog"  role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    <form class="form h-50" method="post" action="/student/edit">
                        <div class="form-group">
                            <label for="name">名字</label>
                            <input name="name" id="e_name" type="text" value="${student.name}"
                                   class="form-control " placeholder="">
                        </div>
                        <div class="form-group">
                            <label>性别</label>
                            <input name="sex" id="e_sex" type="text" value="${student.sex}"
                                   class="form-control ">
                        </div>
                        <div class="form-group">
                            <label>班级</label>
                            <input name="classId" id="e_classId" type="number" value="${student.classId}"
                                   class="form-control ">
                        </div>
                        <div class="form-group">
                            <label>寝室号</label>
                            <input name="roomId" id="e_roomId" type="text" value="${student.roomId}"
                                   class="form-control">
                        </div>
                        <div class="form-group">
                            <label>QQ号</label>
                            <input name="qqNumber" id="e_qqNumber" type="text" value="${student.qqNumber}"
                                   class="form-control">
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
</section>
</body>

<script type="text/javascript">
    $(function () {
        var teacher = ${teacher.classId};
        function upListData() {
                $.ajax({
                    url:"/student/getListMessage",
                    data:"teacher="+teacher,
                    dataType:"json",
                    success:function (result) {
                        $.each(result.extend.list,function (name,value) {
                            var tr = "<tr class='text-center'><td>"+value.id+"</td>" +
                                "<td>"+value.name+"</td>" +
                                "<td>"+value.sex+"</td>" +
                                "<td>"+value.qqNumber+"</td>" +
                                "<td>"+value.classId+"</td>" +
                                "<td>"+value.roomId+"</td>" +
                                "<td>" +
                                "<button class='btn btn-danger change btn_edit' data-toggle='modal'" +
                                " data-target='#myModal'>修改</button>" +
                                " <button  class='btn btn-danger del btn_delete'>删除</button></td>" +
                                "<tr>";
                            $("#tbody").append(tr);
                        })
                    }
                });

            };
        upListData();
        $(document).on("click",".btn_delete",function () {
            var studentId = $(this).parents("tr").find("td:eq(0)").text();
            $.ajax({
                url:"/student/delete",
                data:"studentId="+studentId,
                dataType:"json",
                success:function () {
                    alert("删除成功");
                    $("#tbody").html("");
                    upListData();
                }
            });
        });
        $(document).on("click",".btn_edit",function () {
            var studentId = $(this).parents("tr").find("td:eq(0)").text();
            $.ajax({
                url:"/student/edit",
                data:"studentId="+studentId,
                dataType:"json",
                success:function (data) {

                }
            });
        });

    })


</script>
</html>
