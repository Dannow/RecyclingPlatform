     //搜索
     $("#List1").hover(function(){
           showAndHide('List1','show');
      },function(){
          showAndHide('List1','hide');
      })
      
      $("#name_seach").mouseover(function(){
         if($(".record_l").find("dd").length){
             showAndHide('List1','show');
         }
      })
      
       $("#name_seach").mouseout(function(){
             showAndHide('List1','hide');
      })     
 
      
       $("#name_seach").blur(function(){   
            $(".search_text").live("click",function(){ 
                 var btn_txt =   $(this).text();
                 $("#name_seach").val(btn_txt);
           })          
            showAndHide('List1','hide');
      }) 
    
      $(".search_text").live("click",function(){ 
            var btn_txt =   $(this).text();
            $("#name_seach").val(btn_txt);      
            showAndHide('List1','hide');
      })

    $(".search_text").live("mouseover",function(){ 
        $("#name_seach").blur(); 
        showAndHide('List1','show');
     })
     


    function zixunserver(url){
            open_div_extends('',url,'Loading_server',524,580);
    }     
      
      function showAndHide(obj,types){
         var Layer=window.document.getElementById(obj);
         if(!Layer) return false;
         switch(types){
               case "show":
               Layer.style.display="block";
               break;
               case "hide":
               Layer.style.display="none";
               break;
          }
       }      

    function search_re(data){
             var data_arr    =   data.split('_');
             var html        = '';
             html +=    '<div class="record Menu" id="List1">';
             html +=    '<dl class="record_l">';
             if(data_arr['0']){
                 if(data_arr['0']=="false"){
                     showAndHide('List1','hide');
                 }else{
                        var  re_txt   =  decodeURI(data_arr['0']);
                       re_txt   =  eval(re_txt);
                       for(var i=0;i<re_txt.length;i++){
                          html +=    '<dd><a class="search_text" style="display: block;" target="_blank" gname="'+re_txt[i]['name']+'"  h="'+data_arr['2']+'" >'+re_txt[i]['name']+'</a></dd>';
                       }     
                        showAndHide('List1','show');
                 }
             }
             html +=    '</dl>';
             html +=    '<div class="clear"></div>';
             html +=    '</div>';
             V('record_box','o').html(html);

         }

     function search_re2(data){
         var data_arr    =   data;
         var html        = '';
         html +=    '<div class="record Menu" id="List1">';
         html +=    '<dl class="record_l">';
             if(data_arr[0]=="false"){
                 showAndHide('List1','hide');
             }else{
                 var  re_txt   =  data_arr;
                 for(var i=0;i<data_arr.length;i++){
                     html +=    '<dd><a class="search_text" style="display: block;" target="_blank" gname="'+re_txt[i]+'"  h="'+data_arr['2']+'" >'+re_txt[i]+'</a></dd>';
                 }
                 showAndHide('List1','show');
             }
         html +=    '</dl>';
         html +=    '<div class="clear"></div>';
         html +=    '</div>';
         V('record_box','o').html(html);

     }

     function setNumber(dom, number){
                var n = String(number), len = n.length;
            var sHtml = "";

            for (var i = 0; i < len; ++i) {
                //位数不足要补 
                sHtml += "<i>";
                var curNum = parseInt(n.charAt(i), 10);
                for (var j = 0; j <= curNum; j++) {
                    sHtml += "<em>" + j + "</em>";
                }
                sHtml += "</i>";
            };
            dom.html(sHtml);

            for (var i = 0; i < len; ++i) {
                var obj = dom.find("i").eq(i);
                var y = -24 * parseInt(n.charAt(i), 10);
                obj.animate({ top: y + "px"}, 1000);
            };
        };

            