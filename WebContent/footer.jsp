<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style type="text/css">
    #footer_main {
            background-color: #3B3B3B;
            padding: 20px 0;
            color: #989898;
            margin-top: 20px;

        }

        .u214 {
            color: #d8d8d8;
            font-family: "微软雅黑 Regular", "微软雅黑";
            font-size: 18px;
            font-style: normal;
            font-weight: 400;
        }

        .foot_navigation li, .foot_navigation a {
            color: #989898;
            font-family: "微软雅黑 Regular", "微软雅黑";
            font-size: 14px;
            font-style: normal;
            font-weight: 400;
        }

        .two_dimensioncode {
            height: 161px;
            width: 159px;
        }
        #rom_div{
            margin: 0 auto;
            max-width: 1200px;
        }
 </style>


<div id="footer_main">
    <div class="content-inner">
        <div class="row" id="rom_div">
            <div class="col-md-2">
                <ul class="foot_navigation">
                    <li><font class="u214">我要贷款</font></li>
                    <li><a href="/cms/home/helpcenterIndex?moduleName=loan_1">产品介绍</a></li>
                    <li><a href="/cms/home/helpcenterIndex?moduleName=loan_2">借款申请</a></li>
                    <li><a href="/cms/home/helpcenterIndex?moduleName=loan_3">审核与放款</a></li>
                    <li>&nbsp;</li>
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="foot_navigation">
                    <li><font class="u214">安全保障</font></li>
                    <li><a href="${ctx}/home/helpcenterIndex?moduleName=riskControl_3">隐私安全</a></li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="foot_navigation">
                    <li><font class="u214">关于我们</font></li>
                    <li><a href="${ctx}/home/aboutIndex?moduleName=company_profile">公司简介</a></li>
                    <li><a href="${ctx}/home/aboutIndex?moduleName=media_report">媒体报道</a></li>
                    <li><a href="${ctx}/home/aboutIndex?moduleName=business_cooperation">商务合作</a></li>
                    <li><a href="${ctx}/home/aboutIndex?moduleName=contact_us">联系我们</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="foot_navigation">
                    <li><font class="u214">全国热线</font></li>
                    <li><font size="5">400-9393-888</font></li>
                    <li>服务时间：周一到周日 09:00—18:00</li>
                    <li>&nbsp;</li>
                </ul>
            </div>
            <div class="col-md-3"><img src="images/base/u246.png"
                                       class="two_dimensioncode"></div>
            <div class="col-md-1"></div>
            <div class="col-md-11" style="margin-top: 20px">Copyright &copy; 2015
                www.qfang.com. All Rights Reserved ICP号： 粤ICP备05067219号-3
                服务热线：400-9393-888</div>
        </div>
    </div>
</div>
