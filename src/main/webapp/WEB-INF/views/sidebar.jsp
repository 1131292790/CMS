<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <!--                  员工信息管理-->
            <li class="sub-menu">
                <a id="staff_top_sidebar" href="/staff">
                    <i class="fa fa-users"></i>
                    <span>员工管理</span>
                </a>

            </li>
            <!--                  调动管理-->
            <li class="sub-menu">
                <a href="#">
                    <i class="fa fa-wheelchair"></i>
                    <span>调动管理</span>
                </a>

                <ul class="sub">
                    <li id="staff_move_sidebar"><a href="/move">员工调动</a></li>
                    <li id="staff_join_sidebar"><a href="/join">员工入职</a></li>
                    <li id="staff_leave_sidebar"><a href="/quit">员工离职</a></li>
                    <li id="staff_retire_sidebar"><a href="/retire">退休管理</a></li>
                </ul>
            </li>
            <!--                  部门管理-->
            <li class="sub-menu" >
                <a  id="department_sidebar" href="/department">
                    <i class="fa fa-tasks"></i>
                    <span>部门管理</span>
                </a>
            </li>
            <!--                  工资管理-->
            <li class="sub-menu">
                <a href="#">
                    <i class="fa fa-money"></i>
                    <span>工资管理</span>
                </a>
                <ul class="sub">
                    <li id="sallary_info"><a href="/sallary">工资信息</a></li>
                    <li id="reward_info"><a  href="/reward">奖惩信息</a></li>
                </ul>
            </li>
            <!--请假管理-->
            <li class="sub-menu">
                <a id="absent_info" href="/leave">
                    <i class="fa fa-home"></i>
                    <span>请假管理</span>
                </a>
            </li>
            <!--考勤管理-->
            <li class="sub-menu" >
                <a id="attend_info" href="/attend">
                    <i class="fa fa-credit-card"></i>
                    <span>考勤管理</span>
                </a>
            </li>




        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>



<script>


</script>

