<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>无标题文档</title>
		<link rel="stylesheet" type="text/css" href="../static/css/eject.css">
		<script type="text/javascript" src="../static/js/jquery-1.4.2.js"></script>
		<script type="text/javascript" src="../static/js/public.js"></script>

		<script type="text/javascript" src="../static/js/city.js"></script>
		<script type="text/javascript" src="../static/js/city_jilian.js"></script>
	</head>

	<body style="font-size:12px;">
		<form name="myFrom" id="myFrom" method="post">
			<input type="hidden" name="id" value="163120">
			<input type="hidden" name="validate_code" value="7198004e34af11b0653173c5fbb3016f">
			<!--新增地址-->
			<div class="xgyhk">
				<div class="c1_height"></div>
				<div class="c1"><span>联系人：</span>
					<input name="link_name" id="link_name" type="text" class="input_txt1"  value="">
				</div>
				<div class="c1_height"></div>
				<div class="c1"><span>手机号码：</span>
					<input name="mobile" id="mobile" type="text" class="input_txt1" disabled="disabled" value="${user.userPhone}">
				</div>
				<div class="c1_height"></div>
				<div class="mod_select" style="margin-bottom:12px;">
					<ul>
						<li class="contact_text" style="width:88px;">我的地址：</li>
						<li>

							<div class="select_box">
								<span class="select_txt" id="text_province">请选择省份</span><em class="selet_open"><b></b></em>
								<input type="hidden" id="province" name="province" value="4">
								<div class="option" id="option_province"><em onclick="option_province_click(this)" value="2">北京</em><em onclick="option_province_click(this)" value="3">安徽</em><em onclick="option_province_click(this)" value="4">福建</em><em onclick="option_province_click(this)" value="5">甘肃</em><em onclick="option_province_click(this)" value="6">广东</em><em onclick="option_province_click(this)" value="7">广西</em><em onclick="option_province_click(this)" value="8">贵州</em><em onclick="option_province_click(this)" value="9">海南</em><em onclick="option_province_click(this)" value="10">河北</em><em onclick="option_province_click(this)" value="11">河南</em><em onclick="option_province_click(this)" value="12">黑龙江</em><em onclick="option_province_click(this)" value="13">湖北</em><em onclick="option_province_click(this)" value="14">湖南</em><em onclick="option_province_click(this)" value="15">吉林</em><em onclick="option_province_click(this)" value="16">江苏</em><em onclick="option_province_click(this)" value="17">江西</em><em onclick="option_province_click(this)" value="18">辽宁</em><em onclick="option_province_click(this)" value="19">内蒙古</em><em onclick="option_province_click(this)" value="20">宁夏</em><em onclick="option_province_click(this)" value="21">青海</em><em onclick="option_province_click(this)" value="22">山东</em><em onclick="option_province_click(this)" value="23">山西</em><em onclick="option_province_click(this)" value="24">陕西</em><em onclick="option_province_click(this)" value="25">上海</em><em onclick="option_province_click(this)" value="26">四川</em><em onclick="option_province_click(this)" value="27">天津</em><em onclick="option_province_click(this)" value="28">西藏</em><em onclick="option_province_click(this)" value="29">新疆</em><em onclick="option_province_click(this)" value="30">云南</em><em onclick="option_province_click(this)" value="31">浙江</em><em onclick="option_province_click(this)" value="32">重庆</em><em onclick="option_province_click(this)" value="33">香港</em><em onclick="option_province_click(this)" value="34">澳门</em><em onclick="option_province_click(this)" value="35">台湾</em></div>
							</div>
						</li>
						<li>
							<div class="select_box">
								<span class="select_txt" id="text_city">请选择城市</span><em class="selet_open"><b></b></em>
								<input type="hidden" id="city" name="city" value="54">
								<div class="option" id="option_city"><em onclick="option_city_click(this)" value="53">福州</em><em onclick="option_city_click(this)" value="54">龙岩</em><em onclick="option_city_click(this)" value="55">南平</em><em onclick="option_city_click(this)" value="56">宁德</em><em onclick="option_city_click(this)" value="57">莆田</em><em onclick="option_city_click(this)" value="58">泉州</em><em onclick="option_city_click(this)" value="59">三明</em><em onclick="option_city_click(this)" value="60">厦门</em><em onclick="option_city_click(this)" value="61">漳州</em></div>
							</div>
						</li>
						<li>
							<div class="select_box" style="position:relative">
								<span class="select_txt" id="text_district">请选择区县</span><em class="selet_open"><b></b></em>
								<input type="hidden" id="district" name="district" value="533">
								<input type="hidden" id="school_id" name="school_id" value="0">
								<div class="option" style="position:absolute; left:-118px;" id="option_district"><em onclick="option_district_click(this)" district="531" school="0">新罗区</em><em onclick="option_district_click(this)" district="532" school="0">漳平市</em><em onclick="option_district_click(this)" district="533" school="0">长汀县</em><em onclick="option_district_click(this)" district="534" school="0">永定县</em><em onclick="option_district_click(this)" district="535" school="0">上杭县</em><em onclick="option_district_click(this)" district="536" school="0">武平县</em><em onclick="option_district_click(this)" district="537" school="0">连城县</em></div>
							</div>
						</li>

						<span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="c1_height"></div>
				<div class="c1"><span>详细地址：</span>
					<input name="address" id="address" type="text" class="input_txt1" value="">
				</div>
				<div class="c1_height"></div>
				<div class="c1"><span>&nbsp;</span>
					<input type="button" name="sub_button" id="sub_button" value="提交修改" onclick="return check_from('/updateUserAddress')" class="input_btn1">
					<input type="button" name="close_button" id="close_button" value="关闭" onclick="window.parent.ttt('Loading_child');" class="input_btn1">

				</div>
			</div>
			<!--新增地址-->
		</form>

		<script>
			//解决$.post的中文乱码
            $.ajaxSetup({
                contentType: "application/x-www-form-urlencoded; charset=utf-8"
            });

			function check_from(url) {
				if($.trim($("#link_name").val()) == '') {
					alert("请输入联系人");
					$("#link_name").focus();
					return false;
				}

				if(!check_mobile($("#mobile").val())) {
					alert("手机号码有误！");
					$("#mobile").focus();
					return false;
				}

				if($.trim($("#province").val()) == 0) {
					alert("请选择省份");
					$("#province").focus();
					return false;
				}

				if($.trim($("#city").val()) == 0) {
					alert("请选择城市");
					$("#city").focus();
					return false;
				}

				if($.trim($("#district").val()) == 0 && $.trim($("#school_id").val()) == 0) {
					alert("请选择区县");
					$("#district").focus();
					return false;
				}

				if($.trim($("#address").val()) == '') {
					alert("请输入详细地址");
					$("#address").focus();
					return false;
				}
				var province=document.getElementById('text_province').innerText;
				var city=document.getElementById('text_city').innerText;
				var district=document.getElementById('text_district').innerText;
				var address2=$.trim($("#address").val());
				var address=province+city+district+address2;
                $.post(url,{"address":address,"userName":$("#link_name").val()},function (data) {
                    if(data == "1"){
                        window.parent.ttt2('Loading_child');
                    }
                    else {
                        alert("失败")
						}
					});

			}
		</script>
	</body>

</html>