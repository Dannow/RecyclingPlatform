<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="../static/css/eject.css" />
<script type="text/javascript" src="../static/js/jquery-1.4.2.js"></script>
</head>

<body style="font-size:12px;">
<form name="myFrom" id="myFrom" method="post" >
  <input type="hidden" name="id" value="0" />
  <input type="hidden" name="validate_code" value="5e45b5eb1a3f5d4e4461db63b46aa5aa" />
  
  <!--修改银行卡-->
  <div class="xgyhk" style="padding:0 0 0 35px;">
  		<div class="c1_height"></div>
    <div class="c1"><span>原电话：</span>
      <input name="originalPhone" id="originalPhone" type="text" value="${user.userPhone}" class="input_txt1">
    </div>
	<div class="c1_height"></div>
    <div class="c1"><span>新电话：</span>
      <input name="newPhone" id="newPhone" type="text" value="" class="input_txt1"><br />
    </div>
    <div class="c1_height"></div>
    <div class="c1"><span>&nbsp;</span>
      <input type="button" name="sub_button" id="sub_button" value="保存" onclick="return check_from('/changeUserPhone')" class="input_btn1" />
	  <input type="button" name="close_button" id="close_button" value="关闭" onclick="window.parent.ttt('Loading_child');" class="input_btn1"/>
    </div>
  </div>
  <!--修改银行卡-->
  
</form>
</body>
</html>
<script>
	function check_from(url){
		if($.trim($("#originalPhone").val())	==	''){
			alert("请输入原电话");
			$("#originalPhone").focus();
			return false;
		}
		
		if($.trim($("#newPhone").val())	==	''){
			alert("请输入新电话");
			$("#newPhone").focus();
			return false;
		}
        var newPhone=$("#newPhone").val();
        $.post(url,{"newPhone":newPhone},function (data) {
            if(data == "1"){
                window.parent.ttt('Loading_child');
            }
            else {
                alert("失败");
            }
	}
</script>