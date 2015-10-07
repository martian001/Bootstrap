<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.head {
	
}

.head_top {
	background: #333 none repeat scroll 0 0;
	line-height: 37px;
	font-size: 14px;
}

.top_icon {
	float: left;
	margin-top: 4px;
}

.head ul li {
	float: left;
	padding-left: 5px;
	color: #e2e2e2;
}

.head ul li strong {
	display: inline-block;
	font-size: 10px;
}

.head ul li a {
	color: #e2e2e2;
}

.logo_img {
	margin-top: -10px;
	float: left;
}

@media ( max-width :767px) {
	.logo_img {
		width: 235px;
	}
}

#menu a {
	color: #333;
	font-size: 18px;
	float: left;
	line-height: 2px;
	margin-top: 16px;
}

.head a:hover {
	color: #f6ac00;
}

.top_text {

	margin: 0 auto;
	max-width: 1200px;
}

.head_menu {
   
	margin: 0 auto;
	max-width: 1200px;
	line-height: 50px;
	min-height: 50px;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-top: 10px;
}

.navbar-default {
	background-color: #fff;
	border-color: white;
	color: #333;
	font-size: 18px;
}

#menu a:hover {
	color: #f6ac00;
}
</style>
<div class="head">
	<div class="head_top">
		<div class="container">
			<div class="row top_text">
				<div class="col-md-6">
					<ul>
						<li><a href="#"><img src="images/base/top_icon.jpg"
								class="top_icon">Q房网</a></li>
						<li><strong>|</strong></li>
						<li>客服电话：4009-000-999</li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul style="float: right">
						<li><a href="#">帮助</a></li>
						<li><a href="#">关于我们</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="head_menu">
		<div class="container">
			<div class="row">
				<div class="row top_text">
					<div class="col-md-12">
						<nav role="navigation" class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" data-toggle="collapse"
									data-target="#navbar-collapse-menu" class="navbar-toggle">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a href="#" class="navbar-brand"><img
									src="images/base/logo.png" class="logo_img"></a>
							</div>
							<div id="navbar-collapse-menu" class="collapse navbar-collapse">
								<ul class="navbar-right nav navbar-nav" id="menu">
									<li><a href="index.jsp">首页 </a></li>
									<li><a href="emprunt.jsp">我要贷款</a></li>
									<li><a href="#">商务合作</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

