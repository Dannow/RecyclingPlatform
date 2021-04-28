$(document).ready(function(){
	$(".myshop").hover(function(){
		$(".myshop-box").stop().toggle();
  	});
		
	//热收机型
	var myphone=$(".list-qiehuan span");
	var mylist=$(".machine_list");
	myphone.first().addClass("huan_on");
	myphone.each(function(i){
		myphone.hover(function(){
		 myphone.removeClass("huan_on");
		 $(this).addClass("huan_on");	
		 mylist.eq(i).show();
		 mylist.hide().eq(myphone.index(this)).show(); 
			});
		});
	
	$w = $('.machine-pic').width();
	$h = $('.machine-pic').height();
	$w2 = $w + 4;
	$h2 = $h + 4;
		
     mylist.each(function(){
	   $("dd",this).hover(function(){
		   $(".machine-box",this).stop().addClass("machine-shadow").animate({width:"208px",height:"232px",marginLeft:"-104px",marginTop:"-125px"},100); 
		   $(".machine-pic",this).stop().animate({height:$h2,width:$w2,left:"50%",top:"50%",marginLeft:"-75.5px",marginTop:"-57px"},100); 
		},function(){
		  $(".machine-box",this).stop().removeClass("machine-shadow").animate({width:"204px",height:"228px",marginLeft:"-102px",marginTop:"-123px"});
          $(".machine-pic",this).stop().animate({height:$h,width:$w,left:"50%",top:"50%",marginLeft:"-73.5px",marginTop:"-55px"}); 
		   // $(".machine-pic").stop().animate({height:$h,width:$w,left:"0px",top:"0px"},500);
			}); 
	 });		
	
	

    var obox = $(".header-search-box");
    var obrandlist = $(".brand-list");
	//alert($(".brand-list dd").length)
	obrandlist.each(function(){
  $("dd", this).slice(10).css('display','none');
})
	
	$(".brand-tab").hide();
    $(".brand-more").on('mouseenter', function(event) {
        event.preventDefault();
		obox.addClass("search-hover")
        obox.stop().animate({
            height: "340px"
        });
	     obrandlist.stop().animate({
            height: "196px"
        });
		$(".brand-list dd").show();
		$(".brand-tab").show();
        $(this).hide();
    });
    $(".header-search-box").on('mouseleave', function(event) {
        event.preventDefault();
		obox.removeClass("search-hover")
        obox.stop().animate({
            height: "204px",
        });
		obrandlist.stop().animate({
            height: "78px"
        });
		//$(".brand-list dd").slice(9).css('display','none');
			obrandlist.each(function(){
  $("dd", this).slice(10).css('display','none');
})
		$(".brand-tab").hide();
        $(".brand-more").show()
    });

  var omybrand=$(".brand-tab span");
  var obrandlist = $(".brand-list");
  omybrand.first().addClass("active");
	omybrand.each(function(i){
		omybrand.click(function(){
		 omybrand.removeClass("active");
		 $(this).addClass("active");	
		 obrandlist.eq(i).show();
		 obrandlist.hide().eq(omybrand.index(this)).show(); 
			});
		});
	
	$(".brand-list dd").each(function(i){
		$(this).hover(function(){
			$(".brand-hover").eq(i).stop().animate({top:"0"});
			$(".brand-img").eq(i).stop().animate({top:"-36px"});
			},function(){
			$(".brand-hover").eq(i).stop().animate({top:"-36px"});
			$(".brand-img").eq(i).stop().animate({top:"0"});
				})
		
		});
	
	
	$(".link-more").toggle(function(){
		$(".friend-more").show();
	},function(){
		$(".friend-more").hide();
		});
	$(".table tr").each(function(){
		var mytr =$("tr");
		mytr.find("td:last").addClass("border-right")
		mytr.last().find("td").addClass("border-bottom")
		});	
	
	/*=tab切换=*/
	  var myspan=$(".tab span");
	  var mydl=$(".news dl");
	  myspan.first().addClass("active")
	  myspan.each(function(i){
		myspan.eq(i).click(function(){
		myspan.removeClass("active");
		 $(this).addClass("active");
		 mydl.eq(i).show();
		 mydl.hide().eq(myspan.index(this)).show();
	});
	});
	
	
	$(".foot-weixin").hover(function(){
	$(".foot-ewm").stop().show();
		},function(){$(".foot-ewm").stop().hide();})
                	

	
	
	
		
     $(".vr-tab span").each(function(i){
	  $(".vr-tab span").first().addClass("active");
		 $(".vr-tab span").click(function(){
			 $(".vr-tab span").removeClass("active")
			  $(this).addClass("active");
			  $(".vr-list").eq(i).show();
		       $(".vr-list").hide().eq($(".vr-tab span").index(this)).show(); 
			 });
		 
		 });
    
	
		 // *地址选择* //
	/*$(".select_box").click(function(event){   
		event.stopPropagation();
		$(this).find(".option").toggle();
		$(this).parent().siblings().find(".option").hide();
	});
	$(document).click(function(event){
		var eo=$(event.target);
		if($(".select_box").is(":visible") && eo.attr("class")!="option" && !eo.parent(".option").length)
		$('.option').hide();									  
	});
		
	$(".option em").click(function(){
		var value=$(this).text();
		$(this).parent().siblings(".select_txt").text(value);
		$("#select_value").val(value)
	})
	 	
		*/
		
});