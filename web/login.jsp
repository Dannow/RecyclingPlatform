<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>登录-回购网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
		<script type="text/javascript" src="static/js/new_public.js"></script>
		<link href="static/css/global1.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="static/js/jquery-1.4.2.js"></script>
	</head>

	<body style=" background:#fff">

		<form method="post" id="login_form" name="login_form" >
			<input type="hidden" id="t" name="t" value="login">
			<input type="hidden" id="status" name="status" value="">
			<input type="hidden" id="istrue" name="istrue" value="0">
			<input type="hidden" id="hidd_validate_code" name="hidd_validate_code" value="e1bb771672c61675e430fb7c84cfc028">
			<!--注册-->
			<div class="regist_top page">
				<a href="index.jsp"><img src="static/picture/logo.png" style="vertical-align:middle"></a><span>欢迎登录</span></div>
			<div class="regist">
				<div class="regist_l"><img src="static/picture/bg4.png"></div>
				<div class="regist_r">
					<div class="c2"><span>手机号码</span>
						<div class="c1_bg">

							<input type="text" name="userPhone" id="mobile" class="input_txt3" value="" class="input_txt1">
							<div class="clear"></div>
						</div>

					</div>
					<div class="c1_txt"><span style="color: red;" class="reg_tips" id="tipmobile"></span></div>
					<div class="c1">
						<span>用户密码</span>
						<div class="c1_bg">
							<input type="text" id="reg_code" name="password" placeholder="请输入密码" class="input_txt5">
						</div>
						<div class="clear"></div>
					</div>
					<div class="c1_txt"><span style="color: red;" class="reg_tips" id="tipnote_validate"></span></div>

					<div class="c2" style="height:42px; line-height:42px; margin-bottom:0"><span>&nbsp;</span>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
					<div class="c2"><span>&nbsp;</span>
						<input type="button" value="登录" id="sub_button" class="input_btn3" onclick="submit_login_form('sub_button','${pageContext.request.contextPath}/login')">
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>

			<!--注册-->
		</form>
		<link rel="stylesheet" type="text/css" href="static/css/alert_zhe.css">

		<script type="text/javascript" src="static/js/alert_zhe.js"></script>
		<!-- 弹出框start -->
		<div id="Loading_child" class="Loading" style="display:none; height:450px;" ondblclick="ttt('Loading_child');">
			<div class="tyd_box">
				<div class="tyd_box_c">
					<div class="tyd_box_title">
						<span id="Loading_child_title"></span>
						<a href="javascript:ttt('Loading_child')"><img src="static/picture/close1.gif" border="0"></a>
					</div>
					<div class="tyd_box_content" style="width:612px;overflow:auto; height:360px;">
						<iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="360" border="0" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div id="mbDIV" style="display:none;"></div>
		<!--  弹出框end -->
	</body>

</html>

<script>
	var send_limit = {
		node: null,
		count: 120,
		start: function() {
			if(this.count > 0) {
				this.node.value = '重新获取(' + (this.count--) + ')';
				var _this = this;
				setTimeout(function() {
					_this.start();
				}, 1000);
			} else {
				this.node.removeAttribute("disabled");
				this.node.value = "再次发送";
				this.count = 150;
			}
		},
		//初始化
		init: function(node) {
			this.node = node;
			this.node.setAttribute("disabled", true);
			this.start();
		}
	};

    function submit_login_form(btn_id, url) {
        if($.trim($("#mobile").val()) == '' || $.trim($("#mobile").val()) == '手机号') {
            $("#tipmobile").html("请输入您的手机号码！");
            $("#mobile").focus();
            return false;
        }
        $("#login_form").attr('action', url);
        $("#sub_button").attr('disabled', 'disabled');
        $("#login_form").submit();
    }
	function send_tel_code() {
		var btn_fanote = document.getElementById("btn_fanote");
		var mobile_oj = $('#mobile');
		var reg_code_oj = $('#reg_code');
		var mobile_oj_val = $.trim(mobile_oj.val());
		if(!check_mobile(mobile_oj_val)) {
			$("#tipmobile").html("请输入您的手机号码！");
			mobile_oj.val('');
			mobile_oj.focus();
			var check_js_oj = $('#check_js');
			check_js_oj.val('unpass');
			return false;
		}
		var checkUrl = "/ajax/check_validate_code.html";
		$.post(checkUrl, {
			'validate_code': $("#validate_code").val()
		}, function(data) {
			if(data == '0') {
				alert('图形验证码输入有误！');
				return false;
			} else {
				var go_url = reg_code_oj.attr('val');
				var post_arr = new Array;
				post_arr['safe_code'] = $('#hidd_validate_code').val();
				post_arr['tel'] = mobile_oj_val;
				post_arr['form_key'] = 'login';
				post_arr['validate_code'] = $("#validate_code").val();
				ajax_post(go_url, post_arr, send_reg_code, btn_fanote);
			}
		});

	}

	function send_reg_code(data) {
		var mobile_oj = $('#mobile');
		if(data == 'exist1') {
			alert('该用户不存在');
			mobile_oj.val('');
			return false;
		}
		if(data == 'telfalse') {
			alert('手机号码格式有误！');
			return false;
		}
		if(data == 'login' || data == 'reg') {
			send_limit.init(btn_fanote);
			$("#status").val(data);
			return false;
		}
		if(data == 'limit_time') {
			alert('请稍后再发送验证码！');
			return false;
		}
		if(data == 'limit_post') {
			alert('发生验证码失败！');
			return false;
		}
		if(data == 'send_close') {
			alert('发生验证码失败！');
			return false;
		}
	}


	function validate_img_click() {
		$("#validate_img").attr('src', '/images/ico/loading.gif');
		var checkUrl = "/ajax/get_validate_code_img.html";
		$.post(checkUrl, function(data) {
			$("#validate_img").attr('src', data);
		});
	}
	$("#validate_img").bind('click', validate_img_click);
	$(function() {
		validate_img_click();
	})
</script>