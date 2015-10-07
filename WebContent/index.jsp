<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="base.css">
<link rel="stylesheet" href="index.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>首页</title>
<script type="text/javascript">
function sel_apply(productType){
	javascript:window.scrollTo( 0, 0 );
    $("#categoryId option[value="+productType+"]").attr("selected", true);
	$("#money").focus();
}
</script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<jsp:include page="apply.jsp"></jsp:include>
	<div class="center_panel">
		<div class="container product_type_div hidden-xs">
			<div class="col-md-2 product_type_image_div">
				<img src="images/base/index-img-1.jpg" class="product_type">
			</div>
			<div class="col-md-10">
				<div class="col-md-12 product_detailed">赎楼贷：赎楼贷是Q房金融推出的帮助业主结清房产贷款,保障卖房交易顺利进行的贷款</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="text_1">放款时间</p>

						<p class="text_2">最快3天</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">贷款期限</p>

						<p class="text_2">3个月以内</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">最高申请额</p>

						<p class="text_2">房产价值70%</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">19人申请</p>

						<p>
							<img id="u107_img" class="img " src="images/base/u107.png">
							<a id="apply_1" name="apply_1" onclick="sel_apply('1')" href="javascript:void">立即申请</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container product_type_div  hidden-xs">
			<div class="col-md-2 product_type_image_div">
				<img src="images/base/index-img-3.jpg" class="product_type">
			</div>
			<div class="col-md-10">
				<div class="col-md-12 product_detailed">房抵贷：房抵贷是Q房金融推出的帮助业主使用红本进行抵押贷款,解决客户资金周转进行的贷款</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="text_1">放款时间</p>

						<p class="text_3">最快3天</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">贷款期限</p>

						<p class="text_3">1~6个月</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">最高申请额</p>

						<p class="text_3">房产价值70%</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">19人申请</p>

						<p>
							<img id="u107_img" class="img " src="images/base/u107.png">
							<a id="apply_2" name="apply_2"
								onclick="sel_apply('2')" href="javascript:void">立即申请</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container product_type_div hidden-xs">
			<div class="col-md-2 product_type_image_div">
				<img src="images/base/index-img-2.jpg" class="product_type">
			</div>
			<div class="col-md-10">
				<div class="col-md-12 product_detailed">周转易：周转易是Q房金融推出的帮助业主快速收回尾款,解决客户资金周转的贷款</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="text_1">放款时间</p>
						<p class="text_2">最快3天</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">贷款期限</p>

						<p class="text_2">30天以内</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">最高申请额</p>
						<p class="text_2">成交价70%</p>
					</div>
					<div class="col-md-3">
						<p class="text_1">19人申请</p>
						<p>
							<img id="u107_img" class="img " src="images/base/u107.png">
							<a id="apply_1" name="apply_1"
								onclick="sel_apply('3')" href="javascript:void">立即申请</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 移动端显示产品介绍start -->
		<div class="container visible-xs">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<li class="product_detailed">赎楼贷：赎楼贷是Q房金融推出的帮助业主结清房产贷款,保障卖房交易顺利进行的贷款</li>
						<li>
							<hr>
							<table width="100%">
								<tbody>
									<tr align="center" class="text_2">
										<td><span>最快3天</span></td>
										<td><span>3个月以内</span></td>
										<td><span>房产价值70%</span></td>
										<td><span>16人申请</span></td>
									</tr>
									<tr align="center" class="text_1">
										<td>放款时间</td>
										<td>贷款期限</td>
										<td>最高申请额</td>
										<td><a onclick="sel_apply('1')" href="javascript:void" class="btn btn-warning btn-xs">立即申请</a></td>
									</tr>
								</tbody>
							</table>
						</li>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<li class="product_detailed">房抵贷：房抵贷是Q房金融推出的帮助业主使用红本进行抵押贷款,解决客户资金周转进行的贷款</li>
						<li>
							<hr>
							<table width="100%">
								<tbody>
									<tr align="center" class="text_3">
										<td><span>最快3天</span></td>
										<td><span>1~6个月</span></td>
										<td><span>房产价值70%</span></td>
										<td><span>165人申请</span></td>
									</tr>
									<tr align="center" class="text_1">
										<td>放款时间</td>
										<td>贷款期限</td>
										<td>最高申请额</td>
										<td><a onclick="sel_apply('2')" href="javascript:void" class="btn btn-primary btn-xs">立即申请</a></td>
									</tr>
								</tbody>
							</table>
						</li>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<li class="product_detailed">周转易：周转易是Q房金融推出的帮助业主快速收回尾款,解决客户资金周转的贷款</li>
						<li>
							<hr>
							<table width="100%">
								<tbody>
									<tr align="center" class="text_2">
										<td><span>最快3天</span></td>
										<td><span>30天以内</span></td>
										<td><span>成交价70%</span></td>
										<td><span>16人申请</span></td>
									</tr>
									<tr align="center" class="text_1">
										<td>放款时间</td>
										<td>贷款期限</td>
										<td>最高申请额</td>
										<td><a onclick="sel_apply('3')" href="javascript:void" class="btn btn-warning btn-xs">立即申请</a></td>
									</tr>
								</tbody>
							</table>
						</li>
					</div>
				</div>
			</div>
		</div>
		<!-- 移动端显示产品介绍end -->
		<!-- 媒体报道start -->
		<div class="container" style="margin-top: 70px">
			<div class="row">
				<div class="col-md-5"><p>
						<span class="media_head_text">媒体报道</span>
					</p>
					<ul>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
					</ul>
				</div>
				<div class="col-md-2"><img src="images/base/u257_line.png" class="hidden-xs" style="margin-left: 46px;"></div>
				<div class="col-md-5"><p>
						<span class="media_head_text">常见问题</span>
					</p>
					<ul>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
						<li class="media_list"><a href="#">Q房理财荣获中国首批互联网金融… 06-11</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 媒体报道end -->
		<!-- 合作伙伴start -->
		<div class="container" style="margin-top: 64px">
			<div class="row">
				<div class="col-md-12">
					<div class="partner_top">
						<span>合作伙伴</span>
					</div>
					<div class="partner_verticalLine visible-lg">
						<img src="images/base/u272_line.png">
					</div>
				</div>
				<div class="col-md-12">
					<table width="100%" class="table-bordered partner-tab">
						<tbody>
							<tr>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik01.jpg"></td>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik02.jpg"></td>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik03.jpg"></td>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik04.jpg"></td>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik05.jpg"></td>
								<td align="center" width="16%"><img align="middle"
									class="bank_image" src="images/base/fdlik06.jpg"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 合作伙伴end -->
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>