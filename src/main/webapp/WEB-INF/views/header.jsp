<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header white-bg">
    <div class="sidebar-toggle-box">
        <div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-bars tooltips"></div>
    </div>
    <!--logo start-->
    <a href="index.jsp" class="logo">人事管理<span>系统</span></a>
    <!--logo end-->

    <div class="top-nav ">
        <ul class="nav pull-right top-menu">
            <li>
                <input type="text" class="form-control search" placeholder="Search">
            </li>
            <!-- user login dropdown start-->
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <span class="username">${sessionScope.admin.username}</span>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu extended logout">
                    <div class="log-arrow-up"></div>
<%--                    <li><a href="user_profile.jsp"><i class=" fa fa-suitcase"></i>我的档案</a></li>--%>
<%--                    <li><a href="edit_password.jsp"><i class=" fa fa-lock"></i>密码修改</a></li>--%>
                    <li><a href="logout"><i class="fa fa-key"></i> 退出登录</a></li>
                </ul>
            </li>

        </ul>
    </div>
</header>