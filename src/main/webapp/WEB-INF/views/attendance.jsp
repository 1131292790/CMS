<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Editable Table</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css"/>

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<section id="container" class="">
    <!--header start-->
    <jsp:include page="header.jsp"/>
    <!--header end-->
    <!--sidebar start-->
    <jsp:include page="sidebar.jsp"/>

    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper site-min-height">
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            考勤管理
                        </header>
                        <div class="panel-body">
                            <table class="table table-striped table-advance table-hover" id="staff_table">
                                <thead>
                                <tr>
                                    <th><i class="fa fa-bullhorn"></i>考勤编号</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 员工编号</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 上班时间</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 下班时间</th>
                                    <th><i class=" fa fa-edit"></i> 日期</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${attendList}" var="attend">
                                        <tr>
                                            <td><i class="fa fa-bullhorn"></i>${attend.ano}</td>
                                            <td class="hidden-phone"><i class="fa fa-question-circle"></i> ${attend.sno}</td>
                                            <td class="hidden-phone"><i class="fa fa-question-circle"></i> ${attend.stime}</td>
                                            <td class="hidden-phone"><i class="fa fa-question-circle"></i> ${attend.etime}</td>
                                            <td><i class=" fa fa-edit"></i> ${attend.adate}</td>
                                            <td>
                                                <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit_attend" onclick="loadAttendEditModal($(this))" type="button"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#del_attend" onclick="loadAttendDelModal($(this))"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                            <!-- 删除 -->
                            <div class="modal fade" id="del_attend" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="attend/del" method="post" >
                                            <div class="modal-header">
                                                <input type="hidden" id="attend_id" name="attend_id">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    ×
                                                </button>
                                                <h4 class="modal-title">提示:是否要删除请假信息?</h4>
                                            </div>

                                            <div class="modal-footer">
                                                <button data-dismiss="modal" class="btn btn-default" type="button">否
                                                </button>
                                                <button class="btn btn-success" type="submit">是</button>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 删除 -->

                            <!--编辑-->
                            <div class="modal fade modal-dialog-center" id="edit_attend" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content-wrap">
                                        <form class="cmxform form-horizontal tasi-form" method="post"
                                              action="attend/update" novalidate="novalidate">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <input type="hidden" id="attend_id_update" name="ano">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;
                                                    </button>
                                                    <h4 class="modal-title">修改考勤</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="form-group">
                                                        <label for="start_time" class="control-label col-lg-2">上班时间</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="start_time" name="stime"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="end_time" class="control-label col-lg-2">下班时间</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="end_time" name="etime"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button data-dismiss="modal" class="btn btn-default" type="button">
                                                        取消
                                                    </button>
                                                    <button class="btn btn-warning" type="submit">保存</button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>

                                </div>
                            </div>
                            <!--编辑-->
                        </div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">
            2013 &copy; FlatLab by VectorLab.
            <a href="#" class="go-top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<%--dataTables--%>
<script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>


<!--right slidebar-->
<script src="js/slidebars.min.js"></script>
<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<%--本页js--%>
<script>
    $(function () {
        $("#attend_info").addClass("active");
        $('#staff_table').dataTable({
            "data": [
                [ "Tiger Nixon", "System Architect", "$3,120", "2011/04/25", "Edinburgh", 5421 ],
                [ "Garrett Winters", "Director", "$8,422", "2011/07/25", "Edinburgh", 8422 ],
            ],
            "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
            "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "所有"]],//设置每页显示数据条数的下拉选项
            'iDisplayLength': 5, //每页初始显示5条记录
            "bInfo": true, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
            "bPaginate": true, //开关，是否显示分页器
            "bSort": false, //是否可排序 
            "sPaginationType": "bootstrap",
            "oLanguage":{  //语言转换
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共_TOTAL_ 项",
                "sLengthMenu": "每页显示 _MENU_ 项结果",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页"
                }
            },


        });

    });

    function loadAttendEditModal(e) {
        var attendId = e.parents("tr").children("td:nth-child(1)").text();
        var f1 = e.parents("tr").children("td:nth-child(3)").text();
        var f2 = e.parents("tr").children("td:nth-child(4)").text();
        $("#start_time").val(f1);
        $("#end_time").val(f2);
        $("#attend_id_update").val(attendId);
    }


    function loadAttendDelModal(e) {
        var attendId = e.parents("tr").children("td:nth-child(1)").text();
        $("#attend_id").val(attendId);
    }
</script>

</body>
</html>

