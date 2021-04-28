<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>itouch5-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
		<meta name="keywords" content="itouch5代 itouch5 ipodtouch itouch5 ipod touch5">
		<meta name="description" content="itouch5代 itouch5 ipodtouch itouch5 ipod touch5">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/goods/show_price/498340f4a585bc11b0c738f468ce0b56.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/goods/show_price/498340f4a585bc11b0c738f468ce0b56.html">

		<link href="${pageContext.request.contextPath}/static/css/global.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/static/js/jquery-1.4.2.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/js/new_public.js" type="text/javascript"></script>
		<script type="text/javascript">
			function selectcity(url) {
				open_div_extends('切换地区', url, 'Loading_child');
			}
		</script>
		
		<link href="${pageContext.request.contextPath}/static/css/sub.css" rel="stylesheet" type="text/css">

		<script src="${pageContext.request.contextPath}/static/js/public.js" type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/static/js/menu.js" type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/static/js/new_goods.js" type="text/javascript"></script>

	</head>

	<body>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/alert_zhe.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/alert_zhe.js"></script>
		<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt('Loading_child');">
			<div class="tyd_box">
				<div class="tyd_box_c">
					<div class="tyd_box_title">
						<span id="Loading_child_title"></span>
						<a href="javascript:ttt('Loading_child')"><img src="${pageContext.request.contextPath}/static/picture/close1.gif" border="0"></a>
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
							  <script rel="nofollow" src="${pageContext.request.contextPath}/static/js/show_city.js" type="text/javascript" language="javascript"></script>
							</span>
							<a rel="nofollow" href="javascript:void(0);" onclick="selectcity('./selectcity_new.jsp');">[切换城市]</a>
							</span>
						</li>
					</ul>
				</div>
				<div class="shortcut-right">
                    <ul >
                        <c:choose>
                            <c:when test="${user == null}">
                                <li>
                                    <a href="login.jsp" rel="nofollow">登录</a>
                                </li>
                                <li>
                                    <a href="register.jsp" rel="nofollow">注册</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a href="${pageContext.request.contextPath}/userIndex/userindex.jsp" rel="nofollow">${user.userPhone}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
				</div>

			</div>
			<div class="clear"></div>
		</div>

		<div class="header">
			<div class="page">
				<h1 class="logo"><a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/static/picture/logo.png" width="171" height="43" title="二手手机回收交易网"></a></h1>
				<div class="nav">
					<a title="闲置二手手机回收估价" href="goods.jsp" class="on">闲置回收</a>
					<a title="靓机优选手机抢购" href="news.jsp">绿色课堂</a>
				</div>
			</div>
		</div>
		<!--头部-->

		<!--手机回收-->
		<input type="hidden" id="sn" value="498340f4a585bc11b0c738f468ce0b56">
		<input type="hidden" id="sign" value="7b0079ed9d788156d17dea95a7438eff">
		<div class="recovery">

			<div class="page2">

				<div class="heat_l" style="width:276px;">
					<div class="heat_img"><img src="${pageContext.request.contextPath}/static/picture/${orderGoods.goodsPicture}" width="264" height="197"></div>
				</div>
				<div class="heat_new">
					<input type="hidden" name="typeid" id="typeid" value="1">

					<dl>
						<dt><span>请选择一种回购方式</span></dt>
						<dd class="clearfix heat_on" name="1">
							<div class="heat_yellow"> <img src="${pageContext.request.contextPath}/static/picture/new_jian.png" class="new_jian">
								<div class="yellow_l">
									<a href="javascript:;" class="new_gou new_gou2"></a> <span class="new_icon1">现金</span> </div>
								<div class="yellow_r"> <span>评估价格:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
									<span style="color: red;font-size: 20px;">${orderGoods.goodsPrice * predictWeight}元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
									<div class="clear"></div>
								</div>
							</div>
							<input type="button" value="立即下单" class="heat_input" onclick="javascrtpt:window.location.href='${pageContext.request.contextPath}/addGoodsToCart'">
							<a href="javascript:;" class="heat_hg" onclick="new_addcart3('/addGoodsToCartDirect')">加入回购车</a>
						</dd>
					</dl>
				</div>
				<script>
					load_show_price_extends('/ajax/load_show_price.html');
					/*==选择==*/
					$(".heat_new dd").click(function() {
						$("#typeid").val($(this).attr('name'));
						$(this).addClass("heat_on").siblings().removeClass("heat_on");
						$(this).find(".yellow_l a").addClass("new_gou2").siblings().removeClass("new_gou2");
					});
					$(".heat_arrow").click(function(event) {
						event.stopPropagation();
						$(this).toggleClass("arrow3")
						$(".heat_list").slideToggle(100)

					});

					$(".heat_new dd").bind("click", function() {
						var b = $(".heat_list").is(':hidden')
						if(!b) {
							$(".heat_list").slideUp();
							$(".heat_arrow").toggleClass("arrow3")
						};
					})

					/*==选择==*/
				</script>

				<div class="clear"></div>

			</div>

		</div>
		<!--手机回收-->

		<div class="content page2">

			<div class="side">

				<div class="list" id="nav_s_list1">

					<div class="qiehuan">

						<a class="on" id="nav_p1" ><span class="itme1"><!--精准选项--></span></a>

					</div>

					<div id="nav_p_list1" class="nav_p_list"><img src="${pageContext.request.contextPath}/static/picture/zb3.png"></div>
				</div>

				<div class="list" id="nav_s_list2" style="display:none">

					<iframe id="goods_review" name="goods_review" src="" width="724" border="0" frameborder="0"></iframe>

				</div>

				<div class="list" id="nav_s_list3" style="display:none">

					<iframe id="goods_zhijian" name="goods_zhijian" src="" width="724" border="0" frameborder="0"></iframe>

				</div>

			</div>

			<!--回购须知-->

			<div class="notes">

				<div class="notes_title"><span>回购须知</span></div>

				<dl>

					<dd>

						<div class="img"><img src="${pageContext.request.contextPath}/static/picture/icon12.gif"></div>

						<div class="txt">

							<h2>取消密码</h2>

							<p>请将所设置的密码取消，以便我们检测人员及时进行功能检测。</p>

						</div>

						<div class="clear"></div>

					</dd>

					<dd>

						<div class="img"><img src="${pageContext.request.contextPath}/static/picture/icon13.gif"></div>

						<div class="txt">

							<h2>退出账户</h2>

							<p>苹果手机IOS7以上请退出icloud帐户魅族请退出flyme帐户</p>

						</div>

						<div class="clear"></div>

					</dd>

					<dd>

						<div class="img"><img src="${pageContext.request.contextPath}/static/picture/icon14.gif"></div>

						<div class="txt">

							<h2>回收过程安全吗？</h2>

							<p>回购网是正规工商注册的环保企业，成立3年多，是中国标准化回收的领航者。支持多种方式交易：支付宝担保、货到付款和当面交易,并承诺到货后24小时之内确认汇款</p>

						</div>

						<div class="clear"></div>

					</dd>

					<dd class="no">

						<div class="img"><img src="${pageContext.request.contextPath}/static/picture/icon15.gif"></div>

						<div class="txt">

							<h2>价格会不会有变动？</h2>

							<p>只要您所描叙的使用情况和实际相符合，这个就是最终的回购价格，不会有变动，若和所描叙的有差异，我们将与您说明情况，然后根据网站的评估系统重新评估。若价格不合适，您也可以要求退货。</p>

						</div>

						<div class="clear"></div>

					</dd>

				</dl>

			</div>

			<!--回购须知-->

			<div class="clear"></div>

		</div>

		<div id="pai_mark" class="pai_mark"></div>
		<div class="pai_box pai_give"> <img src="${pageContext.request.contextPath}/static/picture/pai_close.png" class="pai_close1">

			<div class="pai_bottom">
				<input type="button" value="领取现金" class="pai_btn1">
			</div>
		</div>
		<div class="pai_cai pai_success">
			<img src="${pageContext.request.contextPath}/static/picture/pai_close.png" class="pai_close2">
			<h4><span class="cache_amount"></span>元领取成功!</h4>
			<p>
				1、即领即用，领取后默认使用加价； <br> 2、加价使用规则
				<a href="javascript:;">点击查看详情</a><br> 3、评估一台手机即可领取一次现金，但每个订单限用一 个。<br> 4、每日限领3次现金，领取的现金仅限当天使用。
				<br> 5、活动时间：2016.5.01-2016.5.10，请尽快使用；
				<br> 6、回购网保留在法律规定的范围内对上述规则进行解释的权利。 <br>

			</p>
			<div class="pai_bottom2">
				<input type="button" value="领取成功" class="pai_btn1">
			</div>
		</div>
		<script type="text/javascript">
			function showmark() {
				$("#pai_mark").css("width", $(document).width())
				$("#pai_mark").css("height", $(document).height())
				$(".pai_box").show();
				$("#pai_mark").show();
			}

			function show_box() {
				//onClick="receive_coupon('/ajax/receive_coupon.html');"
				$("#pai_mark").css("width", $(document).width())
				$("#pai_mark").css("height", $(document).height())
				$("#pai_mark").show();
				$(".pai_give").show();
			}

			$(function() {
				$(".pai_close1").bind("click", function() {
					$(".pai_box").hide();
					$("#pai_mark").hide();
					$(".pai_give").hide();
				})
				$(".pai_btn1").click(function() {
					//                    receive_coupon('/ajax/receive_coupon.html');
					var url = "/ajax/receive_coupon.html";
					var sn = $("#sn").val();
					var sign = $("#sign").val();
					$.post(url, {
						'sn': sn,
						'sign': sign
					}, function(data) {
						if(data.status == "true") {
							$(".cache_amount").text(data.amount);
							$(".pai_give").hide();
							$(".pai_success").show();
							$(".labor_div").text("下单后默认加价" + data.amount + "元");
						} else {
							alert(data.msg);
						}
					}, "json");

				})

			});
			$(function() {
				$(".pai_close2").bind("click", function() {
					$(".pai_cai").hide();
					$("#pai_mark").hide();

					$(".pai_success").hide();
				})
			});
		</script>

		<script>
			function goshuangdan(check_url, gourl) {
				$.post(check_url, {}, function(data) {
					var obj = eval(data);
					if(obj[0] == 0) {
						login_pop(gourl);
						return;
					}
					location.reload();
				})
			}
		</script>
		<script>
			$(function() {
				_nav('nav_s', 2, 3);
				show_goods_review('/goods/new_review/?gid=17548.html');
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
						<p><img src="${pageContext.request.contextPath}/static/picture/tel_new4.png"></p>
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
					<p><em>Copyright Reserved 2009-2018 @</em> 深圳市绿创网络科技有限公司版权所有 <span><a href="javascript:;" target="_blank" rel="nofollow">粤ICP备10071783号</a> <script rel="nofollow" src="${pageContext.request.contextPath}/static/js/stat-4678782_4678782.js" language="JavaScript"></script> <script>
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
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/alert_zhe1.css">
			<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/alert_zhe1.js"></script>
			<div id="Loading_server" class="Loading_server" style="display:none; height:580px;" ondblclick="ttt('Loading_server');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_server_title"></span>
							<a href="javascript:ttt('Loading_server')"><img src="${pageContext.request.contextPath}/static/picture/close1.gif" border="0"></a>
						</div>
						<div class="tyd_box_content" style="width:524px;height:529px; overflow:hidden">
							<iframe id="Loading_server_iframe_id" name="iframe_id" width="524" height="529" border="0" frameborder="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="mbDIV" style="display:none;"></div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.scrollLoading.js"></script>
			<script>
				$(document).ready(function() {
					$(".scrollLoading").scrollLoading()
				});

                function gocart(gourl) {
                    location.href = gourl;
                }
			</script>
			<input type="hidden" id="public_gourl" value="">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/alert_zhe2.css">
			<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/alert_zhe2.js"></script>
			<div id="Loading_child_members" class="Loading" style="display:none; height:600px;" ondblclick="ttt('Loading_child_members');">
				<div class="tyd_box">
					<div class="tyd_box_c">
						<div class="tyd_box_title">
							<span id="Loading_child_members_title"></span>
							<a href="javascript:ttt('Loading_child_members')"><img src="${pageContext.request.contextPath}/static/picture/close1.gif" border="0"></a>
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