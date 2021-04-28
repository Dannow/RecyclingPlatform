<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>二手手机回收合作，二手手机交易合作-回收网</title>
		<meta name="baidu-site-verification" content="IpuQLFxZiC">
		<meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
		<meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/service/hezuo.html">
		<meta name="applicable-device" content="pc">
		<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/service/hezuo.html">

		<link href="static/css/global.css" rel="stylesheet" type="text/css">
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

	</head>

	<body>
		<link rel="stylesheet" type="text/css" href="static/css/alert_zhe.css">
		<script type="text/javascript" src="static/js/alert_zhe.js"></script>
		<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt('Loading_child');">
			<div class="tyd_box">
				<div class="tyd_box_c">
					<div class="tyd_box_title">
						<span id="Loading_child_title"></span>
						<a href="javascript:ttt('Loading_child')"><img src="static/picture/close1.gif" border="0"></a>
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
							  <script rel="nofollow" src="static/js/show_city.js" type="text/javascript" language="javascript"></script>
							</span>
							<a rel="nofollow" href="javascript:void(0);" onclick="selectcity('/index/selectcity_new.jsp');">[切换城市]</a>
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
				<h1 class="logo"><a href="index.jsp"><img src="static/picture/logo.png" width="171" height="43" title="二手手机回收交易网"></a></h1>
				<div class="nav">
					<a title="闲置二手手机回收估价" href="goods.jsp" class="on">闲置回收</a>
					<a title="靓机优选手机抢购" href="news.jsp">绿色课堂</a>
				</div>
			</div>
		</div>
		<!--头部-->
		<!--搜索条-->
		<!--资讯中心-->
		<div class="search_list">
			<div class="page">
				<div class="current">
					<a href="index.jsp">手机回收首页</a><span>></span>
					<a href="">资讯中心</a>
				</div>
				<div class="news_l">
					<dl>
						<dt>资讯中心</dt>
						<dd>
							<a href="news.jsp"><b class="item1">&nbsp;</b><em>绿色课堂</em></a>
						</dd>
						
						<dt>帮助中心</dt>
						<dd class="item_on">
							<a href=""><b class="item8">&nbsp;</b><em>合作申请</em></a>
						</dd>
						<dd>
							<a href="legal.jsp"><b class="item2">&nbsp;</b><em>法律条款</em></a>
						</dd>
					</dl>
				</div>
				<div class="news_r" style="padding-top:10px">
					<div class="daili">
						<h2>申请合作</h2>
						<ul>
							<li><span>合作要求：</span><em>1、为合法的工商行政处登记的企业或个体私营业主，企业机构或个人有经营资格，业内享有良好口碑，无不良从业经历或有过违法经历。<br>
2、有从事过手机数码产品经销、回收等业务背景优先合作。<br>
3、拥有专业高质量的服务团队，对所从事的行业专注售后服务，能保障消费用户的合法权益。</em>
								<div class="clear"></div>
							</li>
						</ul>
						<form name="form1" id="form1" method="post">
							<input type="hidden" id="hidd_validate_code" name="hidd_validate_code" value="0dd5d527c108ba2bc2c90ad6006828c6">
							<div class="c3"><span>联系人：</span><input type="text" name="name" id="link_name1" value="" class="input_txt1"></div>
							<div class="c3"><span>手机：</span><input type="text" name="phone" id="mobile1" value="" class="input_txt1"></div>
							<div class="c3"><span>邮箱：</span><input type="text" name="email" id="email1" value="" class="input_txt1"></div>
							<div class="c3"><span>个人介绍：</span><textarea name="introduce" id="content1"></textarea><input type="hidden" name="type" value='3'></div>
							<div class="c3"><span>&nbsp;</span><input type="button" value="提交" class="input_btn1" onclick="return submitForm1(this,'${pageContext.request.contextPath}/applyForCooperation')"></div>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--资讯中心-->
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
							<div class="mui-mbar-wz"><em class="cart_total_items">0</em>
								<p><img src="static/picture/cart.png"></p>
								<span>回购车</span>
							</div>
						</div>
						<!--返回顶部-->
						<div class="mui-mbar-top mui-mbar-all">
							<div class="mui-mbar-go">
								<a rel="nofollow" href="javascript:goTop();" class="sidetop"><img src="static/picture/go_top.png"></a>
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
							</table>
						</div>
						<!--结算-->
						<div class="mui-jiesuan">
							<p>已选<em class="cart_total_items">0</em>台共计<em id="cart_total">￥0</em></p>
							<input type="button" value="去结算" class="mui-button" onclick="gocart('/ajax/check_iflogin.html','/order/cart.html')">
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

				function zixunserver(url) {
					open_div_extends('', url, 'Loading_server', 524, 580);
				}

				function gocart(check_url, gourl) {
					$.post(check_url, {}, function(data) {
						var obj = eval(data);
						if(obj[0] == 0) {
							login_pop(gourl);
							return;
						}
						location.href = gourl;
					})
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
<script>
	function submitForm1(obj,url) {
		if($.trim($("#link_name1").val()).length == 0) {
			alert('请输入联系人！');
			$("#link_name1").focus();
			return false;
		}
		var mobile = $.trim($("#mobile1").val());
		if(mobile.length == 0 || !check_mobile(mobile)) {
			alert('请输入联系人手机，或手机号码输入有误！');
			$("#mobile1").focus();
			return false;
		}
		var email = $.trim($("#email1").val());
		if(email.length == 0 || !check_email(email)) {
			alert('请输入联系人邮箱！，或邮箱输入有误！');
			$("#email1").focus();
			return false;
		}
		if($.trim($("#content1").val()).length == 0) {
			alert('请输入个人介绍！');
			$("#content").focus();
			return false;
		}
		$("#form1").attr('action', url);
		$(obj).attr('disabled', 'disabled');
		$("#form1").submit();
	}
</script>