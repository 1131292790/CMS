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

    <title>Dynamic Table</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>

    <!--dynamic table-->
    <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet"/>
    <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css"/>
    <!--right slidebar-->
    <link href="css/slidebars.css" rel="stylesheet">
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
        <section class="wrapper">
            <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                       员工管理
                    </header>
                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button id="editable-sample_new" data-toggle="modal" href="#edit_staff" class="btn btn-primary">
                                    添加员工 <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <table class="table table-striped table-advance table-hover" id="move_staff_admin">
                            <thead>
                            <tr>
                                <th>员工编号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>学历</th>
                                <th>婚姻状态</th>
                                <th>部门</th>
                                <th>职位</th>
                                <th>在职状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><a href="#">3181911112</a></td>
                                <td>张强</td>
                                <td>女</td>
                                <td>高中</td>
                                <td>已婚</td>
                                <td class="center"><span class="label label-primary label-mini">业务部</span></td>
                                <td>JAVA工程师</td>
                                <td>在职</td>
                                <td>
                                    <button class="btn btn-primary btn-xs edit_staff_btn" data-toggle="modal" data-target="#edit_staff" onclick="loadEditModal($(this))" type="button"><i class="fa fa-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs del_staff_btn" data-toggle="modal" data-target="#del_staff"><i class="fa fa-trash-o "></i></button>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <!--编辑员工信息-->
                        <div class="modal fade modal-dialog-center" id="edit_staff" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content-wrap">
                                    <form class="cmxform form-horizontal tasi-form" id="editStaffForm" method="get"
                                          action="#" novalidate="novalidate">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-hidden="true">&times;
                                                </button>
                                                <h4 class="modal-title">员工信息编辑</h4>
                                            </div>
                                            <div class="modal-body">

                                                <div class="form-group ">
                                                    <label for="name" class="control-label col-lg-2">员工姓名</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="name" name="name"
                                                               type="text" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2">性别</label>
                                                    <label class="label_radio col-lg-3">
                                                        <input class="edit_gender"  name="gender" value="男" type="radio">男
                                                    </label>
                                                    <label class="label_radio col-lg-3">
                                                        <input class="edit_gender" name="gender" value="女" type="radio">女
                                                    </label>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label col-lg-2">学历</label>
                                                    <div class="col-lg-10">
                                                        <select class="form-control m-bot15" id="study_select">
                                                            <option value="小学">小学</option>
                                                            <option value="初中">初中</option>
                                                            <option value="中专">中专</option>
                                                            <option value="高中">高中</option>
                                                            <option value="大专">大专</option>
                                                            <option value="本科">本科</option>
                                                            <option value="硕士">硕士</option>
                                                            <option value="博士">博士</option>
                                                            <option value="其他">其他</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label col-lg-2">婚姻状态</label>
                                                    <div class="col-lg-10">
                                                        <select class="form-control m-bot15" id="marrige_select">
                                                            <option value="未婚">未婚</option>
                                                            <option value="已婚">已婚</option>
                                                            <option value="离婚">离婚</option>

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group ">
                                                    <label class="control-label col-lg-2">部门</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="department" name="name"
                                                               type="text" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label col-lg-2">职位</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="position" name="name"
                                                               type="text" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label col-lg-2">在职状态</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="status" name="name"
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
                        <!-- 编辑员工信息 -->


                        <!-- 删除员工 -->
                        <div class="modal fade" id="del_staff" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="index.jsp" method="post" id="delStaffForm">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title">提示:是否要删除员工信息?</h4>
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
                        <!-- 删除员工 -->

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
<script type="text/javascript" language="javascript"
        src="assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
<script src="js/respond.min.js"></script>

<!--dynamic table initialization -->
<script src="js/dynamic_table_init.js"></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>
<script>
    $(document).ready(function () {
        $("#staff_top_sidebar").addClass("active");
        $("#move_staff,#move_staff_admin").dataTable({
            "bSort": false//是否可排序
        });

    });
    function loadEditModal(e) {
            var sname = e.parents("tr").children("td:nth-child(2)").text();
            var sgender = e.parents("tr").children("td:nth-child(3)").text();
            var study = e.parents("tr").children("td:nth-child(4)").text();
            var smarrige = e.parents("tr").children("td:nth-child(5)").text();
            var sdept = e.parents("tr").children("td:nth-child(6)").children().text();
            var spos = e.parents("tr").children("td:nth-child(7)").text();
            var status = e.parents("tr").children("td:nth-child(8)").text();


            $("#name").val(sname);
            $(".edit_gender[value='"+sgender+"']").attr("checked",'checked');
    $("#study_select").val(study);
    $("#marrige_select").val(smarrige);
            $("#department").val(sdept);
            $("#position").val(spos);
            $('#status').val(status);
    }



</script>
</body>
</html>




