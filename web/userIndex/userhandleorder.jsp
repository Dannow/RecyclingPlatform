<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>我的订单-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
		<meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收">
		<meta name="description" content="回购网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/member/order.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/member/order.html">
		<link href="/favicon.ico" type="image/x-icon" rel="Icon">
		<link href="../static/css/global.css" rel="stylesheet" type="text/css">
		<script src="//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456"></script>
		<script src="../static/js/jquery-1.4.2.js" type="text/javascript"></script>
		<script src="../static/js/new_public.js" type="text/javascript"></script>
		<script type="text/javascript">
			function selectcity(url) {
				open_div_extends('切换地区', url, 'Loading_child');
			}
		</script>

		<link href="../static/css/new_global.css" rel="stylesheet" type="text/css">

		<script src="../static/js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

		<script src="../static/js/lrtk.js" type="text/javascript"></script>

		<script src="../static/js/menu.js" type="text/javascript"></script>

		<script src="../static/js/index.js" type="text/javascript"></script>

		<link href="../static/css/WdatePicker.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
		<script type="text/javascript" src="../static/js/alert_zhe.js"></script>
		<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt('Loading_child');">
			<div class="tyd_box">
				<div class="tyd_box_c">
					<div class="tyd_box_title">
						<span id="Loading_child_title"></span>
						<a href="javascript:ttt('Loading_child')"><img src="../static/picture/close1.gif" border="0"></a>
					</div>
					<div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
						<iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div id="mbDIV1" style="display:none;"></div>
		<div class="shortcut">
			<div class="page">
				<div class="shortcut-left">
					<ul>
						<li class="city"><span>当前：
							<span id="selectcity_new">
							  <script rel="nofollow" src="../static/js/show_city.js" type="text/javascript" language="javascript"></script>深圳
							</span>
							<a rel="nofollow" href="javascript:void(0);" onclick="selectcity('./selectcity_new.jsp');">[切换城市]</a>
							</span>
						</li>
					</ul>
				</div>
				<div class="shortcut-right">
					<ul id="login_show">
						<li>
							<a href="../userIndex/userindex.jsp" rel="nofollow" title="13531454781">13531454781</a>
						</li>
						<li class="my-cart">
							<a href="../userIndex/useraddress.jsp" rel="nofollow"><em>我的回购</em></a>
							<div class="sub-cart">
								<a href="../getUserOrder" rel="nofollow">我的订单</a>
								<a href="../userIndex/userindex.jsp" rel="nofollow">帐户中心</a>
								<a href="/member/logout.html" rel="nofollow">退出</a>
							</div>
						</li>
					</ul>
				</div>

			</div>
			<div class="clear"></div>
		</div>
		<div class="header">
			<div class="page">
				<h1 class="logo"><a href="../index.jsp"><img src="../static/picture/logo.png" width="171" height="43" title="二手手机回收交易网"></a></h1>
				<!--    <h1 class="day" style="display:block;"><a href="/vr" rel="nofollow" target="_blank"><img src="-->
				<!--images/new_images/day.gif" alt="" /></a></h1>-->
				<div class="nav">
					<a title="闲置二手手机回收估价" href="" class="on">闲置回收</a>
					<a title="靓机优选手机抢购" href="../news.jsp">绿色课堂</a>
				</div>
			</div>
		</div>
		<link rel="stylesheet" type="text/css" href="../static/css/calendar.css">
		<script type="text/javascript" src="../static/js/calendar.php"></script>
		<!--查询结果-->
		<div class="search_list">
			<div class="page">
				<div class="current">
					<a href="/">首页</a><span>&gt;</span>
					<a href="../userIndex/userindex.jsp">会员中心</a>
				</div>
				<!--会员中心-->
				<div class="member">
					<link href="../static/css/member.css" rel="stylesheet" type="text/css">
					<!--会员中心列表-->
					<div class="member_l">
						<dl class="member_l_list">
							<dd>
								<a href="../userIndex/userindex.jsp"><b class="item1">&nbsp;</b><em>帐户中心</em></a>
							</dd>
							<dd class="item_on">
								<a href=""><b class="item2">&nbsp;</b><em>回购订单</em>
									<!--<span>1</span>--></a>
							</dd>
							<dd>
								<a href="../userIndex/useraddress.jsp"><b class="item4">&nbsp;</b><em>地址管理</em></a>
							</dd>

						</dl>
					</div>
					<!--会员中心列表-->
					<div class="member_r2">
						<div class="transaction">
							<dl class="transaction_title">
								<dd class="item_on">
									<a href="../getUserOrder"><b class="item1">&nbsp;</b><em class="oo1">交易中订单</em></a>
								</dd>
								<dd>
									<a href="../getUserFinishOrder"><b class="item2">&nbsp;</b><em>已成交订单</em></a>
								</dd>

								<div class="clear"></div>
							</dl>
							<div class="transaction_main">
								<link href="../static/css/WdatePicker.css" rel="stylesheet" type="text/css">
								<script src="../static/js/WdatePicker.js" type="text/javascript"></script>
								<div class="clear"></div>
								<script>
									function member_order_search() {
										var val = $.trim($("#member_order_gname").val());
										if(val == '输入关键词搜索') {
											$("#member_order_gname").val('')
										}
										$("#member_order").submit();
									}
								</script>

								<div class="transaction_table_title"><span class="span1">回收产品</span><span class="span2">回收价格</span><span class="span3">订单状态</span><span class="span4">操作</span></div>
								<c:forEach items="${userOrderDetails}" var="orderDetails">
									<table width="100%" border="0" cellpadding="0" cellspacing="1" class="table2">
										<tbody>
										<tr>
											<th height="24" colspan="4"><div class="table2_title"><span class="span1">
												<label>
												  &nbsp;&nbsp;
												  <samp>订单编号</samp><em>${orderDetails["order"].orderId}</em></label>
												</span>
												<span class="span2">交易方式：支付宝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提交时间：${orderDetails["order"].orderTime}</span>

											</div>
											</th>
										</tr>
										<tr>
											<td width="336" height="110">
												<div class="table2_delete">

													<a href="javascript:void(0)">&nbsp;</a>

												</div>
												<div class="table2_img">
													<a href="${pageContext.request.contextPath}/showGoodsDetail/${orderDetails["goods"].goodsId}" target="_blank"><img src="${pageContext.request.contextPath}/static/picture/${orderDetails["goods"].goodsPicture}" width="56" height="42"></a>
												</div>
												<div class="table2_txt"><table><tbody><tr><td align="left" height="60">${orderDetails["goods"].goodsName}</td></tr></tbody></table></div>
												<div class="clear"></div></td>
											<td width="156" style="line-height:25px;">
												<span>评估价格<em> ${orderDetails["goods"].goodsPrice * orderDetails.predictWeight} </em>元</span>
											</td>
											<td width="178">
												<p class="table2_p"><span>交易处理中</span><br></p>
												<c:choose>
													<c:when test="${orderDetails['order'].deliveryState} == 0">
														<p class="table2_p"><span>待发货</span><br>
													</c:when>
													<c:otherwise>
												<p class="table2_p"><span>正在发货</span><br>
													</c:otherwise>
												</c:choose>
											</td>
											<td width="175">
												<span class="span3"><a href="${pageContext.request.contextPath}/deleteUserOrder/${orderDetails['order'].orderId}" >取消订单</a></span>
											</td>
										</tr>
										</tbody>
									</table>
								</c:forEach>
								<div class="tansaction_check">

								</div>
								<div class="more" style="width:518px; float:right; margin:10px 0 0 0; text-align:right">
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<!--会员中心-->
			</div>
		</div>
		<!--查询结果-->
		<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
		<script type="text/javascript" src="../static/js/alert_zhe.js"></script>
		<!--弹出价格申请操作开始-->
		<form method="post" name="cancel_form" id="cancel_form" enctype="multipart/form-data" action="/member/order_cancel.html">
			<div id="status_loading" class="Loading" style="display:none; ">
				<div class="tyd_box" style=" width:532px;">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_child_title">订单取消原因</span>
							<a href="javascript:ttt('status_loading')"><img src="../static/picture/close1.gif" border="0"></a>
						</div>
						<div class="tyd_box_content" style="width:502px;overflow:auto; height:360px;">
							<input type="hidden" name="order_cancel" id="order_cancel" value="0">
							<input type="hidden" name="order_id" id="order_id" value="0">
							<style>
								.quxiao span {
									background: #eee;
									padding: 2px 5px;
									font-size: 13px;
									margin: 2px 4px;
									display: inline-table;
									cursor: pointer;
								}
								
								.quxiao span.click {
									background: #f80;
									color: #fff
								}
								
								.quxiao .input_btn1 {
									background: #f80;
									color: #fff;
									width: 50px;
									height: 24px;
									line-height: 24px;
									text-align: center;
									border: none
								}
								
								.quxiao .input_btn2 {
									background: #999;
									color: #fff;
									width: 50px;
									height: 24px;
									line-height: 24px;
									text-align: center;
									border: none
								}
							</style>
							<table width="502" class="quxiao">
								<tbody>
									<tr>
										<td align="left" colspan="3" height="40" style="font-size:14px; font-weight:bold;">请告知我们取消订单的原因，我们改善之后更好为您服务！</td>
									</tr>

									<tr>
										<td align="left" colspan="3" style=" line-height:25px; font-size:14px;" id="order_cancel_tr">
											<span onclick="order_cancel_click(this,'1')">A体验下单流程</span>
											<span onclick="order_cancel_click(this,'2')">B评估错误重新下</span>
											<span onclick="order_cancel_click(this,'3')">C价格不满意</span>
											<br> <span onclick="order_cancel_click(this,'4')">D需要改时间回收</span>
											<span onclick="order_cancel_click(this,'5')">E不想邮寄</span>
											<span onclick="order_cancel_click(this,'6')">F还要用不回收</span>
											<br> </td>
									</tr>

									<tr>
										<td width="15%" align="left">其它原因：</td>
										<td width="77%" align="left">
											<textarea name="remark" id="remark" style=" width:400px; height:70px; border:1px solid #ccc;"></textarea>
										</td>
										<td width="8%"></td>
									</tr>
									<tr>
										<td width="15%" height="40"></td>
										<td align="left"><input type="button" value="确定" name="sub_button" id="sub_button" onclick="cancelCheckForm()" class="input_btn1">&nbsp;&nbsp;<input type="button" value="关闭" onclick="ttt('status_loading')" class="input_btn2"></td>
										<td width="8%"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!--弹出价格申请操作结束-->
		<div class="share_box">
			<div class="share_close">
				<img src="../static/picture/share_close.png">
			</div>
			<div class="share_img"><img id="code" src=""></div>
			<div class="share_liucheng"><img src="../static/picture/share_txt1.png"></div>
			<div class="share_txt">
				<p> 1.扫描二维码进入手机分享页面；<br> 2.分享给好友帮忙点赞，点赞越多，加价越多！每个好友限为对方点赞一次！当点赞数达到一定数量时，则可对应加价额度（见下表）。
					<br> 3.分享后的24小时内为点赞时间，24小时后点赞结束，并确认是您的最终评估价格。
					<br> 4.回收手机的实际估价满100元方可参与加价活动；
					<br> 最终解释权归回购网所有。 </p>
			</div>
			<table width="260" border="0" cellpadding="1" cellspacing="1" bgcolor="#99ccff" class="share_table">
				<tbody>
					<tr>
						<td>评估价格</td>
						<td>点赞数</td>
						<td>加价</td>
					</tr>
					<tr>
						<td>100-500</td>
						<td>10</td>
						<td>20</td>
					</tr>
					<tr>
						<td>501-1000</td>
						<td>30</td>
						<td>50</td>
					</tr>
					<tr>
						<td>1001-2000</td>
						<td>70</td>
						<td>80</td>
					</tr>
					<tr>
						<td>2001-3000</td>
						<td>90</td>
						<td>100</td>
					</tr>
					<tr>
						<td>3001-10000</td>
						<td>110</td>
						<td>120</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="mask" class="mask"></div>
		<script>
			function order_cancel_click(obj, val) {
				$("#order_cancel_tr span").each(function() {
					$(this).removeClass('click');
				})
				$(obj).attr('class', 'click');
				$("#order_cancel").val(val);
			}

			function show_order_cancel(id) {
				$("#order_id").val(id);
				OpenDiv('status_loading', 530, 200, '');
			}

			function cancelCheckForm() {
				if($("#order_id").val() == 0) {
					alert("操作有误");
					return false;
				}

				if($("#order_cancel").val() == 0 && $.trim($("#remark").val()) == '') {
					alert("请选择订单取消原因，或输入其它原因");
					$("#remark").focus();
					return false;
				}

				$("#sub_button").attr('disabled', 'disabled');
				$("#cancel_form").submit();
			}

			function showMask(img) {
				$("#code").attr("src", img);
				$("#mask").css("height", $(document).height());
				$("#mask").css("width", $(document).width());
				$("#mask").show();
				$(".share_box").show();
			}
			$(function() {
				$(".share_close").bind("click", function() {
					$(".share_box").hide();
					$("#mask").hide();
				})
			});
		</script>
		<div class="footer">
			<div class="page2">
				<dl class="foot_list1">
					<dt>关于我们</dt>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="回购网高价在线手机回收平台">关于回购网</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="回购网手机回收联系方式">联系我们</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow" title="回购网长期招聘爱好手机回收行业的小伙伴">人才招聘</a>
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
						<a href="" target="_blank" title="回购网的网站地图导航">网站地图</a>
					</dd>
				</dl>
				<dl class="foot_list3">
					<dt>客服热线</dt>
					<dd>
						<p><img src="../static/picture/tel_new4.png"></p>
						<!--        <div><a href="/html/hzsr.html" rel="nofollow" target="_blank" class="rk1" title="手机回收业务大客户登录入口">大客户入口</a><a href="/html/hzs.html" rel="nofollow" target="_blank" class="rk2" title="手机回收合作商登录入口">合作商入口</a></div>-->
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
					<p><em>Copyright Reserved 2009-2018 @</em> 深圳市绿创网络科技有限公司版权所有 <span><a href="javascript:;" target="_blank" rel="nofollow">粤ICP备10071783号</a> <script rel="nofollow" src="../static/js/stat-4678782_4678782.js" language="JavaScript"></script> <script>
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
			<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe1.css">
			<script type="text/javascript" src="../static/js/alert_zhe1.js"></script>
			<div id="Loading_server" class="Loading_server" style="display:none; height:580px;" ondblclick="ttt('Loading_server');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_server_title"></span>
							<a href="javascript:ttt('Loading_server')"><img src="../static/picture/close1.gif" border="0"></a>
						</div>
						<div class="tyd_box_content" style="width:524px;height:529px; overflow:hidden">
							<iframe id="Loading_server_iframe_id" name="iframe_id" width="524" height="529" border="0" frameborder="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="mbDIV" style="display:none;"></div>
			<script type="text/javascript" src="../static/js/jquery.scrollLoading.js"></script>
			<script>
				$(document).ready(function() {
					$(".scrollLoading").scrollLoading()
				});

                function gocart(gourl) {
                    location.href = gourl;
                }
			</script>
			<input type="hidden" id="public_gourl" value="">
			<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe2.css">
			<script type="text/javascript" src="../static/js/alert_zhe2.js"></script>
			<div id="Loading_child_members" class="Loading" style="display:none; height:600px;" ondblclick="ttt('Loading_child_members');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_child_members_title"></span>
							<a href="javascript:ttt('Loading_child_members')"><img src="../static/picture/close1.gif" border="0"></a>
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