var test = {
	node:null,
	count:120,
	start:function(){
	  if(this.count > 0){
		 this.node.value = '重新获取('+(this.count--)+')';
		 var _this = this;
		 setTimeout(function(){
			 _this.start();
		 },1000);
	  }else{
		 this.node.removeAttribute("disabled");
		 this.node.value = "再次发送";
		 this.count = 120;
	  }
	},
	//初始化
	init:function(node){
	  this.node = node;
	  this.node.setAttribute("disabled",true);
	  this.start();
	}
};
function fanote(url,mobile){
  var gourl     = url;
  var post_arr	=  new Array();
  post_arr['mobile']= mobile;
  post_arr['type']     = 'm';
  ajax_post(gourl,post_arr,return_data);
}
function return_data(data){
  switch(data){
    case '1':
    alert('请输入您的手机号！');

    return false;
    break;
    case '2':
    break;
    case'3':
    alert('登录已经失效！');
     window.location.reload();
    return false;
    break;
    case'4':
    alert('请先验证您的手机号！');
//    window.location.reload();
    return false;
    break;
    case'5':
    alert('发送失败！'+data);
    window.location.reload();
    return false;
    break;
    case'6':
    var btn_fanote  =   window.document.getElementById('btn_fanote');
    test.init(btn_fanote);
    $('#zhi_code').focus();
    break;
    default:alert(data);
  }
}