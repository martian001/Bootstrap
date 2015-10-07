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

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>首页</title>
<style type="text/css">
.center_panel {
	margin-top: 40px;
}
.type_image_img {
	max-width: 100%;
	vertical-align: middle;
}

.icon1 {
	max-width: 70%;
	vertical-align: middle;
}

.product_introduction_table li {
	list-style: none;
	margin-left: 9px;
}

.icon1 {
	vertical-align: middle;
	margin-top: -15px;
}

.product_text_1_left_1 {
	color: #515151;
	font-family: "微软雅黑 Regular", "微软雅黑";
	font-size: 16px;
	font-style: normal;
	font-weight: 400;
	height: 40px;
	line-height: 40px;
}

.product_text_1_left_2 {
	color: #515151;
	font-family: "微软雅黑 Regular", "微软雅黑";
	font-size: 14px;
	font-style: normal;
	font-weight: 400;
}

.ax_verticalLine {
	color: #333333;
	font-size: 13px;
	height: 301px;
	line-height: normal;
	margin-left: -25px;
	margin-top: 50px;
	text-align: center;
	width: 1px;
}

.ax_verticalLine2 {
	color: #333333;
	font-size: 13px;
	height: 301px;
	line-height: normal;
	margin-left: 9px;
	margin-top: 50px;
	text-align: center;
	width: 1px;
}
.product_introduction_text {

}
.type_image_tb{
text-align: -moz-center;
}
@media ( max-width :767px) {
	.product_introduction_table {
		font-size: 6px;
		display: block;
		padding: 4px;
		margin-bottom: 20px;
		line-height: 1.42857143;
		background-color: #fff;
		border: 1px solid #ddd;
		border-radius: 4px;
		-webkit-transition: border .2s ease-in-out;
		-o-transition: border .2s ease-in-out;
		transition: border .2s ease-in-out;
	}
	.type_image_tb {
		width: 15%;
	}
	.product_introduction_text {
		height: 100%;
		margin-top: 10px;
	}
	.product_text_1_left_1, .product_text_1_left_2 {
		font-size: 6px;
		font-weight: 100;
		line-height: 10px;
	}
}

</style>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<jsp:include page="apply.jsp"></jsp:include>
	<div class="center_panel">
		<div class="container">
		<div class="row">
			<div class="col-md-12" style="padding: 1; margin: 1;">
				<table width="100%" class="partner-tab product_introduction_table thumbnail">
					<tbody>
						<tr>
							<td width="48%" class="type_image_tb"><img
								src="images/base/IMS1.png" class="type_image_img"></td>
							<td width="1%" class="hidden-xs"><img
								src="images/base/u80_line.png" class="ax_verticalLine"></td>
							<td width="*">
								<ul>
									<li>
										<table width="100%" height="385px"
											class="product_introduction_text">
											<tbody>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">贷款对象</span>
														<p class="product_text_1_left_2">在银行有房屋抵押贷款未还清的客户</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u83.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">所需材料</span>
														<p class="product_text_1_left_2">身份证、房产证复印件、查档单、征信报告、买卖合同、首付款监管协议、买方银行贷款承诺函等</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u85.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款额度</span>
														<p class="product_text_1_left_2">最高可借取房屋价值款的70%</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款期限</span>
														<p class="product_text_1_left_2">3个月以内</p></td>
												</tr>
											</tbody>
										</table>
									</li>

								</ul>
							</td>

						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-12" style="padding: 1; margin: 1;">
				<table width="100%" class="partner-tab product_introduction_table thumbnail">
					<tbody>
						<tr>
							<td width="*">
								<ul>
									<li>
										<table width="100%" height="385px"
											class="product_introduction_text">
											<tbody>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">贷款对象</span>
														<p class="product_text_1_left_2">房产无抵押红本在手，急需资金周转的业主</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u83.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">所需材料</span>
														<p class="product_text_1_left_2">身份证、房产证原件、征信报告等</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u85.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款额度</span>
														<p class="product_text_1_left_2">欠款余额；最高不超过交易价格的7成</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款期限</span>
														<p class="product_text_1_left_2">1-6个月</p></td>
												</tr>
											</tbody>
										</table>
									</li>

								</ul>
							</td>
							<td width="1%" class="hidden-xs"><img
								src="images/base/u80_line.png" class="ax_verticalLine2"></td>
							<td width="48%" class="type_image_tb"><img
								src="images/base/IMS3.png" class="type_image_img"></td>


						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-12" style="padding: 1; margin: 1;">
				<table width="100%" class="partner-tab product_introduction_table thumbnail">
					<tbody>
						<tr>
							<td width="48%" class="type_image_tb"><img
								src="images/base/IMS4.png" class="type_image_img"></td>
							<td width="1%" class="hidden-xs"><img
								src="images/base/u80_line.png" class="ax_verticalLine"></td>
							<td width="*">
								<ul>
									<li>
										<table width="100%" height="385px"
											class="product_introduction_text">
											<tbody>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">贷款对象</span>
														<p class="product_text_1_left_2">在银行有房屋抵押贷款未还清的客户</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u83.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">所需材料</span>
														<p class="product_text_1_left_2">身份证、房产证复印件、查档单、征信报告、买卖合同、首付款监管协议、买方银行贷款承诺函等</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u85.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款额度</span>
														<p class="product_text_1_left_2">最高可借取房屋价值款的70%</p></td>
												</tr>
												<tr>
													<td width="5%" style="text-align: center;"><img
														src="images/base/u81.png" class="icon1"></td>
													<td width="*"><span class="product_text_1_left_1">借款期限</span>
														<p class="product_text_1_left_2">3个月以内</p></td>
												</tr>
											</tbody>
										</table>
									</li>

								</ul>
							</td>

						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>