<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>地址管理-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
		<meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收">
		<meta name="description" content="回购网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/member/address.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/member/address.html">
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

	</head>
	<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
	<script type="text/javascript" src="../static/js/alert_zhe.js"></script>

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
						<a href="/member.html" rel="nofollow" title="13531454781">13531454781</a>
					</li>
					<li class="my-cart">
						<a href="../userIndex/userindex.jsp" rel="nofollow"><em>我的回购</em></a>
						<div class="sub-cart">
							<a href="../getUserOrder" rel="nofollow">我的订单</a>
							<a href="../userIndex/userindex.jsp" rel="nofollow">帐户中心</a>
							<a href="/member/logout.html" rel="nofollow">退出</a>
						</div>
					</li>

				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="header">
		<div class="page2">
			<h1 class="logo"><a href="" title="回购网一家专业的二手手机回收交易网站"><img src="../static/picture/logo.png" alt="回购网一家专业的二手手机回收交易网站" width="171" height="43"></a></h1>
			<div class="nav">
				<a title="在线回收闲置旧手机" href="../goods.jsp">闲置回收</a>
				<a title="旧手机就来回购网以旧换新" href="../news.jsp">绿色课堂</a>
			</div>
			<script src="../static/js/show_index_cart.js" type="text/javascript" language="javascript"></script>

		</div>
	</div>
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
						<dd>
							<a href="../getUserOrder"><b class="item2">&nbsp;</b><em>回购订单</em>
								<!--<span>1</span>--></a>
						</dd>
						<dd class="item_on">
							<a href=""><b class="item4">&nbsp;</b><em>地址管理</em></a>
						</dd>

					</dl>
				</div>
				<!--会员中心列表-->
				<div class="member_r2">
					<!--我的环保券-->
					<div class="protection">
						<div class="protection_title"><span>地址管理</span></div>
						<div id="address_content_div">
							<!--设置地址-->
							<div class="protect_address">
                                <c:if test="${not empty user.address}">
								<div class="protect_top"><img src="../static/picture/top1.jpg"></div>
								<div class="protect_center">
									<div class="protect_title2"><span>${user.userName}</span><em>${user.userPhone}</em></div>
									<div class="protect_txt">
										<p>
											<span>${user.address}</span>
										</p>
									</div>
								</div>
								<div class="protect_bottom">
									<em><a href="javascript:funcaddress('../userIndex/updateaddress.jsp','mod')" class="protect_bottom_1">&nbsp;</a><a href="javascript:if(confirm('您确认要删除吗？')) location.href='${pageContext.request.contextPath}/deleteUserAddress'" class="protect_bottom_2">&nbsp;</a></em>
								</div>
                                </c:if>
							</div>
							<!--设置地址-->
						</div>

						<div class="clear"></div>
						<div class="protect_add_dz">
							<a href="javascript:funcaddress('../userIndex/updateaddress.jsp','add')"><i class="iconfont"></i><em>新增地址</em></a>
						</div>
						<br>
						<br>
						<br>
					</div>
					<!--我的环保券-->
				</div>
				<div class="clear"></div>
			</div>
			<!--会员中心-->
		</div>
	</div>
	<!--查询结果-->
	<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
	<script type="text/javascript" src="../static/js/alert_zhe.js"></script>
	<!-- 弹出框start -->
	<div id="Loading_child" class="Loading" style="display:none; height:450px;" ondblclick="ttt('Loading_child');">
		<div class="tyd_box">
			<div class="tyd_box_c">
				<div class="tyd_box_title">
					<span id="Loading_child_title"></span>
					<a href="javascript:ttt('Loading_child')"><img src="../static/picture/close1.gif" border="0"></a>
				</div>
				<div class="tyd_box_content" style="width:612px;overflow:auto; height:360px;">
					<iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="360" border="0" frameborder="0"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div id="mbDIV1" style="display:none;"></div>
	<!--  弹出框end -->
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
					<a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">&nbsp;</a>
				</dd>
				<dd class="weixin">
					<a rel="nofollow" class="weixin2" target="_blank">
						<div class="weixin-qrcode2"></div>
					</a>
				</dd>
			</dl>
			<div class="clear"></div>
			<div class="statist">
				<p><em>Copyright Reserved 2009-2018 @</em> 深圳市绿创网络科技有限公司版权所有 <span><a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备10071783号</a> <script rel="nofollow" src="http://s23.cnzz.com/stat.php?id=4678782&amp;web_id=4678782" language="JavaScript"></script><script src="http://c.cnzz.com/core.php?web_id=4678782&amp;t=z" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=4678782" target="_blank" title="站长统计">站长统计</a> <script>
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
		<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
		<script type="text/javascript" src="../static/js/alert_zhe.js"></script>
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
		<link rel="stylesheet" type="text/css" href="../static/css/alert_zhe.css">
		<script type="text/javascript" src="../static/js/alert_zhe.js"></script>
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
		<div id="mbDIV_members" style="display: none; height: 961px;"></div>
		<script type="text/javascript">
			function login_pop() {
				var gourl = arguments[0] ? arguments[0] : '';
				if(gourl != '') $("#public_gourl").val(gourl);
				open_div_extends('登录与注册', '/members/login_popup.html', 'Loading_child_members', '502', '600');
			}
		</script>

		<script>
			function funcaddress(url, func) {
				if(func == 'mod') {
					open_div_extends('修改地址', url, 'Loading_child');
				} else {
					open_div_extends('添加地址', url, 'Loading_child');
				}
			}
		</script>
	</div>

</html>