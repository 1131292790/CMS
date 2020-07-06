<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="descriptio" content="">
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
                            奖惩管理
                        </header>
                        <div class="panel-body">
                            <div class="clearfix">
                                <div class="btn-group">
                                    <button id="editable-sample_new" class="btn btn-primary" data-target="#add_reward" data-toggle="modal">
                                        添加奖惩 <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                            <table class="table table-striped table-advance table-hover" id="staff_table">
                                <thead>
                                <tr>
                                    <th><i class="fa fa-bullhorn"></i>奖惩编号</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 员工编号</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 管理员编号</th>
                                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 时间</th>
                                    <th><i class=" fa fa-edit"></i> 奖惩原因</th>
                                    <th><i class=" fa fa-edit"></i> 奖惩类型</th>
                                    <th><i class=" fa fa-edit"></i> 奖惩金额</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <a href="#">
                                            00000001
                                        </a>
                                    </td>
                                    <td>3181911112</td>
                                    <td>123456</td>
                                    <td>2020-05-06</td>
                                    <td>加班</td>
                                    <td>奖励</td>
                                    <td>200</td>
                                    <td>
                                        <button class="btn btn-primary btn-xs" data-target="#edit_reward" data-toggle="modal" onclick="loadRewardEditModal($(this))"><i class="fa fa-pencil"></i></button>
                                        <button class="btn btn-danger btn-xs" data-target="#del_reward" data-toggle="modal"><i class="fa fa-trash-o "></i></button>
                                    </td>

                                </tr>
                                </tbody>
                            </table>
                            <!--新增-->
                            <div class="modal fade modal-dialog-center" id="add_reward" tabindex="-1" role="dialog"
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
                                                    <h4 class="modal-title">新增奖惩</h4>
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
                                                        <label for="old_department" class="control-label col-lg-2">类型</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="old_department" name="name"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="new_department" class="control-label col-lg-2">奖惩金额</label>
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
                            <div class="modal fade" id="del_reward" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="#" method="post" id="delMoveForm">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    ×
                                                </button>
                                                <h4 class="modal-title">提示:是否要删除奖惩信息?</h4>
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
                            <div class="modal fade modal-dialog-center" id="edit_reward" tabindex="-1" role="dialog"
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

                                                    <div class="form-group">
                                                        <label for="reason1" class="control-label col-lg-2">调动原因</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="reason1" name="reason"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="type" class="control-label col-lg-2">类型</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="type" name="type"
                                                                   type="text" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="num" class="control-label col-lg-2">金额</label>
                                                        <div class="col-lg-10">
                                                            <input class=" form-control" id="num" name="num"
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
        $("#reward_info").parents("li").children("a").addClass("active");
        $("#reward_info").parents("ul").attr("style","display:block");
        $("#reward_info").addClass("active");
        $('#staff_table').dataTable({
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
            }
        });

    });

    function loadRewardEditModal(e) {
        var f1 = e.parents("tr").children("td:nth-child(5)").text();
        var f2 = e.parents("tr").children("td:nth-child(6)").text();
        var f3 = e.parents("tr").children("td:nth-child(7)").text();



        $("#reason1").val(f1);
        $("#type").val(f2);
        $("#num").val(f3);


    }
</script>

</body>
</html>

