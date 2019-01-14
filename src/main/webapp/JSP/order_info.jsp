<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>订单信息</title>
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
		<div class="col-md-4 hidden-xs col-sm-6" style="padding-top: 20px;">
			<p class="lead" style="color: #ce8483">九尾猫商城支付</p>
		</div>
		<div class="col-md-4 col-sm-2" style="padding-top: 30px;">
			<span style="color: #2aabd2;font-size: 16px">欢迎：${sessionScope.User}</span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/JSP/cart.jsp">查看购物车</a>
			<span><a href="${pageContext.request.contextPath }/user/remove">安全退出</a></span>
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
			<div style="margin: 0 auto; margin-top: 10px; width: 950px;">
				<strong>订单详情</strong>
				<table class="table table-bordered">
					<tbody>
						<tr class="warning">
							<th colspan="5">订单编号:9005</th>
						</tr>
						<tr class="warning">
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						<tr class="active">
							<td width="60" width="40%"><input type="hidden" name="id"
								value="22"> <img src="../image/donggua.jpg" width="70"
								height="60"></td>
							<td width="30%"><a target="_blank"> 有机蔬菜 冬瓜...</a></td>
							<td width="20%">￥298.00</td>
							<td width="10%">2</td>
							<td width="15%"><span class="subtotal">￥596.00</span></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div style="text-align: right; margin-right: 120px;">
				商品金额: <strong style="color: #ff6600;">￥596.00元</strong>
			</div>

		</div>

		<div>
			<hr />
			<form class="form-horizontal"
				style="margin-top: 5px; margin-left: 150px;">
				<div class="form-group">
					<label for="username" class="col-sm-1 control-label">地&nbsp;&nbsp;&nbsp;址</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="username"
							placeholder="请输入收货地址">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">收货人</label>
					<div class="col-sm-5">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="请输收货人">
					</div>
				</div>
				<div class="form-group">
					<label for="confirmpwd" class="col-sm-1 control-label">电&nbsp;&nbsp;&nbsp;话</label>
					<div class="col-sm-5">
						<input type="password" class="form-control" id="confirmpwd"
							placeholder="请输入联系方式">
					</div>
				</div>
			</form>

			<hr />

			<div style="margin-top: 5px; margin-left: 150px;">
				<strong>选择银行：</strong>
				<p>
					<br /> <input type="radio" name="pd_FrpId" value="ICBC-NET-B2C"
						checked="checked" />工商银行 <img src="../bank_img/icbc.bmp"
						align="middle" />&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="pd_FrpId" value="BOC-NET-B2C" />中国银行 <img
						src="../bank_img/bc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行 <img
						src="../bank_img/abc.bmp" align="middle" /> <br /> <br /> <input
						type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行 <img
						src="../bank_img/bcc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="PINGANBANK-NET" />平安银行
					<img src="../bank_img/pingan.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" />建设银行 <img
						src="../bank_img/ccb.bmp" align="middle" /> <br /> <br /> <input
						type="radio" name="pd_FrpId" value="CEB-NET-B2C" />光大银行 <img
						src="../bank_img/guangda.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C" />招商银行
					<img src="../bank_img/cmb.bmp" align="middle" />

				</p>
				<hr />
				<p style="text-align: right; margin-right: 100px;">
					<a href="javascript:document.getElementById('orderForm').submit();">
						<img src="../image/finalbutton.gif" width="204" height="51"
						border="0" />
					</a>
				</p>
				<hr />

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