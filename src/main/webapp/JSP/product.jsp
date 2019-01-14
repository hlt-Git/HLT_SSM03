<%--
  Created by IntelliJ IDEA.
  User: 胡栗涛
  Date: 2019/1/9
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商品管理</title>
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
        <div class="col-md-5 hidden-xs col-sm-6" style="padding-top: 20px;">
            <p class="lead">九尾猫后台商城管理</p>
        </div>
        <div class="col-md-3 col-sm-2" style="padding-top: 30px;">
            <span style="color: #2aabd2;font-size: 16px">欢迎管理员：${sessionScope.Admin}</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><a href="${pageContext.request.contextPath }/admin/remove">安全退出</a></span>
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
<div class="container">
    <div class="row">
        <div style="margin: 0 auto; margin-top: 10px; width: 1100px;">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="tabbable" id="tabs-99300">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#panel-751567" data-toggle="tab">商品列表</a>
                                </li>
                                <li>
                                    <a href="#panel-444486" data-toggle="tab">添加商品</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="panel-751567">
                                    <table class="table table-bordered">
                                        <tr style="align-content: center">
                                            <th>图片</th>
                                            <th>商品</th>
                                            <th>价格</th>
                                            <th>数量</th>
                                            <th>简介</th>
                                            <th>操作</th>
                                            <th>操作</th>
                                        </tr>
                                        <c:forEach items="${requestScope.products}" var="product">
                                            <tr class="success">
                                                <th colspan="7">订单编号:${product.id}</th>
                                            </tr>
                                            <tr class="active">
                                                <td width="60" width="40%"><input type="hidden" name="id" value="22">
                                                    <img src="../image/芒果.jpg" width="70" height="60">
                                                </td>
                                                <td style="width: 20%;padding-top: 25px"><a target="_blank">${product.productname}</a></td>
                                                <td style="color: red;width: 10%;padding-top: 25px">￥${product.price}</td>
                                                <td style="color: gray;width: 10%;padding-top: 25px">${product.number}</td>
                                                <td style="color: gray;width: 25%;padding-top: 25px">${product.description}</td>
                                                <td style="width: 5%;padding-top: 25px">
                                                    <a href="${pageContext.request.contextPath }/product/toUpdate?id=${product.id }">
                                                        <button type="submit" class="btn btn-info">修改</button>
                                                    </a>
                                                </td>
                                                <td style="width: 5%;padding-top: 25px">
                                                    <a href="${pageContext.request.contextPath }/product/delete?id=${product.id }">
                                                        <button type="submit"  class="btn btn-primary">删除</button>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                    <div style="text-align: center;">
                                        <ul class="pagination">
                                            <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">6</a></li>
                                            <li><a href="#">7</a></li>
                                            <li><a href="#">8</a></li>
                                            <li><a href="#">9</a></li>
                                            <li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                            </a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-pane row" id="panel-444486">
                                    <div style="background: #fff;width: 100%;height: 300px;padding-left: 500px;padding-top: 80px">
                                        <%--弹框按钮--%>
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                            点我添加
                                        </button>
                                    </div>
                                    <!-- 弹框 Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">添加商品</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <%--内部代码开始--%>
                                                    <div class="container" style="width: 100%;">
                                                        <div class="row">
                                                            <div class="col-md-12" style="background: #fff; padding: 40px 80px;">
                                                                <form class="form-horizontal" style="margin-top: 5px;" action="${pageContext.request.contextPath}/product/add" method="post">
                                                                    <div class="form-group">
                                                                        <span class="col-sm-3 control-label">商品图片</span>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" name="productimage" placeholder="请上传商品图片">
                                                                            <input type="file">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <span class="col-sm-3 control-label">商品名称</span>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" name="productname" placeholder="请输入商品名称">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <span class="col-sm-3 control-label">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</span>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" name="price" placeholder="请输入商品价格">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <span class="col-sm-3 control-label">录入库存</span>
                                                                        <div class="col-sm-9">
                                                                            <input r type="text" class="form-control" name="number" placeholder="请输入商品库存">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <span class="col-sm-3 control-label">简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介</span>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" name="description" placeholder="请输入商品简介">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group" style="padding-top: 30px">
                                                                        <div class="col-sm-offset-2 col-sm-10" style="padding-left: 70px">
                                                                            <button type="submit" class="btn btn-info" style="width:120px">提交</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--内部代码结束--%>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--弹框结束--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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