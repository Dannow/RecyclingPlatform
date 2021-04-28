<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>闲置回收|卖闲置手机|闲置手机回收价格评估-回购网_第1页</title>
		<meta name="keywords" content="闲置回收,闲置手机回收,闲置笔记本回收,闲置平板回收,闲置数码相机回收,闲置游戏机回收,闲置无人机回收">
		<meta name="description" content="回购网闲置二手数码产品回收，为您提供专业安全的闲置二手手机、笔记本、平板、数码相机、游戏机、无人机的回收交易、专业检测、价格评估服务。">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/goods.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/goods.html">

		<link href="${pageContext.request.contextPath}/static/css/global.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/static/js/jquery-1.4.2.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/js/new_public.js" type="text/javascript"></script>
		<script type="text/javascript">
			function selectcity(url) {
				open_div_extends('切换地区', url, 'Loading_child');
			}
		</script>

		<link href="${pageContext.request.contextPath}/static/css/new_global.css" rel="stylesheet" type="text/css">

		<script src="${pageContext.request.contextPath}/static/js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/static/js/lrtk.js" type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/static/js/menu.js" type="text/javascript"></script>

		<script src="${pageContext.request.contextPath}/static/js/index.js" type="text/javascript"></script>

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
					<a title="闲置二手手机回收估价" href="" class="on">闲置回收</a>
					<a title="靓机优选手机抢购" href="news.jsp">绿色课堂</a>
				</div>
			</div>
		</div>
		<!--头部-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/goods.js"></script>
		<div class="new_search" style="padding-bottom:20px">
			<div class="search-box">
				<div class="search-title">搜一下，看看你的二手闲置还值多少钱</div>
				<div class="search">
					<div class="search-fenlei" id="search-fenlei">
						<div class="set" id="all_type">全部分类</div>
					</div>
					<form name="top_goods_search" id="top_goods_search" action="${pageContext.request.contextPath}/searchGoods/1" method="get">
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
		<!--查询结果-->
		<div class="search_list">
			<div class="page">
				<div class="current">
					<a href="index.jsp">首页</a><span>></span>
					<a href="goods.jsp">闲置回收</a>
					<em></em>
				</div>
				<div class="side_left">
					<dl class="side_list">
						<dt>搜索结果分类</dt>
						<dd class="">
							<a href="${pageContext.request.contextPath}/showFirstSortGoods1/1" title="家用电器回收价格评估"><b class="item1">&nbsp;</b><em>家用电器类</em><span>&nbsp;</span></a>
						</dd>
						<dd class="">
							<a href="${pageContext.request.contextPath}/showFirstSortGoods2/1" title="小件垃圾回收价格评估"><b class="item2">&nbsp;</b><em>小件垃圾类</em><span>&nbsp;</span></a>
						</dd>
						<dd class="last">
							<a href="${pageContext.request.contextPath}/showFirstSortGoods3/1" title="大件垃圾回收价格评估"><b class="item3">&nbsp;</b><em>大件垃圾类</em><span>&nbsp;</span></a>
						</dd>
					</dl>
					<ul class="hotline">
						<!--         <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=4009608558&site=qq&menu=yes" rel="nofollow" title="回购网手机回收在线客服咨询"><img src="/images/icon29.png" alt="回购网手机回收在线客服咨询" style="vertical-align:middle"/></a><span>4009608558</span></li>-->
						<li><img src="${pageContext.request.contextPath}/static/picture/icon30.png" alt="回购网手机回收400电话咨询" style="vertical-align:middle"><span>400-9608-558</span></li>
					</ul>
				</div>
				<div class="side_right">
					<div class="search_main">

						<dl class="pic_list">
							<c:forEach var="goods" items="${goodsPageInfo3.list}">
							<dd>
								<div class="pic_list_box">
									<div class="pic_list_img">
										<a href="${pageContext.request.contextPath}/showGoodsDetail/${goods.goodsId}" title="${goods.goodsName}回收价格评估"><img src="${pageContext.request.contextPath}/static/picture/${goods.goodsPicture}" width="180" height="135" alt="${goods.goodsName}闲置回收价格评估"></a>
									</div>
									<p class="name">${goods.goodsName}</p>
									<p class="pinggu">
										<a href="${pageContext.request.contextPath}/showGoodsDetail/${goods.goodsId}" title="${goods.goodsName}回收价格">
										</a>
									</p>
								</div>
							</dd>
							</c:forEach>
							<div class="clear"></div>
						</dl>
						<div class="clear"></div>
						<div class="pageStr">
							<div class="ihuigo_page">
								<a href="${pageContext.request.contextPath}/showAllGoods/${goodsPageInfo3.pageNum-1}">上一页</a>
								<c:forEach var="page_num" items="${goodsPageInfo3.navigatepageNums}">
									<c:if test="${page_num == goodsPageInfo3.pageNum}">
										<span class="cur_link">${page_num}</span>
									</c:if>
									<c:if test="${page_num != goodsPageInfo3.pageNum}">
										<span><a href="${pageContext.request.contextPath}/showAllGoods/${page_num}">${page_num}</a></span>
									</c:if>
								</c:forEach>

								<span class="next_link"><a href="${pageContext.request.contextPath}/showAllGoods/${goodsPageInfo3.pageNum+1}">下一页</a></span>
								<span class="last_link"><a href="${pageContext.request.contextPath}/showAllGoods/${goodsPageInfo3.total}">尾页</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--查询结果-->
		<script type="text/javascript">
			$(document).ready(function() {
				$('.pic_list dd').mousemove(function() {
					$(this).find('.pic_list_box').addClass('kuang');
				});
				$('.pic_list dd').mouseleave(function() {
					$(this).find('.pic_list_box').removeClass('kuang');
				});
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