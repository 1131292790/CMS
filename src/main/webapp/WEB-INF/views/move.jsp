<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>人事管理系统 | 调动管理</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
    <!--right slidebar-->
    <link href="css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

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
        <section class="wrapper">
            <!-- page start-->
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            员工调动记录查询
                        </header>
                        <div class="panel-body">
                            <div class="adv-table">
                                <table  class="display table table-bordered table-striped" id="move_staff">
                                    <thead>
                                    <tr>
                                        <th>员工编号</th>
                                        <th>调动人</th>
                                        <th>调动时间</th>
                                        <th>调动原因</th>
                                        <th>旧部门</th>
                                        <th>新部门</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="gradeX">
                                        <td>3181911112</td>
                                        <td>周琦</td>
                                        <td>2020-6-20</td>
                                        <td class="center ">员工申请</td>
                                        <td class="center"><span class="label label-primary label-mini">业务部</span></td>
                                        <td class="center"><span class="label label-success label-mini">技术部</span></td>

                                    </tr>

                                </table>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            管理员调动管理
                        </header>
                        <div class="panel-body">
                            <div class="clearfix">
                                <div class="btn-group">
                                    <button id="editable-sample_new" class="btn btn-primary" data-target="#add_move" data-toggle="modal">
                                        添加调动 <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        <table class="table table-striped table-advance table-hover" id="move_staff_admin">
                            <thead>
                            <tr>
                                <th>员工编号</th>
                                <th>调动时间</th>
                                <th>调动原因</th>
                                <th>旧部门</th>
                                <th>新部门</th>
                                                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><a href="#">3181911112</a></td>
                                <td>2020-01-22</td>
                                <td>升职</td>
                                <td class="center"><span class="label label-primary label-mini">业务部</span></td>
                                <td class="center"><span class="label label-success label-mini">技术部</span></td>
                                <td>
                                    <button class="btn btn-primary btn-xs" data-target="#edit_move" data-toggle="modal" onclick="loadMoveEditModal($(this))" ><i class="fa fa-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs" data-target="#del_move" data-toggle="modal"><i class="fa fa-trash-o "></i></button>
                                </td>
                            </tr>
                            </tbody>
                        </table>


                            <!--新增-->
                            <div class="modal fade modal-dialog-center" id="add_move" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content-wrap">
                                        <form class="cmxform form-horizontal tasi-form" id="addMoveForm" method="get"
                                              action="#" novalidate="novalidate">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;
                                                    </button>
                                                    <h4 class="modal-title">调动新增</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="form-group ">
                                                        <label for="sno" class="control-label col-lg-2">员工编号</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="sno" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="reason" class="control-label col-lg-2">调动原因</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="reason" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="old_department" class="control-label col-lg-2">旧部门</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="old_department" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="new_department" class="control-label col-lg-2">新部门</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="new_department" name="name"
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

                            <!-- 删除 -->
                            <div class="modal fade" id="del_move" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="#" method="post" id="delMoveForm">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    ×
                                                </button>
                                                <h4 class="modal-title">提示:是否要删除调动信息?</h4>
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
                            <div class="modal fade modal-dialog-center" id="edit_move" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content-wrap">
                                        <form class="cmxform form-horizontal tasi-form" id="editMoveForm" method="get"
                                              action="#" novalidate="novalidate">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;
                                                    </button>
                                                    <h4 class="modal-title">调动修改</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="form-group ">
                                                        <label for="sno1" class="control-label col-lg-2">员工编号</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="sno1" name="name"
                                                                   type="text" autocomplete="off" disabled>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="reason1" class="control-label col-lg-2">调动原因</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="reason1" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="old_department1" class="control-label col-lg-2">旧部门</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="old_department1" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="new_department1" class="control-label col-lg-2">新部门</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="new_department1" name="name"
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
        </section>
            <!-- page end-->
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
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
<script src="js/respond.min.js" ></script>

<!--dynamic table initialization -->
<script src="js/dynamic_table_init.js"></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>
<script>
    $(function () {
        $("#staff_move_sidebar").parents("li").children("a").addClass("active");
        $("#staff_move_sidebar").parents("ul").attr("style","display:block");
        $("#staff_move_sidebar").addClass("active");

        $("#move_staff,#move_staff_admin").dataTable({
            "bSort": false//是否可排序
        });

    })


    function loadMoveEditModal(e) {
        var sno = e.parents("tr").children("td:nth-child(1)").text();
        var reason = e.parents("tr").children("td:nth-child(3)").text();
        var old_dept = e.parents("tr").children("td:nth-child(4)").children().text();
        var new_dept = e.parents("tr").children("td:nth-child(5)").children().text();



        $("#sno1").val(sno);
        $("#reason1").val(reason);
        $("#old_department1").val(old_dept);
        $("#new_department1").val(new_dept);


    }
</script>
</body>
</html>
