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
  
  <!--修改密码-->
  <div class="xgyhk" style="padding:0 0 0 35px;">
  		<div class="c1_height"></div>
    <div class="c1"><span>原密码：</span>
      <input name="originalPassword" id="originalPassword" type="text" value="" class="input_txt1">
    </div>
	<div class="c1_height"></div>
    <div class="c1"><span>新密码：</span>
      <input name="newpassword" id="newpassword" type="text" value="" class="input_txt1"><br />
    </div>
    <div class="c1_height"></div>
    <div class="c1"><span>确认密码：</span>
      <input name="surepassword" id="surepassword" type="text" value="" class="input_txt1"><br />
    </div>
    <div class="c1_height"></div>
    <div class="c1"><span>&nbsp;</span>
      <input type="button" name="sub_button" id="sub_button" value="保存" onclick="return check_from('/changePassword')" class="input_btn1" />
	  <input type="button" name="close_button" id="close_button" value="关闭" onclick="window.parent.ttt('Loading_child');" class="input_btn1"/>
    </div>
  </div>
  <!--修改银行卡-->
  
</form>
</body>
</html>
<script>
	function check_from(url){
		if($.trim($("#originalPassword").val())	==	''){
			alert("请输入原密码");
			$("#originalPassword").focus();
			return false;
		}
		
		if($.trim($("#newpassword").val())	==	'' || $.trim($("#surepassword").val())	==	'' ){
			alert("请输入新密码");
			$("#newpassword").focus();
			return false;
		}

		if($.trim($("#newpassword").val()) != $.trim($("#surepassword").val()) ){
            alert("两次密码不一致");
            $("#surepassword").focus();
            return false;
        }
        var originalPassword=$("#originalPassword").val();
        var newpassword=$("#newpassword").val();
        $.post(url,{"originalPassword":originalPassword,"newpassword":newpassword},function (data) {
            if(data == "1"){
                window.parent.ttt('Loading_child');
            }
            else {
                alert("失败")
            }
        })
	}
</script>