<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>iPhone 8的30天内回收平均价格1200元-回购网 - 二手数码回收平台</title>
		<meta name="keywords" content="苹果 iPhone 8 苹果iPhone8 iPhone8 苹果8 iphone8 iPhone8">
		<meta name="description" content="苹果 iPhone 8 苹果iPhone8 iPhone8 苹果8 iphone8 iPhone8">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/goods/info/21724.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/goods/info/21724.html">

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
					<ul id='login_show'>
						<c:choose>
							<c:when test="${user == null}">
								<li>
									<a href="${pageContext.request.contextPath}/login.jsp" rel="nofollow">登录</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/register.jsp" rel="nofollow">注册</a>
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
		<div class="recovery">
			<script type="text/javascript">
				$(document).ready(function() {
					$(".new_search_btn").click(function() {
						$(".new_search").slideToggle();
					});
				});
			</script>
			<div class="page2" style="position:relative">
				<div class="new_search" style="display:none">
					<div class="search-box">
						<h2 class="search-title">搜一下，看看你的闲置还值多少钱</h2>
						<div class="search">
							<div class="search-fenlei" id="search-fenlei">
								<div class="set" id="all_type">全部分类</div>
								<div class="search-list">
									<ul>
										<li class="search-list-icon1">
											<a href="javascript:void(0)" rel="nofollow"><span onclick="t_click(this,'5')">手机</span></a>
										</li>
										<li class="search-list-icon2">
											<a href="javascript:void(0)" rel="nofollow"><span onclick="t_click(this,'7')">苹果系列</span></a>
										</li>
										<li class="search-list-icon3">
											<a href="javascript:void(0)" rel="nofollow"><span onclick="t_click(this,'23')">平板电脑</span></a>
										</li>
									</ul>
								</div>
							</div>
							<form name="top_goods_search" id="top_goods_search" action="/goods.jsp" method="get">
								<input type="hidden" name="pid" id="top_pid" value="0">
								<input type="text" name="gname" id="top_name" value="请输入品牌型号搜索" class="input-txt" onkeydown="if(event.keyCode==13) return top_search_goods();" onfocus="if(this.value=='请输入品牌型号搜索'){this.value='';}" onblur="if(this.value==''){this.value='请输入品牌型号搜索';}">
								<input type="button" value="" class="input-btn" onclick="top_search_goods()">
							</form>
						</div>
						<div class="search-hot" style="display:none">热门搜索：
							<a href="goods-iphone206.html" rel="nofollow" target="_blank">iPhone 6</a>
							<a href="goods-iphone205s.html" rel="nofollow" target="_blank">iPhone 5s</a>
							<a href="goods-E88DA3E880808.html" rel="nofollow" target="_blank">荣耀8</a>
							<a href="goods-ipad.html" rel="nofollow" target="_blank">iPad</a>
							<a href="goods-iphone207.html" rel="nofollow" target="_blank">iPhone 7</a>
						</div>
					</div>
				</div>
				<div style="height:30px; line-height:30px; font-size:14px;">
					<a href="index.jsp">首页</a> &gt;
					<a href="${pageContext.request.contextPath}/goods.jsp">${goods["secondSort"].secondSortName}</a> &gt;
					<a href="${pageContext.request.contextPath}/goods.jsp"> ${goods.goodsName}</a> &gt; iPhone 8</div>
				<div class="heat_l">
					<div class="heat_img">
						<img src="${pageContext.request.contextPath}/static/picture/${goods.goodsPicture}" alt="${goods.goodsName}回收价格评估" width="264" height="197">
					</div>
					<div class="heat_txt">
						<div class="heat_name"><span>${goods.goodsName}</span></div>
						<dl class="heat_ts">
							<dd><em>${goods.goodsPrice}</em>元<br> 30天内回收最高价
							</dd>
							<dt class="clear"></dt>
						</dl>
					</div>
					<div class="clear"></div>
				</div>
				<script src="${pageContext.request.contextPath}/static/js/raphael-2.1.0.min.js"></script>
				<script src="${pageContext.request.contextPath}/static/js/morris.js"></script>
				<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/morris.css">

				<div class="clear"></div>
			</div>
		</div>
		<!--手机回收-->
		<!--评估流程-->
		<div id="ahs_trade_body">
			<input type="hidden" id="view" value="goods_info">
			<input type="hidden" id="if_show_price" value="1">
			<input type="hidden" id="gid" name="gid" value="21724">
			<input type="hidden" id="package_id" name="package_id" value="800">
			<div id="ahs_property_head">
				<p>开始评估你的物品，只需1步，获得产品精准评估报价</p>
			</div>
			<div id="ahs_property_body">
				<!--第一步-->
				<div id="property_step3">
					<dl>
						<dd class="">
							<input type="hidden" name="desc_pid[]" value="866">
							<input type="hidden" name="desc_id[]" id="desc_id_866" value="0">
							<div class="property_title">
								<h3>预估重量</h3></div>
							<ul>
								<li class="" onclick="item_click(this,'866','1')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>小于1KG</i></span><span class="gou"></span></div>
								</li>
								<li class="" onclick="item_click(this,'866','2')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>2KG</i></span><span class="gou"></span></div>
								</li>
								<li class="" onclick="item_click(this,'866','3')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>3KG</i></span><span class="gou"></span></div>
								</li>
								<li class="" onclick="item_click(this,'866','4')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>4KG</i></span><span class="gou"></span></div>
								</li>
								<li class="" onclick="item_click(this,'866','5')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>5KG</i></span><span class="gou"></span></div>
								</li>
								<li class="last boom" onclick="item_click(this,'866','6')" name="mx_child_866">
									<div class="pro_div"><span class="property_value"><i>大于6KG</i></span><span class="gou"></span></div>
								</li>
								<div class="clear"></div>
							</ul>
						</dd>
					</dl>
					<div id="step3_nav" class="property_nav">
						<div id="btn_step3_next" class="btn_next" onclick="showOrder('${pageContext.request.contextPath}/showGoodsMoney/${goods.goodsId}')">查看价格</div>
					</div>
				</div>
				<!--第一步-->
			</div>
				</div>
				<!--评估流程-->

				<!--隐藏的评估描叙选项start-->
				<div style="display:none; background-color:#CCCCCC;">
				</div>
				<!--隐藏的评估描叙选项end-->
				<script>
                    function showOrder(url){
                        var i=$("#desc_id_866").val();
						window.location.href=url+"/"+i;
					}

					$(document).ready(function() {
						$("#step1_nav .btn_next").bind('click', step1_next);
						$("#step2_nav .btn_next").bind('click', step2_next);
						$("#step2_nav .btn_back").bind('click', step2_back);
						$("#step3_nav .btn_back").bind('click', step3_back);

						$("input[name='property[]']").each(function() {
							$(this).val(0);
						})
						$("#property_step1 input[name='desc_id[]']").each(function() {
							$(this).val(0);
						})
						$("#property_step3 input[name='desc_id[]']").each(function() {
							$(this).val(0);
						})
						$("#pj_ids").val(0);
					})
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