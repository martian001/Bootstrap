<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style>
        #user-panel {
            background: #fff none repeat scroll 0 0;
            border: 1px solid #e9e9e9;
            margin: -389px auto auto;
            max-width: 480px;
            position: relative;
            float: right;

        }
    </style>
<script type="text/javascript">
//短信计时
var wait = 60;
function time() {
    var senMsgBtn=document.getElementById("j_fs");
	if (wait == 0) {
		$("#j_fs").disabled="false";
		$("#j_fs").attr("href","#");
		$("#j_fs").attr("style","background:#ffb047 none repeat scroll 0 0");
		senMsgBtn.setAttribute("onclick", "sendMsg()");
		$(senMsgBtn).text("发送验证码");
		wait = 60;
	} else {
		$("#j_fs").disabled="true";
		$("#j_fs").removeAttr('href');
		$("#j_fs").attr("style","background:#A8A6A3 none repeat scroll 0 0");
		senMsgBtn.setAttribute("onclick", "");
		$(senMsgBtn).html("重新发送(" + wait + "秒)");
		wait--;
		setTimeout(function() {
			time();
		}, 1000);
	}
}
//发送验证码
function sendMsg() {
	var mobile = $("#telphone").val();
	if ($.trim(mobile).length==0) {//手机号不能为空
		$("#telphoneErr").html("请输入手机号码");
		$("#telphoneErr").css("display", "");
	} else {
		if (isMobiel(mobile)) {//判断是否合法和是否已经被注册
			time();
			$
					.ajax({
						url : "${ctx}/smsvalidatecodeinfo/sendCodeMsg",
						type : 'post',
						data : 'telphone=' + mobile,
						dataType : 'html',
						success : function(data, status) {
							if (data == 0) {
								//openDialog("短信验证码已经发送,请查收!","40%","25%",3,'');
							} else if(data==2){
							  $("#namets3").html("发送短信过于频繁，请明天再申请，谢谢！").show(300).delay(8000).hide(300);
							}else {
								wait = 0;
								setTimeout("$('#j_fs').text('发送验证码失败')",
										1000);
							}
						},
						error : function(xhr, textStatus, errorThrown) {
						}
					});
		}
	}
}
function isMobiel(str) {
	var rst = false;
	var myReg = /^1[3456789][0-9]{9}$/;
	if (str.indexOf('请输入手机号码') < 0 && !myReg.test(str)) {
		$("#telphoneErr").html("手机号码格式错误");
		$("#telphoneErr").css({
			"display":""
		});
		return rst;
	} else {
		$("#telphoneErr").css("display", "none");
		rst = true;
	}
	return rst;
}

function isName(str) {
	var rst = false;
	var myReg = /^[\u4E00-\u9FA5]{2,20}$/;
	if (str.indexOf('请输入您的真实姓名') < 0 && !myReg.test(str)) {
		$("#nameErr").html("真实姓名只能填写汉字,2~20字以内");
		$("#nameErr").css("display", "");
		return rst;
	} else {
		$("#nameErr").css("display", "none");
		rst = true;
	}
	return rst;
}
//提交借款申请
function submit_loan() {
    var name=$("#name").val();
    var money=$("#money").val();
    var categoryId=$("#categoryId").val();
    var code=$("#code").val();
    var telphone=$("#telphone").val();
    if (categoryId=="") {
    	$('#productTypeErr').css('display','').show(300).delay(3000).hide(300);
		return false;
	}
	if (!isMobiel(telphone)) {
		return false;
	}
	if (!isName(name)) {
		return false;
	}
	
	if(!isNumber(money)){
		return false;
	}
	if(!isCode(code)){
		return false;
	}
	var url = "${ctx}/apply";
	var data = validCode(code, telphone);
			
	if(!data){
		return false;
	}
	
	$.ajax({
		url : url,
		cache : true,
		type : "POST",
		data : $('#form').serialize(),
		async : false,
		success : function(rsp) {
			if (rsp.rspcode == 5) {
				//openDialog(rsp.rspdesc,"40%","25%",3,'');
				$("#namets3").html(rsp.rspdesc);
				wait = 0;
				setTimeout("$('#namets3').css('display','')", 1000);
			} else if (rsp.rspcode == 0) {
				$("#namets4").html(rsp.rspdesc);
				wait = 0;
				$('#namets4').css('display','').show(300).delay(3000).hide(300);
			} else {
				//$("#apply_succes").css({"color":"green","display":""}).show(300).delay(3000).hide(300);
				$(".j_xs").hide().next('div').show();
				
			}
		}
	});
		
	return false;

}
//跟后台验证验证码是否正确
function validCode(code, telphone) {
	var result = true;
	$
			.ajax({
				url : "${ctx}/smsvalidatecodeinfo/validCode",
				dataType : 'json',
				data : 'telphone=' + telphone+'&code='+code,
				type : 'post',
				async : false,
				success : function(data) {
					if (data == '1') {
						// 	  				openDialog("验证码不正确!,请查明后再输入","40%","25%",3,'');
						$("#codeErr").html("您输入的验证码无效,请重新输入!").show(300).delay(3000).hide(300);
						
						result = false;
					} else {
						$("#codeErr").css("display", "none");
					}
				}
			});
	return result;
}

