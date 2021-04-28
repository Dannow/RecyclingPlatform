<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>选择城市-回购网</title>
		<link href="static/css/global4.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="static/js/jquery-1.4.2.js"></script>
		<script type="text/javascript" src="static/js/public.js"></script>
		<script type="text/javascript" src="static/js/city.js"></script>
		<script type="text/javascript" src="static/js/city_jilian.js"></script>
	</head>

	<body>
		<div class="address_choice" style="background:#fff url(static/image/map2.gif) no-repeat center bottom; width:584px; height:420px; padding:0 14px;">
			<div class="hot_address"><span>热门城市</span>
				<a href="javascript:void(0)" onclick="check_form('77')">深圳</a>
				<a href="javascript:void(0)" onclick="check_form('52')">北京</a>
				<a href="javascript:void(0)" onclick="check_form('321')">上海</a>
				<a href="javascript:void(0)" onclick="check_form('76')">广州</a>
				<a href="javascript:void(0)" onclick="check_form('322')">成都</a>
				<a href="javascript:void(0)" onclick="check_form('383')">杭州</a>
				<a href="javascript:void(0)" onclick="check_form('220')">南京</a>
				<a href="javascript:void(0)" onclick="check_form('221')">苏州</a>
				<a href="javascript:void(0)" onclick="check_form('311')">西安</a>
				<a href="javascript:void(0)" onclick="check_form('197')">长沙</a>
				<a href="javascript:void(0)" onclick="check_form('180')">武汉</a>
				<a href="javascript:void(0)" onclick="check_form('394')">重庆</a>
				<a href="javascript:void(0)" onclick="check_form('60')">厦门</a>
			</div>
			<div class="mod_select">
				<ul>
					<li class="contact_text">按省份选择</li>
					<li>
						<div class="select_box">
							<span class="select_txt" id="text_province">请选择省份</span><em class="selet_open"><b></b></em>
							<input type="hidden" id="province" name="province" value="0">
							<div class="option" id="option_province"></div>
						</div>
					</li>
					<li>
						<div class="select_box">
							<span class="select_txt" id="text_city">请选择城市</span><em class="selet_open"><b></b></em>
							<input type="hidden" id="city" name="city" value="0">
							<div class="option" id="option_city"></div>
						</div>
					</li>
					<li class="mod_input1"><input type="button" name="btn_button" id="btn_button" value="确定" class="input_btn1" onclick="return check_form()"></li>
					<div class="clear" style="height:15px;"></div>
				</ul>
			</div>

			<form name="myform" id="myform" action="/index/showselectcity_new.html" method="get">
				<input type="hidden" name="id" id="id" value="0">
			</form>
			<script>
				function check_form(val) {
					val = arguments[0] ? arguments[0] : 0;
					if(val != 0) {
						$("#id").val(val);
						$("#myform").submit();
					} else {
						if($("#city").val() == 0) {
							alert("请选择城市");
							$("#city").focus();
							return false;
						}
						$("#id").val($("#city").val());
						$("#myform").submit();
					}
				}
			</script>

		</div>
	</body>

</html>