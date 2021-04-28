<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>订单提交-回收网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
		<meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收">
		<meta name="description" content="回收网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/order/cart.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/order/cart.html">
		<link href="/favicon.ico" type="image/x-icon" rel="Icon">
		<link href="static/css/global.css" rel="stylesheet" type="text/css">
		<script src="//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456"></script>
		<script src="static/js/jquery-1.4.2.js" type="text/javascript"></script>
		<script src="static/js/new_public.js" type="text/javascript"></script>
		<script type="text/javascript">
			function selectcity(url) {
				open_div_extends('切换地区', url, 'Loading_child');
			}
		</script>

		<link href="static/css/new_global.css" rel="stylesheet" type="text/css">

		<script src="static/js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

		<script src="static/js/lrtk.js" type="text/javascript"></script>

		<script src="static/js/menu.js" type="text/javascript"></script>

		<script src="static/js/index.js" type="text/javascript"></script>

		<link href="static/css/WdatePicker.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<link rel="stylesheet" type="text/css" href="static/css/alert_zhe.css">
		<script type="text/javascript" src="static/js/alert_zhe.js"></script>
		<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt('Loading_child');">
			<div class="tyd_box">
				<div class="tyd_box_c">
					<div class="tyd_box_title">
						<span id="Loading_child_title"></span>
						<a href="javascript:ttt('Loading_child')"><img src="static/image/close1.png" border="0"></a>
					</div>
					<div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
						<iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div id="mbDIV1" style="display:none;"></div>
		<!--头部-->
		<div class="shortcut">
			<div class="page">
				<div class="shortcut-left">
					<ul>
						<li class="city"><span>当前：
							<span id="selectcity_new">
							  <script rel="nofollow" src="static/js/show_city.js" type="text/javascript" language="javascript"></script>深圳
							</span>
							<a rel="nofollow" href="javascript:void(0);" onclick="selectcity('./selectcity_new.jsp');">[切换城市]</a>
							</span>
						</li>
					</ul>
				</div>
				<div class="shortcut-right">
					<ul id="login_show">
						<li>
							<a href="${pageContext.request.contextPath}/userIndex/userindex.jsp" rel="nofollow">${user.userPhone}</a>
						</li>
						<li class="my-cart">
							<a href="./userindex.jsp" rel="nofollow"><em>我的回购</em></a>
							<div class="sub-cart">
								<a href="./userhandleorder.jsp" rel="nofollow">我的订单</a>
								<a href="./userindex.jsp" rel="nofollow">帐户中心</a>
								<a href="./login.jsp" rel="nofollow">退出</a>
							</div>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="header">
			<div class="page">
				<h1 class="logo"><a href="http://www.ihuigo.com/"><img src="static/picture/logo.png" width="171" height="43" title="二手手机回收交易网"></a></h1>
				<div class="nav">
					<a title="闲置二手手机回收估价" href="/goods.jsp" class="on">闲置回收</a>
					<a title="靓机优选手机抢购" href="/news.jsp">绿色课堂</a>
				</div>
			</div>
		</div>
		<!--头部-->
		<script src="static/js/jquery-1.4.2.js" type="text/javascript"></script>

		<script type="text/javascript" src="static/js/payway.js"></script>
		<script type="text/javascript" src="static/js/order.js"></script>
		<script type="text/javascript" src="static/js/city.js"></script>
		<script type="text/javascript" src="static/js/city_jilian.js"></script>

		<form name="myFrom" id="myFrom" method="post" action="${pageContext.request.contextPath}/placeOrder" accept-charset="UTF-8">
			<input type="hidden" name="ifalipay" id="ifalipay" value="y">
			<input type="hidden" name="validate_code" value="c613fa0a11902100240ff455c229f5fe">
			<input type="hidden" name="typeid" id="typeid" value="1">

			<!--提交订单-->
			<div class="contanier page">
				<div class="current">
					<a href="/">首页</a><span>&gt;</span><em>提交订单</em></div>
				<div style="padding:0 15px;">
					<div class="areas"><span>请选择您的收款方式：</span></div>

					<div class="areas_flow">
						<div class="c_2 c_1" id="m2" onclick="aa(2)">
							<ul class="bor_right">
								<li class="bor_img"><img src="static/image/img_2_1.png"></li>
							</ul>
							<ul class="bor_left">
								<li class="bor_tile">支付宝交易</li>
								<li class="bor_text">知名平台，安全交易，打款更快捷透明</li>
							</ul>
							<div class="clear"></div>
						</div>
						<div style="display:none;" class="c_0" id="m3" onclick="aa(3)">
							<ul class="bor_right">
								<li class="bor_img"><img src="#"></li>
							</ul>
							<ul class="bor_left">
								<li class="bor_tile">上门现金交易</li>
								<li class="bor_text">质检师会在指定时间到达指定地点跟您进行交易</li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
					<!--切换-->
					<div class="none" id="t1"><img src="static/image/liucheng1_1.jpg"></div>
					<div class="block" id="t2"><img src="static/image/liucheng2.jpg"></div>
					<div class="none" id="t3"><img src="#"></div>
					<div class="ihuigo">
						<!-- 通用联系方式start-->
						<div class="sub_con_top">
							<div class="contact_ways">联系方式：</div>
							<div class="contanct_c check" name="item_member_addr" id="item_member_addr_163120">
								<label>
									<input type="radio" name="member_addr" value="163120" onclick="new_member_addr('163120')">
									<span>${user.userName}</span><span>${user.userPhone}</span><span>${user.address}</span>
								</label>
							</div>
							<div class="clear" style="height:15px;"></div>
							<div class="contanct_c" name="item_member_addr" id="item_member_addr_0">
								<label>
									<input type="radio" name="member_addr" value="0" onclick="new_member_addr(0)">
									<span>使用新地址</span></label>
							</div>
							<!-- 新地址start-->
							<div id="new_member_addr_div">
								<div class="clear" style="height:15px;"></div>
								<ul class="contact_list">
									<li class="contact_text">联系人：</li>
									<li class="contact_texts"><span class="img_1"><img src="static/image/in_1.gif"></span><span class="img_2"><input name="consumerName" id="link_name" type="text"></span> <span class="img_1"><img src="static/image/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
									<div class="clear"></div>
								</ul>
								<ul class="contact_list">
									<li class="contact_text">手机号码：</li>
									<li class="contact_texts"><span class="img_1"><img src="static/image/in_1.gif"></span><span class="img_2"><input name="consumerPhone" id="mobile" type="text"></span> <span class="img_1"><img src="static/image/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
									<div class="clear"></div>
								</ul>
								<div class="mod_select" style="margin-bottom:12px;">
									<ul>
										<li class="contact_text" style="width:88px;">我的地址：</li>
										<li>

											<div class="select_box">
												<span class="select_txt" id="text_province">请选择省份</span><em class="selet_open"><b></b></em>
												<input type="hidden" id="province" name="province" value="0">
												<div class="option" id="option_province"><em onclick="option_province_click(this)" value="2">北京</em><em onclick="option_province_click(this)" value="3">安徽</em><em onclick="option_province_click(this)" value="4">福建</em><em onclick="option_province_click(this)" value="5">甘肃</em><em onclick="option_province_click(this)" value="6">广东</em><em onclick="option_province_click(this)" value="7">广西</em><em onclick="option_province_click(this)" value="8">贵州</em><em onclick="option_province_click(this)" value="9">海南</em><em onclick="option_province_click(this)" value="10">河北</em><em onclick="option_province_click(this)" value="11">河南</em><em onclick="option_province_click(this)" value="12">黑龙江</em><em onclick="option_province_click(this)" value="13">湖北</em><em onclick="option_province_click(this)" value="14">湖南</em><em onclick="option_province_click(this)" value="15">吉林</em><em onclick="option_province_click(this)" value="16">江苏</em><em onclick="option_province_click(this)" value="17">江西</em><em onclick="option_province_click(this)" value="18">辽宁</em><em onclick="option_province_click(this)" value="19">内蒙古</em><em onclick="option_province_click(this)" value="20">宁夏</em><em onclick="option_province_click(this)" value="21">青海</em><em onclick="option_province_click(this)" value="22">山东</em><em onclick="option_province_click(this)" value="23">山西</em><em onclick="option_province_click(this)" value="24">陕西</em><em onclick="option_province_click(this)" value="25">上海</em><em onclick="option_province_click(this)" value="26">四川</em><em onclick="option_province_click(this)" value="27">天津</em><em onclick="option_province_click(this)" value="28">西藏</em><em onclick="option_province_click(this)" value="29">新疆</em><em onclick="option_province_click(this)" value="30">云南</em><em onclick="option_province_click(this)" value="31">浙江</em><em onclick="option_province_click(this)" value="32">重庆</em><em onclick="option_province_click(this)" value="33">香港</em><em onclick="option_province_click(this)" value="34">澳门</em><em onclick="option_province_click(this)" value="35">台湾</em></div>
											</div>
										</li>
										<li>
											<div class="select_box">
												<span class="select_txt" id="text_city">请选择城市</span><em class="selet_open"><b></b></em>
												<input type="hidden" id="city" name="city" value="0">
												<div class="option" id="option_city"></div>
											</div>
										</li>
										<li>
											<div class="select_box">
												<span class="select_txt" id="text_district">请选择区县</span><em class="selet_open"><b></b></em>
												<input type="hidden" id="district" name="district" value="0">
												<input type="hidden" id="school_id" name="school_id" value="0">
												<div class="option" style="position:absolute;right:0 !important; " id="option_district">
												</div>
											</div>
										</li>

										<span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span>
										<div class="clear"></div>
									</ul>
								</div>
								<div>
									<ul class="contact_list">
										<li class="contact_text">详细地址：</li>
										<li class="contact_texts"><span class="img_1"><img src="static/image/in_1.gif"></span><span class="img_2_area"><input name="address" id="address" type="text"></span> <span class="img_1"><img src="static/image/in_3.gif"></span></li>
										<div class="clear"></div>
									</ul>
								</div>
							</div>
							<link rel="stylesheet" type="text/css" href="static/css/calendar.css">
							<script type="text/javascript" src="static/js/calendar.php"></script>
							<!--上门取件时间-->
							<div class="contact_list" style="margin-top:20px;">
								<div id="div_addr" style="display:none;">
									<ul>
										<li class="contact_textval">上门取件时间：</li>
									</ul>
									<ul class="area_list">
										<li class="area_list_texts"><input name="stime" id="stime" type="text" style="border:0px;" onfocus="return showCalendar('stime', '%Y-%m-%d %H:%m', '24', false, 'stime');" value=""></li>
										<li class="area_list_bg"></li>
									</ul>
									<div class="clear"></div>
								</div>

								<div class="kuaidi">
									<input type="checkbox" value="1" name="express_true" id="express_true" onclick="express_true_click()"><label for="express_true">指定上门取件时间</label>
								</div>
								<script>
									function express_true_click() {
										if($("#express_true").attr('checked')) {
											$("#div_addr").css('display', 'block');
										} else {
											$("#div_addr").css('display', 'none');
										}
									}
								</script>
							</div>
							<!-- 新地址end-->
							<script>
								function new_member_addr(val) {
									$("div[name='item_member_addr']").attr('class', 'contanct_c');
									if(val) $("#new_member_addr_div").css('display', 'none');
									else $("#new_member_addr_div").css('display', 'block');
									$("#item_member_addr_" + val).attr('class', 'contanct_c check');
								}
							</script>
						</div>
						<div id="s2" class="block">
							<!-- 收款支付宝账号start-->
							<div class="sub_con_foot">
								<div class="contact_ways">收款支付宝账号：</div>

								<div id="new_member_alipay_div">

									<ul class="contact_list">
										<li class="contact_text">姓名：</li>
										<li class="contact_texts"><span class="img_1"><img src="static/image/in_1.gif"></span><span class="img_2"><input name="payName" id="alipay_realname" type="text" value=""></span> <span class="img_1"><img src="static/image/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
										<div class="clear"></div>
									</ul>

									<ul class="contact_list">
										<li class="contact_text">支付宝账号：</li>
										<li class="contact_texts"><span class="img_1"><img src="static/image/in_1.gif"></span><span class="img_2"><input name="payAccount" id="alipay_username" type="text" value=""></span> <span class="img_1"><img src="static/image/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*亲，必须是实名认证的支付宝账号哦！</em></span> </li>
										<div class="clear"></div>
									</ul>
								</div>

							</div>
							<!-- 收款支付宝账号end-->
						</div>

						<script>
							function new_member_alipay(val) {
								$("div[name='item_member_alipay']").attr('class', 'contanct_c');
								if(val) $("#new_member_alipay_div").css('display', 'none');
								else $("#new_member_alipay_div").css('display', 'block');
								$("#item_member_alipay_" + val).attr('class', 'contanct_c check');
							}
						</script>
					</div>
					<div class="clear"></div>
					<div class="tijiao" style="position:relative">
						<script>
							function baoxian_click(obj) {
								var flag = $(obj).attr('checked');
								if(flag) {
									$("#baoxian_content").css('display', 'block');
								} else {
									$("#baoxian_content").css('display', 'none');
								}
							}
						</script>
						<input type="button" name="sub_button" id="sub_button" value="提交回购单" class="input_btn2" onclick="return checkfrom2('/placeOrder')">
					</div>
				</div>
				<!--订单-->
				<div class="dingdan">
					<div class="contact_way">订单详情：</div>
					<table width="100%" border="0" cellpadding="0" cellspacing="1" class="table1">
						<tbody>
							<tr>
								<th width="20%" height="35">型号</th>
								<th width="16%">回购价格</th>

							</tr>
							<c:forEach items="${cart.cartDetailsList}" var="cartDetailsList">
								<tr>
									<td height="95" align="center">
										<div class="contact_way_img"><img src="${pageContext.request.contextPath}/static/picture/${cartDetailsList["goods"].goodsPicture}"></div>
										<div class="contact_way_txt">
											<p><span>${cartDetailsList["goods"].goodsName}</span></p>
										</div>
										<div class="clear"></div>
									</td>
									<td align="center" style="line-height:22px;">
										<h3>￥${cartDetailsList["goods"].goodsPrice * cartDetailsList.amount}</h3>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="foot_bor"> 产品总计回收价格<em style="font-size:18px;">￥${cart.cartMoney}</em></div>
				</div>
				<!--订单-->
			</div>
			<!--提交订单-->
		</form>

		<script>
            //解决$.post的中文乱码
            $.ajaxSetup({
                contentType: "application/x-www-form-urlencoded; charset=utf-8"
            });

            function checkfrom2(url) {
                //联系方式
                if ($("input[name='member_addr']:checked").length == 0) {
                    alert("请选择联系方式");
                    return false;
                }

                var radio_addr_val = $("input[name='member_addr']:checked").val();
                if (radio_addr_val == 0) {
                    if ($.trim($("#link_name").val()) == '') {
                        alert("请输入联系人");
                        $("#link_name").focus();
                        return false;
                    }

                    if (!check_mobile($("#mobile").val())) {
                        alert("手机号码有误");
                        $("#mobile").focus();
                        return false;
                    }

                    if ($.trim($("#province").val()) == 0) {
                        alert("请选择省份");
                        $("#province").focus();
                        return false;
                    }

                    if ($.trim($("#city").val()) == 0) {
                        alert("请选择城市");
                        $("#city").focus();
                        return false;
                    }

                    if ($.trim($("#district").val()) == 0 && $.trim($("#school_id").val()) == 0) {
                        alert("请选择区县");
                        $("#district").focus();
                        return false;
                    }

                    //选择回购网联系快递　
                    if ($("#express_true").attr('checked')) {
                        if ($.trim($("#address").val()) == '') {
                            alert("请输入详细地址");
                            $("#address").focus();
                            return false;
                        }
                        else if ($.trim($("#stime").val()) == '') {
                            alert("请输入上门取件时间");
                            $("#stime").focus();
                            return false;
                        }
                    }
                }

                //选择支付宝担保交易
                if ($("#ifalipay").val() == 'y') {
                    if ($.trim($("#alipay_realname").val()) == '') {
                        alert("请输入支付宝户名");
                        $("#alipay_realname").focus();
                        return false;
                    }

                    if ($.trim($("#alipay_username").val()) == '') {
                        alert("请输入收款支付宝账号");
                        $("#alipay_username").focus();
                        return false;
                    }
                }

                var province=document.getElementById('text_province').innerText;
                var city=document.getElementById('text_city').innerText;
                var district=document.getElementById('text_district').innerText;
                var address2=$.trim($("#address").val());
                var consumerAddress=province+city+district+address2;
                $.post(url,{"consumerAddress":consumerAddress,"consumerName":$("#link_name").val(),"consumerPhone":$("#mobile").val(),"pickingTime":$("#stime").val(),"payName":$("#alipay_realname").val(),"payAccount":$("#alipay_username").val()},function (data) {
                    if(data == "1"){
                        window.location.href="${pageContext.request.contextPath}/userIndex/userindex.jsp";
                    }
                    else {
                        alert("失败")
                    }
                });
            }
		</script>

		<!--切换-->
		<script language="javascript">
			function aa(s_id) {
				for(i = 1; i < 4; i++) {
					if(i == s_id) {
						document.getElementById("s" + i).className = "block";
						document.getElementById("m" + i).className = "c_" + i + " c_1";
						document.getElementById("t" + i).className = "block";
					} else {
						document.getElementById("s" + i).className = "none";
						document.getElementById("m" + i).className = "c_0";
						document.getElementById("t" + i).className = "none";
					}
				}
				if(s_id == 1) $("#ifalipay").val('n');
				else if(s_id == 2) $("#ifalipay").val('y');
				else if(s_id == 3) $("#ifalipay").val('s');

			}
			aa(2);
		</script>
		<div class="footer">
			<div class="page2">
				<dl class="foot_list1">
					<dt>关于我们</dt>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="回收网高价在线手机回收平台">关于回收网</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="回收网手机回收联系方式">联系我们</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="回收网长期招聘爱好手机回收行业的小伙伴">人才招聘</a>
					</dd>
				</dl>
				<dl class="foot_list2">
					<dt>服务</dt>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="手机回收常见问题与解答">服务条款</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="感谢您对手机回收相关问题的投诉与建议">投诉建议</a>
					</dd>
					<dd>
						<a href="" target="_blank" title="回收网的网站地图导航">网站地图</a>
					</dd>
				</dl>
				<dl class="foot_list3">
					<dt>客服热线</dt>
					<dd>
						<p><img src="static/picture/tel_new4.png"></p>
					</dd>
				</dl>
				<script type="text/javascript">
					$(document).ready(function() {
						$(".weixin2").hover(function() {
							$(this).find(".weixin-qrcode2").show();
						}, function() {
							$(this).find(".weixin-qrcode2").hide();
						});
					});
				</script>
				<dl class="foot_list4">
					<dt>关注我们</dt>
					<dd class="sina">
						<a href="javascript:;" rel="nofollow" target="_blank">&nbsp;</a>
					</dd>
					<dd class="weixin">
						<a rel="nofollow" class="weixin2" target="_blank">
							<div class="weixin-qrcode2"></div>
						</a>
					</dd>
				</dl>
				<div class="clear"></div>
				<div class="statist">
					<p><em>Copyright Reserved 2009-2018 @</em> 深圳市绿创网络科技有限公司版权所有 <span><a href="javascript:;" target="_blank" rel="nofollow">粤ICP备10071783号</a> <script rel="nofollow" src="static/js/stat-4678782_4678782.js" language="JavaScript"></script> <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script><span></span></span>
					</p>
				</div>
				<!--购物车-->
				<div class="mui-mbar">
					<!--黑色栏-->
					<div class="mui-mbar-mask">
						<div class="mui-mbar-gwc">
							<div class="mui-mbar-wz">
								<p><img src="${pageContext.request.contextPath}/static/picture/cart.png"></p>
								<span>回购车</span>
							</div>
						</div>
						<!--返回顶部-->
						<div class="mui-mbar-top mui-mbar-all">
							<div class="mui-mbar-go">
								<a rel="nofollow" href="javascript:goTop();" class="sidetop"><img src="${pageContext.request.contextPath}/static/picture/go_top.png"></a>
							</div>
							<div class="mui-fanhui mui-mbar-last">返回顶部</div>
						</div>
						<!--返回顶部-->
					</div>
					<!--黑色栏-->
					<!--购物车-->
					<div class="mui-mbar-cart">
						<div class="mui-list">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
								<tr id="cart_tr_title">
									<th class="table-padding">机型</th>
									<th width="100">&nbsp;</th>
									<th width="68">评估价</th>
								</tr>
								<c:forEach items="${cartGoods}" var="cartDetails">
									<c:set value="${sum+1}" var="sum" />
									<c:set value="${cartDetails['cart'].cartMoney}" var="cartMoney" />
									<tr id="cart_items_${cartDetails.cartDetailsId}">
										<td class="table-padding">
											<div class="mui-pic">
												<a href="javascript:remove_cart2('${pageContext.request.contextPath}/deleteCartGoods','${cartDetails.cartDetailsId}')" class="close_btn"><img src="${pageContext.request.contextPath}/static/picture/close3.png"></a>
												<a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/static/picture/${cartDetails["goods"].goodsPicture}" width="74" height="56"></a>
											</div>
										</td>
										<td><p><a href="javascript:void(0)">${cartDetails["goods"].goodsName}</a></p></td>
										<td><em>￥ ${cartDetails["goods"].goodsPrice *cartDetails.amount}</em></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<!--结算-->
						<div class="mui-jiesuan">
							<p>已选<em class="cart_total_items">${sum}</em>台共计<em id="cart_total">￥${cartMoney}</em></p>
							<input type="button" value="去结算" class="mui-button" onclick="gocart('${pageContext.request.contextPath}/payInCart')">
						</div>
						<!--结算-->
					</div>
					<!--购物车-->
				</div>
				<!--购物车-->
			</div>
			<link rel="stylesheet" type="text/css" href="static/css/alert_zhe1.css">
			<script type="text/javascript" src="static/js/alert_zhe1.js"></script>
			<div id="Loading_server" class="Loading_server" style="display:none; height:580px;" ondblclick="ttt('Loading_server');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_server_title"></span>
							<a href="javascript:ttt('Loading_server')"><img src="static/picture/close1.gif" border="0"></a>
						</div>
						<div class="tyd_box_content" style="width:524px;height:529px; overflow:hidden">
							<iframe id="Loading_server_iframe_id" name="iframe_id" width="524" height="529" border="0" frameborder="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="mbDIV" style="display:none;"></div>
			<script type="text/javascript" src="static/js/jquery.scrollLoading.js"></script>
			<script>
				$(document).ready(function() {
					$(".scrollLoading").scrollLoading()
				});

                function gocart(gourl) {
                    location.href = gourl;
                }
			</script>
			<input type="hidden" id="public_gourl" value="">
			<link rel="stylesheet" type="text/css" href="static/css/alert_zhe2.css">
			<script type="text/javascript" src="static/js/alert_zhe2.js"></script>
			<div id="Loading_child_members" class="Loading" style="display:none; height:600px;" ondblclick="ttt('Loading_child_members');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_child_members_title"></span>
							<a href="javascript:ttt('Loading_child_members')"><img src="static/picture/close1.gif" border="0"></a>
						</div>
						<div class="tyd_box_content" style="width:502px;overflow:auto; height:570px;;">
							<iframe id="Loading_child_members_iframe_id" name="iframe_id" width="502" height="570px;" border="0" frameborder="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="mbDIV_members" style="display:none;"></div>
			<script type="text/javascript">
				function login_pop() {
					var gourl = arguments[0] ? arguments[0] : '';
					if(gourl != '') $("#public_gourl").val(gourl);
					open_div_extends('登录与注册', '/members/login_popup.html', 'Loading_child_members', '502', '600');
				}
			</script>
			
		</div>
	</body>

</html>