var selProvince;//省份下拉框对象
var selCity;//城市下拉框对象

//当省份改变，城市也随之初始化
/*function province_onchange() {
		 $.ajax({
				url : "${ctx}/cityinfo/provinceInfoList",
				dataType : 'json',
				data : 'provinceId=' + selProvince.value,
				type : 'post',
				async : false,
				success : function(data) {
				selCity.options.length=0;
					for(var i=0;i<data.length;i++){
					     var city=data[i];
					     selCity.options[i]=new Option(city.name,city.id);
					}
				}
			});
}
*/
//初始化省份
/*function initProvinces(){
 $.ajax({
				url : "${ctx}/provinceinfo/provinceInfoList",
				dataType : 'json',
				type : 'post',
				async : false,
				success : function(data) {
					selProvince=document.getElementById("province");
                    selCity=document.getElementById("city");
					for(var i=0;i<data.length;i++){
					     var province=data[i];
					     selProvince.options[i]=new Option(province.name,province.id);
					}
				}
			});
			
	   //初始化选中广东深圳
		$("#province option[value='20']").attr("selected",true) ;
		province_onchange();
		$("#city option[value='237'").attr("selected",true) ;
			
}
*/
function isCode(value){
	var reg = new RegExp("^[0-9]{6}$");
	if(!reg.test(value)){
		$("#codeErr").css("display","");
		return false;
	}else{
		$("#codeErr").css("display","none");
	}
	return true;
}
function isNumber(value){
	var reg = new RegExp("^[0-9]*$");
	if(!reg.test(value)){
		$("#m").css("display","");
		return false;
	}else{
		$("#m").css("display","none");
	}
	return true;
}
function replaceNumber(obj){
	if(obj.value.length==1){
		obj.value=obj.value.replace(/[^1-9]/g,'')
	}else{
		obj.value=obj.value.replace(/\D/g,'')
	}
}
</script>
<div class="homeslider"><!--[if lt IE 9s]><p align="center" heigth="30px;">
    您的浏览器版本过低，请升级到ie10及以上版本，或使用最新版本的其它浏览器。</p>
    <![endif]-->
    <div style="width: 100%;padding-left:0px;padding-right:0px;" class="container">
        <li style="list-style-type: none;" id="myCarousel" class="carousel slide" data-ride="carousel"
            data-interval="8000">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
            </ol>
            <div align="center" class="carousel-inner">
                <div class="item"><img src="images/base/newban1.jpg" style="height: 400px" alt="First slide">
                </div>
                <div class="item"><img src="images/base/newban2.jpg" style="height: 400px" alt="Second slide">
                </div>
                <div class="item active"><img src="images/base/newban3.jpg" style="height: 400px"
                                              alt="Third slide"></div>
            </div>
        </li>
    </div>
</div>
<div class="container">
    <div id="user-panel" class="panel panel-default">
        <div class="panel-heading"><h4>马上申请</h4></div>
        <div class="panel-body">
            <form method="post" accept-charset="UTF-8" action="#" onsubmit="return submit_loan()"  class="" role="form">
                <div class="form-group">
                    <select class="form-control" name="categoryId" id="categoryId">
                        <option value="">请选择贷款用途</option>
                        <option value="1">赎楼贷</option>
                        <option value="2">房抵贷</option>
                        <option value="3">周转易</option>
                    </select>
                     <span id="productTypeErr" style="display:none;color:red">请选择贷款用途</span>
                </div>
                <div class="form-group">
                    <input type="text" name="money" id="money" class="form-control" onkeyup="replaceNumber(this)" placeholder="请输入借款金额" onblur="isNumber(this.value);" maxlength="8"  required="required">
                    <span id="m" style="display:none;color:red">您输入的金额无效,请重新输入!</span>
                </div>
                <div class="form-group">
                    <input type="text" id="name" name="name" maxlength="20" class="form-control" placeholder="请输入您的真实姓名" onblur="isName(this.value);"  required="required">
                    <span style="display:none;color:red" id="nameErr">真实姓名只能填写汉字,2~20字以内</span>
                </div>
                <div class="form-group">
                    <input type="tel" name="telphone" maxlength="11" class="form-control" onkeyup="replaceNumber(this)" onblur="isMobiel(this.value);"  placeholder="请输入手机号码"  id="telphone" required="required">
                    <span style="display:none;color: red;" id="telphoneErr" >手机号码格式错误</span>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" id="code" name="code" onkeyup="replaceNumber(this)" onblur="isCode(this.value);" maxlength="6" class="form-control" placeholder="验证码">
                        <span class="input-group-btn">
                            <button class="btn btn-info" id="send_code" type="button" onclick="sendMsg()" name="button">获取验证码</button>
                        </span>
                    </div>
                        <span style="display:none;color: red;" id="codeErr" >请输入6位数验证码</span>
                </div>
                <input type="submit" class="btn-block btn btn-primary" value="立即申请" name="commit"></form>
        </div>
    </div>
</div>
