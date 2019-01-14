<%--
  Created by IntelliJ IDEA.
  User: 胡栗涛
  Date: 2019/1/4
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- 如果想要对源码进行重写覆盖，将<style>放在此css下 -->
    <!-- 先引入jQuery核心js文件 -->
    <script src="../js/jquery-2.1.0.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- 引入自定义css文件 style.css -->
    <link rel="stylesheet" href="../css/style.css" type="text/css" />

    <style>
        body {
            margin-top: 20px;
            margin: 0 auto;
        }
        .carousel-inner .item img {
            width: 100%;
            height: 300px;
        }
        font {
            color: #666;
            font-size: 22px;
            font-weight: normal;
            padding-right: 17px;
        }
    </style>
</head>
<body>

<!-- login部分 -->
<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-4">
            <img src="../image/logo1.jpg" width="260px" height="60px"/>
        </div>
        <!-- hidden-xs:屏幕最小后不显示 -->
        <div class="col-md-6 hidden-xs col-sm-6" style="padding-top: 20px;">
            <p class="lead">九尾猫商城后台管理</p>
        </div>
        <div class="col-md-2 col-sm-2" style="padding-top: 30px;"></div>
    </div>
</div>


<div class="container" style=" height:500px; background: url('../image/background1.jpg') no-repeat;">
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-7">
            <div style="width: 440px;  padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 90px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <font>管理员登录</font>
                <div>&nbsp;</div>
                <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/login" method="post">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="username"
                                   name="username" placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;码</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="password"
                                   name="password" placeholder="请输入密码">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label> <input type="checkbox"> 自动登录</label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <label> <input type="checkbox"> 记住用户名</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div style="padding-left: 120px";class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">登录</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</div>
<!-- 广告图片 -->
<div class="container" style="margin-top: 60px;">
    <div class="row">
        <!--<div class="hidden-xs" style="padding-left: 14px;">-->
         <div>
            <img src="../image/footer.jpg" style="width: 98%;" />
        </div>
    </div>
</div>

<!-- 友情链接和版权信息 -->
<div class="container" style="text-align: center; margin-top: 10px;">
    <ul class="list-inline">
        <li><a href="#">关于我们</a></li>
        <li><a>联系我们</a></li>
        <li><a>招贤纳士</a></li>
        <li><a>法律声明</a></li>
        <li><a>友情链接</a></li>
        <li><a>支付方式</a></li>
        <li><a>配送方式</a></li>
        <li><a>服务声明</a></li>
        <li><a href="${pageContext.request.contextPath }/JSP/loginer.jsp">后台管理</a></li>
    </ul>
    <p style="text-align: center;margin-top: 20px; margin-bottom: 10px;">
        Copyright &copy;2018-12 九尾猫商城 版权所有
    </p>
</div>

</body>
</html>
