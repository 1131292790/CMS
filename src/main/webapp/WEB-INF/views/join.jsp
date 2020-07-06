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
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
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
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            员工入职
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="name" class="control-label col-lg-2">员工姓名</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="name" name="name" type="text" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label col-lg-2">性别</label>
                                        <label class="label_radio col-lg-3">
                                            <input name="gender"  value="男" type="radio" checked>男
                                        </label>
                                        <label class="label_radio col-lg-3">
                                            <input name="gender" value="女" type="radio">女
                                        </label>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label col-lg-2">学历</label>
                                        <div class="col-lg-10">
                                            <select class="form-control m-bot15">
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
                                            <select class="form-control m-bot15">
                                                <option value="未婚">未婚</option>
                                                <option value="已婚">已婚</option>
                                                <option value="离婚">离婚</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button class="btn btn-danger" type="submit">确定</button>
                                            <button class="btn btn-default" type="button">取消</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
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
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>

<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" language="javascript" src="assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
<script src="js/respond.min.js" ></script>


<script type="text/javascript" src="assets/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
<script src="js/respond.min.js" ></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>
<script>
    $(function () {
        $("#staff_join_sidebar").parents("li").children("a").addClass("active");
        $("#staff_join_sidebar").parents("ul").attr("style","display:block");
        $("#staff_join_sidebar").addClass("active");
        $("#join_staff").dataTable({
            "bSort": false//是否可排序
        });
    })
</script>
</body>
</html>
