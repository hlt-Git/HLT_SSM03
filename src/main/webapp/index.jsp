<%--
  Created by IntelliJ IDEA.
  User: 胡栗涛
  Date: 2019/1/4
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">

    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>商城首页</title>

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 如果想要对源码进行重写覆盖，将<style>放在此css下 -->
    <!-- 先引入jQuery核心js文件 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.min.js"></script>

</head>

<body>
<!-- login部分 -->
<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-4">
            <img src="image/logo1.jpg" width="260px" height="60px"/>
        </div>
        <!-- hidden-xs:屏幕最小后不显示 -->
        <div class="col-md-6 hidden-xs col-sm-6" style="padding-top: 10px;">
            <img src="image/header.png" />
        </div>
        <div class="col-md-2 col-sm-2" style="padding-top: 30px;">
            <a href="${pageContext.request.contextPath }/JSP/login.jsp">登录</a>
            <a href="${pageContext.request.contextPath }/JSP/regist.jsp">注册</a>
            <a href="${pageContext.request.contextPath }/JSP/cart.jsp">购物车</a>
        </div>
    </div>
</div>

<!-- 导航栏 -->
<div class="container" style="margin-top: 20px;">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
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

<!-- 轮播图 -->
<div class="container">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- 设置轮播图片的数量,从0开始 -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- 轮播的图片 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="image/1.jpg" alt="图片无法显示时的说明">
                <div class="carousel-caption">
                    简介1：
                </div>
            </div>
            <div class="item">
                <img src="image/2.jpg" alt="图片无法显示时的说明">
                <div class="carousel-caption">
                    简介2：
                </div>
            </div>
            <div class="item">
                <img src="image/3.jpg" alt="图片无法显示时的说明">
                <div class="carousel-caption">
                    简介3：
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!-- 热门商品 -->
<div class="container" style="margin-top: 10px;">
    <!-- 上面文字内容 -->
    <div class="row">
				<span style="font-size: 30px; padding-left: 35px;">
					热门商品&nbsp;&nbsp;&nbsp;<img src="image/title2.jpg" />
				</span>
    </div>

    <!-- 图片内容 -->
    <div class="row" style="margin-top: 10px;">
        <!-- 左边图片-->
        <div class="col-md-2 col-sm-2 hidden-xs hidden-sm" style="height: 400px;">
            <img src="image/big01.jpg" height="100%" />
        </div>
        <!-- 右边图片 -->
        <div class="col-md-10 col-sm-10" style="padding-left: 10px;">
            <!-- 右上图片 -->
            <div class="row">
                <div class="col-md-6 hidden-xs hidden-sm" style="height: 200px; width: 490px;">
                    <a href="#"><img src="image/middle01.jpg" height="100%" width="100%" /></a>
                </div>
                <!-- col-sm:指平板 -->
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small01.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">豆浆机</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;699</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small02.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">液晶显示器</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;1599</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small03.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">电饭锅</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;299</span>
                    </p>
                </div>
            </div>
            <!-- 右下图片 -->
            <div class="row" style="padding-top: 10px;">
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small04.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">蒸锅</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;399</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small05.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">净水器</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;300</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small06.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">滚筒洗衣机</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;899</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small07.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">扫地机器人</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;799</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small08.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">电饭煲</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;499</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small09.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">微波炉</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;399</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 广告图片 -->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <!--<div class="hidden-xs" style="padding-left: 14px;">-->
        <div style="padding-left: 14px;">
            <img src="image/ad.jpg" style="width: 98%;" />
        </div>
    </div>
</div>

<!-- 最新商品 -->
<div class="container" style="margin-top: 10px;">
    <!-- 上面文字内容 -->
    <div class="row">
				<span id="" style="font-size: 30px; padding-left: 35px;">
					最新商品&nbsp;&nbsp;&nbsp;<img src="image/title2.jpg" />
				</span>
    </div>

    <!-- 图片内容 -->
    <div class="row" style="margin-top: 10px;">
        <!-- 左边图片-->
        <div class="col-md-2 col-sm-2 hidden-xs hidden-sm" style="height: 400px;">
            <img src="image/big01.jpg" height="100%" />
        </div>
        <!-- 右边图片 -->
        <div class="col-md-10 col-sm-10" style="padding-left: 10px;">
            <!-- 右上图片 -->
            <div class="row">
                <div class="col-md-6 hidden-xs hidden-sm" style="height: 200px; width: 490px;">
                    <a href="#"><img src="image/middle01.jpg" height="100%" width="100%" /></a>
                </div>
                <!-- col-sm:指平板 -->
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small01.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">豆浆机</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;699</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small02.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">液晶显示器</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;1599</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small03.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">电饭锅</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;299</span>
                    </p>
                </div>
            </div>
            <!-- 右下图片 -->
            <div class="row" style="padding-top: 10px;">
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small04.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">蒸锅</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;399</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small05.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">净水器</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;300</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small06.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">滚筒洗衣机</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;899</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small07.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">扫地机器人</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;799</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small08.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">电饭煲</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;499</span>
                    </p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4" align="center">
                    <a href="#"><img src="image/small09.jpg" /></a>
                    <p>
                        <a href="#">
                            <span style="color: gray">微波炉</span>
                        </a>
                    </p>
                    <p>
                        <span style="color: red">&yen;399</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 广告图片 -->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <!--<div class="hidden-xs" style="padding-left: 14px;">-->
        <div style="padding-left: 14px;">
            <img src="image/footer.jpg" style="width: 98%;" />
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
