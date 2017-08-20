<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="zh-cmn-Hans"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="zh-cmn-Hans"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="zh-cmn-Hans"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="zh-cmn-Hans"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta name="Keywords" content="型月重工,约车,组队,游戏,wows,战舰世界,国服,南区,公会,舰队,型月,type-moon,TYPE-MOON Heavy Industries,萌豚,萌新,招新,招收,组队">
	<meta name="Description" content="这里是战舰世界国服南区<型月重工>舰队专用的约车系统。">
	<meta name="author" content="Hiei">
	<title>约车系统-注册</title>

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<!-- <link rel="shortcut icon" href="favicon.ico"> -->

	<link rel="stylesheet" href="../css/normalize.css">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/main.css">

	<!-- Modernizr JS -->
	<script src="../js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="../js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<div class="page-header">
				<h1>型月重工
					<small>TYPE-MOON Heavy Industries Inc.</small>
				</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-push-8">


			<!-- Start Sign In Form -->
			<form id="signup-form" action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
				<h2 class="form-header">账号注册</h2>
				<div class="form-group">
					<div id="email-input-error" name="input-error" class="alert alert-danger" role="alert">请输入格式正确的邮箱地址。</div>
					<div id="password-input-error" name="input-error" class="alert alert-danger" role="alert">请输入长度为6-12位密码，且只能由字母、数字、下划线组成。</div>
					<div id="re-password-input-error" name="input-error" class="alert alert-danger" role="alert">您两次输入的密码不一致。</div>
				</div>
				<div class="form-group">
					<label for="email" class="sr-only">电子邮箱</label>
					<input data-rule='pattern:"^([a-zA-Z0-9])+([a-zA-Z0-9._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9._-]+)+$"'
						   type="email" class="form-control" id="email" placeholder="电子邮箱" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="password" class="sr-only">密码</label>
					<input data-rule='pattern:"^[a-zA-Z0-9_]*$"|minlength:6|maxlength:12'
						   type="password" class="form-control" id="password" placeholder="请输入密码" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="re-password" class="sr-only">请再输入一次密码</label>
					<input data-rule='confirmed:"password"'
						   type="password" class="form-control" id="re-password" placeholder="请再输入一次密码" autocomplete="off">
				</div>
				<div class="form-group">
					<p>已经注册过了？ <a href="../view/signin.html">登录</a></p>
				</div>
				<div class="form-group">
					<input type="submit" value="注&nbsp;&nbsp;册" class="btn btn-primary">
				</div>
			</form>
			<!-- END Sign In Form -->


		</div>
	</div>
	<div class="row" style="padding-top: 60px; clear: both;">
		<div class="col-md-12 text-center">
			<p><small>
				<a href="../view/index.html" target="_blank" title="型月重工">-&nbsp;TYPE-MOON Heavy Industries Inc.&nbsp;- </a>
				All Rights Reserved.
			</small></p>
		</div>
	</div>
</div>

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="../js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="../js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="../js/main.js"></script>

<!-- Customized Source -->
<!-- validator JS -->
<script src="../js/jquery.md5.js"></script>
<script src="../js/validator.js"></script>
<script src="../js/input_validator.js"></script>
<!-- SignUp JS -->
<script src="signup.js"></script>

</body>
</html>
