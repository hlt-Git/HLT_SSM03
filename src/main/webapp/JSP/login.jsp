<%--
  Created by IntelliJ IDEA.
  User: 胡栗涛
  Date: 2019/1/3
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会员登录</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- 如果想要对源码进行重写覆盖，将<style>放在此css下 -->
    <!-- 先引入jQuery核心js文件 -->
    <script type="text/javascript" src="../js/jquery-2.1.0.min.js"></script>
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

    <script type="text/javascript">

        function change() {
            document.getElementById("changecode").src="${pageContext.request.contextPath}/code/createCode?a"+new Date()
        }

    </script>

</head>
<body>

<!-- login部分 -->


<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-4">
            <img src="../image/logo1.jpg" width="260px" height="60px"/>
        </div>
        <!-- hidden-xs:屏幕最小后不显示 -->
        <div class="col-md-6 hidden-xs col-sm-6" style="padding-top: 10px;">
            <img src="../image/header.png" />
        </div>
        <div class="col-md-2 col-sm-2" style="padding-top: 30px;">
            <a href="${pageContext.request.contextPath }/JSP/regist.jsp">注册</a>
            <a href="${pageContext.request.contextPath }/JSP/cart.jsp">我的购物车</a>
        </div>
    </div>
</div>

<!-- 导航栏 -->
<div class="container" style="margin-top: 10px;">
    <%--<nav class="navbar navbar-inverse">--%>
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">首页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">手机数码 <span class="sr-only">(current)</span></a>
                </li>
                <li>
                    <a href="#">家用电器</a>
                </li>
                <li>
                    <a href="#">电脑办公</a>
                </li>
                <li>
                    <a href="#">美食天下</a>
                </li>
                <li>
                    <a href="#">天猫国际</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">所有分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">手机数码</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="#">家用电器</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="#">电脑办公</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="#">美食天下</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="#">天猫国际</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
    </nav>
</div>

<div class="container" style=" height:500px; background: url('../image/background2.png') no-repeat;">
    <div class="row">
        <div class="col-md-6">
        </div>

        <div class="col-md-6">
            <div style="width: 440px;  padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 60px;">
                <font>会员登录</font>USER LOGIN
                <div>&nbsp;</div>
                <form class="form-horizontal" action="${pageContext.request.contextPath}/user/login" method="post">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="username"
                                   name="username" placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;码</label>
                        <div class="col-sm-7">
                            <input type="password" class="form-control" id="password"
                                   name="password" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-sm-2 control-label">验证码</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="code"
                                   name="code" placeholder="请输入验证码">
                        </div>
                        <div class="col-sm-3">
                            <img id="changecode" onclick="change()" style="width:80px;height:30px" src="${pageContext.request.contextPath}/code/createCode" />
                            &nbsp;&nbsp;&nbsp;点击刷新
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
                        <div class="col-sm-offset-2 col-sm-10">
                            &nbsp;&nbsp;
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
        <%--<div style="padding-right: 30px;">--%>
         <div>
            <img src="../image/footer.jpg" style="width: 90%;" />
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