<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>回收网</title>
		<meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收">
		<meta name="description" content="回收网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="index2.html">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/">
		<meta name="mobile-agent" content="format=xhtml;url=http://m.ihuigo.com/">
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="360-site-verification" content="9706ad20e428f954a9a7b73f769403df">
		<meta name="shenma-site-verification" content="9831e8b97bafb157742285aaa79fcd14_1462269111">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global2.css" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index1.css" type="text/css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/Total.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.SuperSlide.2.1.1.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/new_public.js" type="text/javascript"></script>
		<script type="text/javascript">
			function selectcity(url) {
				open_div_extends('切换地区', url, 'Loading_child');
			}


		</script>

		<script>
			(function(a, h, c, b, f, g) {
				a["UdeskApiObject"] = f;
				a[f] = a[f] || function() {
					(a[f].d = a[f].d || []).push(arguments)
				};
				g = h.createElement(c);
				g.async = 1;
				g.charset = "utf-8";
				g.src = b;
				c = h.getElementsByTagName(c)[0];
				c.parentNode.insertBefore(g, c)
			})(window, document, "script", "http://assets-cli.udesk.cn/im_client/js/udeskApi.js", "ud");
			ud({
				"code": "1hh4dci2",
				"link": "http://ihuigo.udesk.cn/im_client?web_plugin_id=27817"
			});

		</script>
		<link href="${pageContext.request.contextPath}/static/css/footer_iframe.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/new_index.js"></script>
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
			<div class="page2 clear">
				<div class="shortcut-left fl">
					<ul>
						<li class="city">
							<span>当前：<span id="selectcity_new"><script rel="nofollow" src="${pageContext.request.contextPath}/static/js/show_city.js" type="text/javascript" language="javascript"></script></span>
							<a href="javascript:void(0);" rel="nofollow" onclick="selectcity('./selectcity_new.jsp');">[切换城市]</a>
							</span>
						</li>
					</ul>
				</div>
				<div class="shortcut-right fr">
					<ul>
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
		</div>

		<div class="header">
			<div class="page2">
				<h1 class="logo"><a href="" title="回收网一家专业的二手手机回收交易网站"><img src="${pageContext.request.contextPath}/static/picture/logo.png" alt="回收网一家专业的二手手机回收交易网站" width="171" height="43"></a></h1>
				<div class="nav">
					<a title="在线回收闲置旧手机" href="goods.jsp">闲置回收</a>
					<a title="旧手机就来回收网以旧换新" href="news.jsp">绿色课堂</a>
				</div>
				<script src="${pageContext.request.contextPath}/static/js/show_index_cart.js" type="text/javascript" language="javascript"></script>

			</div>
		</div>
		<!--头部-->
		<div class="clear"></div>
		<div id="site_banner" class="header-section clear">
			<div class="page2">
				<div class="header-search-box">
					<div class="header-search clear">
						<form name="top_goods_search" id="top_goods_search" method="get" action="${pageContext.request.contextPath}/searchGoods/1">
							<input type="text" id="name_seach" name="gname" autocomplete="off" onkeyup="search_ajax();" onkeydown="if(event.keyCode==13) return search_sub(null);" onfocus="if(this.value=='搜一下，看看你的二手闲置还值多少钱'){this.value='';}search_ajax();" value="" placeholder="搜一下，看看你的二手闲置还值多少钱" class="header-input-txt">
							<input type="button" onclick="top_search_goods()" value="搜索" class="header-input-btn">
							<div class="header-search-list" id="List1" style="display:none;">
								<div id="record_box"></div>
							</div>
						</form>
					</div>
					<div class="header-search-hot"></div>
					<div class="brand-contanier">
						<dl class="brand-list clear">
							<c:forEach var="secondSort" items="${secondSort}">
								<dd>
									<div class="brand-img"><img src="${pageContext.request.contextPath}/static/picture/${secondSort.secondSortPicture}"></div>
									<div class="brand-hover">
										<a href="${pageContext.request.contextPath}/goods.jsp" title="${secondSort.secondSortName}回收价格评估"><img src="${pageContext.request.contextPath}/static/picture/${secondSort.secondSortPicture}" alt="${secondSort.secondSortName}回收价格评估"><span>${secondSort.secondSortName}</span></a>
									</div>
								</dd>
							</c:forEach>
						</dl>
						<dl class="brand-list clear" style="display:none"></dl>
						<div class="clear"></div>
						<div class="brand-tab">
							<span onclick="window.location.href='/goods.jsp'">更多</span>
						</div>
					</div>
					<div class="brand-more"><img src="${pageContext.request.contextPath}/static/picture/arrow-down.jpg"></div>
				</div>
			</div>
			<!--banner切换、搜索-->
			<div class="pro-switch">
				<div class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="img" style="background:url('${pageContext.request.contextPath}/static/image/6281d89e078c166073042218339ca8b9.jpg') no-repeat center top">
								</div>
							</li>

							<li>
								<div class="img" style="background:url('${pageContext.request.contextPath}/static/image/72446123eb049b63d609aba6b362d538.jpg') no-repeat center top">
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--banner切换、搜索-->
		</div>

		<!--计划-->
		<div class="three-plan">
			<dl class="page2 clear">
				<dt><img src="${pageContext.request.contextPath}/static/picture/plan-ico.png"></dt>
				<dd class="item-one">货品<b>100%</b>安全<span>顺丰合作•全程理赔</span></dd>
				<dd class="item-two">价格<b>100%</b>准确<span>最权威的定价体系</span></dd>
				<dd class="item-three">隐私<b>100%</b>清除<span>国际3R标准担保</span></dd>
			</dl>
		</div>
		<!--计划-->
		<div class="container">
			<div class="page2 clear">
				<div class="title">
					<h2 class="h_f_s">热门回收废品</h2></div>
				<div class="list-box-l fl">
					<div class="list-qiehuan clear">
						<c:forEach var="firstSort" items="${firstSort}">
							<span onclick="_nav('nav_t',${firstSort.firstSortId},3)"><a href="goods.jsp" title="${firstSort.firstSortName}价格评估" target="_blank"><samp class="item1 on">&nbsp;</samp>${firstSort.firstSortName}</a></span>
						</c:forEach>
						<a href="goods.jsp" style="position:absolute;top:0;right: 25px;font-size: 14px;">更多&gt;&gt;</a>
					</div>
					<dl class="machine_list clear" id="nav_t_list1">
						<c:forEach items="${goods1}" var="goods1">
						<dd>
							<div class="machine-box">
								<div class="machine-img">
									<a href="${pageContext.request.contextPath}/showGoodsDetail/${goods1.goodsId}" title="${goods1.goodsName}回收价格评估" target="_blank"><img src="${pageContext.request.contextPath}/static/picture/${goods1.goodsPicture}" alt="${goods1.goodsName}回收价格评估" width="147" height="110" class="machine-pic"></a>
								</div>
								<p class="name">${goods1.goodsName}</p>
								<p class="price">回收价<em>${goods1.goodsPrice}</em>元</p>
								<div class="machine-gd">
									<p class="pj">点我，点我</p>
									<p class="xj">下单，盘它</p>
								</div>
							</div>
						</dd>
						</c:forEach>
					</dl>

					<dl class="machine_list clear" id="nav_t_list2" style="display:none">
						<c:forEach items="${goods2}" var="goods2">
							<dd style="margin-right:0">
								<div class="machine-box">
									<div class="machine-img">
										<a href="${pageContext.request.contextPath}/showGoodsDetail/${goods2.goodsId}" title="${goods2.goodsName}回收价格评估" target="_blank"><img src="${pageContext.request.contextPath}/static/picture/${goods2.goodsPicture}" alt="${goods2.goodsName}回收价格评估" width="147" height="110" class="machine-pic"></a>
									</div>
									<p class="name">${goods2.goodsName}</p>
									<p class="price">回收价<em>${goods2.goodsPrice}</em>元</p>
									<div class="machine-gd">
										<p class="pj">点我，点我</p>
										<p class="xj">下单，盘它</p>
									</div>
								</div>
							</dd>
						</c:forEach>
					</dl>
					<dl class="machine_list clear" id="nav_t_list3" style="display:none">
						<c:forEach items="${goods3}" var="goods3">
							<dd>
								<div class="machine-box">
									<div class="machine-img">
										<a href="${pageContext.request.contextPath}/showGoodsDetail/${goods3.goodsId}" title="${goods3.goodsName}回收价格评估" target="_blank"><img src="${pageContext.request.contextPath}/static/picture/${goods3.goodsPicture}" alt="${goods3.goodsName}回收价格评估" width="147" height="110" class="machine-pic"></a>
									</div>
									<p class="name">${goods3.goodsName}</p>
									<p class="price">回收价<em>${goods3.goodsPrice}</em>元</p>
									<div class="machine-gd">
										<p class="pj">点我，点我</p>
										<p class="xj">下单，盘它</p>
									</div>
								</div>
							</dd>
						</c:forEach>
					</dl>
					<div class="check">
						<a href="goods.jsp" title="更多热门手机回收价格查询">查看更多废品</a>
					</div>
				</div>
				<!--正在交易、用户评论-->

				<div class="list-box-r fr">
					<div class="list-box-title2 clear"><samp>最新成交：</samp>
						<div  class="digits"></div>
						</div>
					<div class="newsticker-jcarousellite">
						<script defer="" src="${pageContext.request.contextPath}/static/js/jcarousellite_1.0.1c4.js"></script>
						<script type="text/javascript">
							$(function() {
								$(".newsticker-jcarousellite").jCarouselLite({
									vertical: true,
									hoverPause: true,
									visible: 2,
									auto: 1000,
									speed: 600
								});
							});
						</script>

						<ul class="list-box-dl">
							<c:forEach items="${orderHistory}" var="orderDetails">
								<li class="clear">
									<a href="20916.html" title="${orderDetails["goods"].goodsName}回收价格"><img src="${pageContext.request.contextPath}/static/picture/${orderDetails["goods"].goodsPicture}" alt="${orderDetails["goods"].goodsName} " width="77" height="60" class="list-img"></a>
									<dl>
										<dd>成功回购:
											<a href="20916.html" title="${orderDetails["goods"].goodsName}回收价格评估"><samp>${orderDetails["goods"].goodsName}</samp></a>
										</dd>
										<dd>回收价：${orderDetails["goods"].goodsPrice * orderDetails.realWeight}</dd>
									</dl>

								</li>
							</c:forEach>


						</ul>
					</div>
					
				</div>
				<!--正在交易、用户评论-->
				<div class="clear"></div>
			</div>
			<div class="liucheng">
				<div class="title">
					<h2 class="h_f_s">轻松4步 最快次日打款</h2></div>
				<img src="${pageContext.request.contextPath}/static/picture/process.png" alt="搜索回收废品，评估手机价格，满意后下单发货，坐等收钱。"></div>
			<div class="page2">
				<div class="title">
					<h2 class="h_f_s">深度合作，他们与我们同行</h2></div>
				<div class="cooperate">
					<a href="cooperation.jsp" title="回收网期待与更多的手机回收商合作" rel="nofollow"><img src="${pageContext.request.contextPath}/static/picture/cooperate.jpg" width="475" height="283" src="http://img.ihuigo.com/pic/a7bf8d9b765be20adac5f3549648244e.jpg"></a>
				</div>
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
					<tr>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/f331d2b8131fe13194c49911c1ebafe8.jpg" alt="" data-url="http://img.ihuigo.com/link/f331d2b8131fe13194c49911c1ebafe8.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/e1b5b774a0f6d55cf334d1016434a0da.jpg" alt="" data-url="http://img.ihuigo.com/link/e1b5b774a0f6d55cf334d1016434a0da.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/80324be5283632ff3db8c7b1f91a9e2f.png" alt="" data-url="http://img.ihuigo.com/link/80324be5283632ff3db8c7b1f91a9e2f.png" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/7b7513e645fd3dfa832569c9e4c4bd7b.jpg" alt="" data-url="http://img.ihuigo.com/link/7b7513e645fd3dfa832569c9e4c4bd7b.jpg" width="128" height="52"></a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/9d9206975affd2df4407ea44ec5e550e.jpg" alt="" data-url="http://img.ihuigo.com/link/9d9206975affd2df4407ea44ec5e550e.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/20563b418a899bf6cf568c53a94951e5.jpg" alt="" data-url="http://img.ihuigo.com/link/20563b418a899bf6cf568c53a94951e5.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/da0dd4a2ff906a9903f91707ca59e98a.jpg" alt="" data-url="http://img.ihuigo.com/link/da0dd4a2ff906a9903f91707ca59e98a.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/bef97fdedf7b176f79078ba348a0cd97.jpg" alt="" data-url="http://img.ihuigo.com/link/bef97fdedf7b176f79078ba348a0cd97.jpg" width="128" height="52"></a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/c239dd51066719ad7a39e50b069ee875.jpg" alt="" data-url="http://img.ihuigo.com/link/c239dd51066719ad7a39e50b069ee875.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/83f2bc9ebd4401b0787f31f57eebfa98.jpg" alt="" data-url="http://img.ihuigo.com/link/83f2bc9ebd4401b0787f31f57eebfa98.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/460946c961e9822b22d39087f55400fc.jpg" alt="" data-url="http://img.ihuigo.com/link/460946c961e9822b22d39087f55400fc.jpg" width="128" height="52"></a>
						</td>
						<td>
							<a href="javascript:void(0)" title=""><img class="scrollLoading" src="${pageContext.request.contextPath}/static/picture/31eca58eb8f105567bcac5ecf042dd99.jpg" alt="" data-url="http://img.ihuigo.com/link/31eca58eb8f105567bcac5ecf042dd99.jpg" width="128" height="52"></a>
						</td>
					</tr>
				</table>
				<div class="clear"></div>
				<div class="title">
					<h2 class="h_f_s">回收质检，更专业更安全</h2></div>

				<!--质检直播-->
				<div class="quality clear">
					<div class="quality-left">
						<div id="slideBox" class="slideBox">
							<div class="bd">
								<ul>
									<c:forEach items="${news}" var="news">
										<li>
											<div class="slide-li">
												<a href="index1.html" rel="nofollow" title="垃圾回收" target="_blank" class="no_hover"><img src="${pageContext.request.contextPath}/static/picture/${news.picture}" alt="环保你我他" width="360" height="266"><samp class="check_intro">${news.title}</samp></a>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<a class="prev" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<div class="quality-more">
							<a href="javascript:void(0)" rel="nofollow">查看更多 <span>&gt;</span></a>
						</div>
					</div>
					<div class="picScroll-left">
						<div class="hd">
							<ul>
							</ul>
						</div>
						<div class="bd">
							<ul class="picList">
								<li>
									<div class="pic">
										<a href="javascript:void(0)" class="no_hover"><img src="${pageContext.request.contextPath}/static/picture/man1.jpg" alt="回收员 陈丙池" width="206" height="266"></a><samp>回收员  陈丙池</samp></div>
								</li>
								<li>
									<div class="pic">
										<a href="javascript:void(0)" class="no_hover"><img src="${pageContext.request.contextPath}/static/picture/man2.jpg" alt="回收员  行柯宇" width="206" height="266"></a><samp>回收员  行柯宇</samp></div>
								</li>
								<li>
									<div class="pic">
										<a href="javascript:void(0)" class="no_hover"><img src="${pageContext.request.contextPath}/static/picture/man3.jpg" alt="回收员  叶驰" width="206" height="266"></a><samp>回收员  叶驰</samp></div>
								</li>
								<li>
									<div class="pic">
										<a href="javascript:void(0)" class="no_hover"><img src="${pageContext.request.contextPath}/static/picture/man4.jpg" alt="回收员  赵泽峰" width="206" height="266"></a><samp>回收员  赵泽峰</samp></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--保障-->
				<dl class="security">
					<dd class="security1">
						<div class="security_icon1"><img src="${pageContext.request.contextPath}/static/picture/baozhang1.png" width="41" height="41" alt="回收网专业的回收团队让您满意" title="回收网手机回收专业安全"></div>
						<div class="security_txt">
							<h2>资源回收，价格无忧</h2>
							<p>提供价格保护</p>
						</div>
						<div class="clear"></div>
					</dd>
					<dd class="security2">
						<div class="security_icon2"><img src="${pageContext.request.contextPath}/static/picture/baozhang2.png" width="41" height="41" alt="回收网回收数码产品当天回收次日返款" title="回收网手机回收极速返款"></div>
						<div class="security_txt">
							<h2>回收废品，极速返款</h2>
							<p>用户当天回收次日返款</p>
						</div>
						<div class="clear"></div>
					</dd>
					<dd class="security3">
						<div class="security_icon3"><img src="${pageContext.request.contextPath}/static/picture/baozhang3.png" width="41" height="41" alt="回收网为您提供专业的一对一回收客服" title="回收网手机回收提供专业一对一客服"></div>
						<div class="security_txt">
							<h2>专业回收，优质服务</h2>
							<p>回收人员一对一专业服务</p>
						</div>
						<div class="clear"></div>
					</dd>
					<dd class="security4">
						<div class="security_icon4"><img src="${pageContext.request.contextPath}/static/picture/baozhang4.png" width="41" height="41" alt="手机回收安全放心，帮您彻底清除隐私数据" title="回收网手机回收安全放心，帮您彻底清除隐私数据"></div>
						<div class="security_txt">
							<h2>安全回收，循环再生</h2>
							<p>放心回收，循环再生</p>
						</div>
						<div class="clear"></div>
					</dd>
					<dt class="clear"></dt>
				</dl>
				<!--保障-->
			</div>
		</div>
		<script defer="" src="${pageContext.request.contextPath}/static/js/slider.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider) {
						$('body').removeClass('loading');
					}
				});
			});

			//$(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:3,trigger:"click"});
			$(".picScroll-left").slide({
				mainCell: ".bd ul",
				autoPage: true,
				effect: "leftLoop",
				autoPlay: true,
				vis: 3,
				trigger: "click",
				interTime: 5000
			});
			$(".quality-left").slide({
				mainCell: ".bd ul",
				autoPage: true,
				effect: "left",
				autoPlay: true,
				vis: 1,
				trigger: "click"
			});

			$(".slideBox").slide({
				titCell: ".hd ul",
				mainCell: ".bd ul",
				autoPage: true,
				effect: "leftLoop",
				autoPlay: true,
				scroll: 1,
				vis: 2,
				trigger: "click"
			});
			$(".txtScroll-left").slide({
				titCell: ".hd ul",
				mainCell: ".bd ul",
				autoPage: true,
				effect: "leftLoop",
				autoPlay: true,
				scroll: 1,
				vis: 2,
				trigger: "click",
				interTime: 3000
			});
			$(function() {
				//测试，每秒更新随机数
				var i = Math.floor("10779163");
				setNumber($("#a"), i);
				$(".digitsNum").html(i);
			});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				$(".after").hover(function() {
					$(".after_main ul").show();
					$(".after_main").addClass("gcolor2");
				}, function() {
					$(".after_main ul").hide();
					$(".after_main").removeClass("gcolor2");
				});
				$(".mobilephone").hover(function() {
						$(".mobile_box").fadeIn();
						$(".mobilephone span").animate({
							height: '95px',
							marginTop: '10px',
							paddingTop: '0px'
						}, 100);
					},
					function() {
						$(".mobile_box").stop(true).fadeOut();
						$(".mobilephone span").stop(true).animate({
							height: '95px',
							marginTop: '20px',
							paddingTop: '0px'
						}, 200);
					});
			});

			function top_search_goods() {
				var val = $.trim($("#name_seach").val());
				if(val.length == 0 || val == '搜一下，看看你的二手闲置还值多少钱') {
					window.location.href = "goods.jsp"

					return false;
				}
				//$.post("${pageContext.request.contextPath}/searchGoods/1",{gname:val},function (data) {
					//if(data == 0){
                        //window.location.href = "search.jsp"
					//}
                //});
				$("#top_goods_search").submit();
			}

			function search_ajax() {
				var gourl = '${pageContext.request.contextPath}/search';
				var post_arr = new Array();
				var search_t = V('name_seach', 'v');
				//post_arr['search_txt'] = search_t;
				//ajax_post(gourl, post_arr, search_re);
                $.post(gourl,{"searchContent":search_t},function (data) {
                    search_re2(data);
                });
				return false;
			}
		</script>
		<script>
			//购物车
			$(".index_remove_cart").click(function() {
				var rowid = $(this).attr("rowid");
				var url = "ajax/remove_cart/" + rowid;
				var host = window.location.host;
				var btn_url = "http://" + host + "/index.php/" + url + ".html";
				remove_cart(btn_url, rowid);
			})

			function gocart() {
				var check_url = "/ajax/check_iflogin.html";
				var gourl = "/order/cart.html";
				$.post(check_url, {}, function(data) {
					var obj = eval(data);
					if(obj[0] == 0) {
						login_pop(gourl);
						return;
					}
					location.href = gourl;
				})
			}


			//搜索
			$("#List1").hover(function() {
				showAndHide('List1', 'show');
			}, function() {
				showAndHide('List1', 'hide');
			})

			$("#name_seach").mouseover(function() {
				if($(".record_l").find("dd").length) {
					showAndHide('List1', 'show');
				}
			})

			$("#name_seach").mouseout(function() {
				showAndHide('List1', 'hide');
			})

			$("#name_seach").blur(function() {
				$(".search_text").live("click", function() {
					var btn_txt = $(this).text();
					$("#name_seach").val(btn_txt);
				})
				showAndHide('List1', 'hide');
			})

			$(".search_text").live("click", function() {
				var btn_txt = $(this).text();
				$("#name_seach").val(btn_txt);
				showAndHide('List1', 'hide');
			})

			$(".search_text").live("mouseover", function() {
				$("#name_seach").blur();
				showAndHide('List1', 'show');
			})
		</script>
		<!--右侧悬浮start-->
		<!--右侧悬浮-->

		<script>
			function b() {

				h = $(window).height();

				t = $(document).scrollTop();

			}

			$(document).ready(function(e) {

				b();

				$('#gotop').click(function() {

					$(document).scrollTop(0);

				})

				$('#code').hover(function() {

					$(this).attr('id', 'code_hover');

					$('#code_img').show();

				}, function() {

					$(this).attr('id', 'code');

					$('#code_img').hide();

				})

			});

			$(window).scroll(function(e) {

				b();

			})

			$('.kefu_but .wx').mousemove(function() {

				$(this).find('.wx #code_img').show();

			});

			$('.kefu_but .wx').mouseleave(function() {

				$(this).find('.wx #code_img').hide();

			});
		</script>

		<div id="kefu_but">

			<ul>
				<li>
					<a class="hide_in" id="gotop" href="javascript:void(0)">&nbsp;</a>
				</li>

			</ul>

		</div>

		<!--右侧悬浮-->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/alert_zhe.css">

		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/alert_zhe.js"></script>

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

		<script>
			function zixunserver(url) {

				open_div_extends('', url, 'Loading_server', 524, 580);

			}
		</script>

		<!--右侧悬浮end-->
		<div class="footer">
			<div class="page2">
				<dl class="foot_list3">
					<dt>客服热线</dt>
					<dd>
						<p><img src="${pageContext.request.contextPath}/static/picture/tel_new.png" alt="回收网400客服电话"></p>
					</dd>
				</dl>
				<dl class="foot_list1">
					<dt>关于我们</dt>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="回收网手机在线回收平台介绍">关于回收网</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="回收网手机回收联系方式">联系我们</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="回收网招聘手机爱回收行业的小伙伴">人才招聘</a>
					</dd>
				</dl>
				<dl class="foot_list2">
					<dt>服务</dt>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="手机回收常见问题与解答">服务条款</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" target="_blank" title="谢谢您对手机回收相关问题的投诉与建议">投诉建议</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" title="网站地图导航">网站地图</a>
					</dd>
				</dl>
				<dl class="foot_list4">
					<dt>关注我们</dt>
					<dd>
						<div class="foot-sina">
							<a href="javascript:;" title="关注回收网官网新浪微博" rel="nofollow" target="_blank"> &nbsp; </a>
						</div>
						<div class="foot-weixin">
							<a href="" rel="nofollow" title="关注回收网手机回收公众号">&nbsp;</a><img src="${pageContext.request.contextPath}/static/picture/ewm.png" class="foot-ewm"></div>
						<div class="clear"></div>
					</dd>
				</dl>
				<div class="clear"></div>

				<div class="friend_link"><b>合作链接：</b>
					<a href="" target="_blank">智慧生活网</a>
				<div class="statist">
					<p><span>Copyright Reserved 2009-2018 @ YJD</span>
						<a href="javascript:;" target="_blank" rel="nofollow">粤xx</a> <span><a href="friendlink.html">友情链接</a></span>
						<script rel="nofollow" src="${pageContext.request.contextPath}/static/js/stat-4678782_4678782.js" language="JavaScript"></script>
						<script>
							var _hmt = _hmt || [];
							(function() {
								var hm = document.createElement("script");
								hm.src = "//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456";
								var s = document.getElementsByTagName("script")[0];
								s.parentNode.insertBefore(hm, s);
							})();
						</script><span></span></p>

					<div>
						<a href="javascript:;" rel="nofollow" title="银联商家"><img src="${pageContext.request.contextPath}/static/picture/unionpay.png"></a>
						<a href="javascript:;" rel="nofollow" title="支付宝商家"><img src="${pageContext.request.contextPath}/static/picture/alipay.png"></a>
				</div>
			</div>
		</div>
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
	</body>

</html>