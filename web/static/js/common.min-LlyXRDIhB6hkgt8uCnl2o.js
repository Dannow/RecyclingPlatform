"use strict";function MVC(e,t,n){var o=new e,i=new t,a=new n;a.model=o,a.view=i,i.controller=a,"function"==typeof i.Init&&i.Init(),"function"==typeof i.init&&i.init()}function tipsPopup(e){var t=$("<div>");t.popup({popupWrapSelector:"#js-tips-popup-wrap",callback:{show:function(t,n){e&&n.find("h2").text(e)},hide:function(){t.unbindPopup({popupWrapSelector:"#js-tips-popup-wrap"}),t=null}}}).trigger("click")}function tipsPopup2(e){var t=$("<div>");t.popup({popupWrapSelector:"#js-tips-popup-wrap2",callback:{show:function(t,n){e&&n.find(".popup").text(e)},hide:function(){t.unbindPopup({popupWrapSelector:"#js-tips-popup-wrap2"}),t=null}}}).trigger("click")}function tipsPopupAuto(e,t){var n,o=$("<div>");if(t){var i=$("#js-tips-popup-wrap-auto");i.addClass(t)}o.popup({popupWrapSelector:"#js-tips-popup-wrap-auto",callback:{show:function(o,i){e&&i.find("h2").html(e),t&&(n=setTimeout(function(){i.triggerHandler("click")},2e3))},hide:function(){t&&(clearTimeout(n),i.removeClass(t)),o.unbindPopup({popupWrapSelector:"#js-tips-popup-wrap-auto"})}}}).trigger("click")}function setBodyHeight(e,t,n){var o=$(window),i=$("body"),t=($("#header"),t||$("#body")),n=n||$("#footer"),a="."+(+new Date+Math.random()),s=$("#header").outerHeight(!0)||0;o.off(o.data("_bodyHeightResize_namespace")||a).on("resize"+a,function(){t.removeAttr("style"),e?t.css("height",o.height()-n.outerHeight(!0)-s):o.height()>i.height()&&t.css("min-height",o.height()-n.outerHeight(!0)-s)}).trigger("resize"),o.data("_bodyHeightResize_namespace",a)}function addURLRandom(e){return e+=e.indexOf("?")!==-1?"&_v"+Math.random().toFixed(3)+"="+Math.random().toFixed(3):"?_v"+Math.random().toFixed(3)+"="+Math.random().toFixed(3)}function trackAhsAnalytics(e,t,n,o){if(window.Piwik)try{var i=Piwik.getTracker();o?i.trackEvent(e,t,n,o):i.trackEvent(e,t,n)}catch(a){}}function throttle(e,t){var n,o=!0;return function(){var i=arguments,a=this;return o?(e.apply(a,i),o=!1):!n&&void(n=setTimeout(function(){clearTimeout(n),n=null,e.apply(a,i)},t||500))}}function isWeixin(){var e=navigator.userAgent.toLowerCase();return"micromessenger"==e.match(/MicroMessenger/i)}function getEncriptedValue(e){var t="L00easy.ahwallet",n=CryptoJS.enc.Utf8.parse(t),o=CryptoJS.AES.encrypt(e,n,{mode:CryptoJS.mode.ECB,padding:CryptoJS.pad.Pkcs7});return o.toString()}function getQueryString(e){var t=new RegExp("(^|&)"+e+"=([^&]*)(&|$)"),n=window.location.search.substr(1).match(t);return null!=n?decodeURIComponent(n[2]):""}function getCookie(e){for(var t=document.cookie.split(";"),n=0;n<t.length;n++){var o=t[n].split("=");if(o[0].replace(/^ | $/g,"")==e)return unescape(o[1])}}window.seajs&&seajs.config({map:[[/^(.*\.(?:css|js))(.*)$/i,"$1?v="+(new Date).getTime()]]}),String.prototype.format=function(){var e=arguments;return this.replace(/\{(\d+)\}/g,function(){var t=e[arguments[1]];return void 0==t||null==t?arguments[0]:t})},String.prototype.ConvertJSONDateToJSDateObject=function(){return new Date(parseInt(this.replace("/Date(","").replace(")/",""),10))};var formSubmit=function(e,t,n){var o=$("<form />");o.attr("action",e),n=n||"post",o.attr("method",n);for(var i in t){var a=$("<input />");a.attr("type","hidden"),a.attr("name",i),a.attr("value",t[i]),o.append(a)}o.css("display","none"),o.appendTo("body"),o.submit()},PopWindow={Destroy:function(){$("#popwindow_background").remove(),$("#popwindow_container").remove()},Render:function(e,t){$("body").append('<div id="popwindow_background"></div><div id="popwindow_container"><div id="popwindow"><img class="icon" src="/images/common/loading.gif"/><div class="detail">'+t+"</div></div></div>"),$("#popwindow").css("margin-top",($(window).height()-$("#popwindow").height())/2).show()},Black:function(){$("body").append('<div id="popwindow_background"></div>')}},verifyUtils={mobile:function(e){return void 0!==e&&(e=$.trim(e),11===e.length&&/^1[3456789][0-9]{9}$/.test(e))},cardNo:function(e){return void 0!==e&&/^\d{16,19}$/.test($.trim(e))},username:function(e){if(void 0===e)return!1;var t=$.trim(e).length;return!(0===t||t>50)}};!function(e){e.fn.popup=function(t){function n(){f=p.scrollTop(),s.addClass(i.showClass),h.css({position:"fixed",top:-f}),p.scrollTop(f)}function o(){s.removeClass(i.showClass),h.css({position:m,top:v}),p.scrollTop(f)}var i=e.extend(!0,{},e.fn.popup.defaults,t),a=i.callback,s=e(i.popupWrapSelector),r=0,c=s.find(i.popupSelector),l=0,d=s.find(i.closeSelector),u="."+(+new Date+Math.random()),p=e(window),f=0,h=e("body"),m=h.css("position"),v=h.css("top"),C=e.noop;e(i.subPopupWrapSelector);return this.data("_popupNamespace",u),i.isFullScreen||(C=function(){s.hasClass(i.showClass)?(r=s.height(),l=c.outerHeight()):(s.addClass(i.showClass),r=s.height(),l=c.outerHeight(),s.removeClass(i.showClass)),l>r?c.css("margin-top",-r/2):c.css("margin-top",-l/2)}),C(),this.on("click"+u,function(){a.isAfterShow?a.show(n,s,C):(C(),n(),a.show(n,s,C))}),s.add(d).on("click"+u,function(t){i.isClosePreventDefault&&t.preventDefault(),a.isAfterHide?a.hide(o,s,e(this)):(o(),a.hide(o,s,e(this)))}),c.on("click"+u,function(e){e.stopPropagation()}),p.on("resize"+u,function(){setTimeout(C,300)}),this},e.fn.popup.defaults={isClosePreventDefault:!1,isFullScreen:!1,popupWrapSelector:"#js-popup-wrap",popupSelector:"div.popup",closeSelector:".close",subPopupWrapSelector:"#js-sub-popup-wrap",showClass:"show",callback:{isAfterShow:!1,isAfterHide:!1,show:e.noop,hide:e.noop}},e.fn.unbindPopup=function(t){var n=e.extend(!0,{},e.fn.popup.defaults,t),o=e(n.popupWrapSelector),i=o.find(n.popupSelector),a=o.find(n.closeSelector),s=this.data("_popupNamespace");return s&&(this.off("click"+s),o.add(a).off("click"+s),i.off("click"+s),e(window).off("resize"+s)),this},e.fn.scrollUpDown=function(t){function n(e,t){s.css({"transition-duration":t+"ms",transform:"translateY("+e+"px)"})}function o(t){a.load!==e.noop&&(l=i.height()-s.height(),d&&(c=s.find(a.itemSelector).outerHeight()),d=!1),l>=0||i.on("touchstart"+r,function(e){u=e.originalEvent.touches[0].pageY}).on("touchmove"+r,function(e){e.preventDefault(),p=e.originalEvent.touches[0].pageY-u,n(f+p,0)}).on("touchend"+r,function(s){f+=p,p=0,a.load!==e.noop&&f<l&&(t?o(!0):(i.off(r),r="."+(+new Date+Math.random()),i.data("_scrollUpDownNamespace",r),a.load(o))),f=f>0?0:f<l?l:Math.round(f/c)*c,n(f,a.scrollTime)})}var i=this,a=e.extend({},e.fn.scrollUpDown.defaults,t),s=this.find(a.bigContainerSelector),r="."+(+new Date+Math.random()),c=s.find(a.itemSelector).outerHeight(),l=i.height()-s.height(),d=!0,u=0,p=0,f=a.initY;return this.data("_scrollUpDownNamespace",r),a.load!==e.noop&&a.isPerformLoad&&a.load(o,!0),l<0&&o(),this},e.fn.scrollUpDown.defaults={scrollTime:600,bigContainerSelector:"ul",itemSelector:"li",isPerformLoad:!0,load:e.noop,initY:0},e.fn.unbindScrollUpDown=function(){var e=this.data("_scrollUpDownNamespace");return e&&this.off(e),this},e.fn.tab=function(t){var n=e.extend({},e.fn.tab.defaults,t),o=n.isContent&&e(n.contentItemSelector),i=-1,a=e.noop;if(n.isIndex){for(var s=this.find(n.menuItemSelector),r=0,c=s.length;r<c;r++)if(s.eq(r).hasClass(n.menuCurrent)){i=r;break}i===-1&&(s.eq(0).addClass(n.menuCurrent),n.isContent&&o.eq(0).addClass(n.contentCurrent),i=0),a=function(e){var t=e.index();s.eq(i).removeClass(n.menuCurrent),e.addClass(n.menuCurrent),n.isContent?(o.eq(i).removeClass(n.contentCurrent).end().eq(t).addClass(n.contentCurrent),n.callback(e,o.eq(t))):n.callback(e),i=t}}else a=function(t){var i=t.data(n.data);if(t.addClass(n.menuCurrent).siblings().removeClass(n.menuCurrent),n.isContent){var a;o.each(function(t,o){var s=e(o);s.data(n.data)===i?(s.addClass(n.contentCurrent),a=s):s.removeClass(n.contentCurrent)}),n.callback(t,a)}else n.callback(t)};return this.on("click",n.menuItemSelector,function(){var t=e(this);t.hasClass(n.menuCurrent)||t.hasClass(n.menuDisabled)||a(t)}),this},e.fn.tab.defaults={isIndex:!1,isContent:!0,menuItemSelector:"li",contentItemSelector:"div.content > ul",data:"id",menuCurrent:"current",menuDisabled:"#"+new Date,contentCurrent:"current",callback:e.noop},e.fn.dragTab=function(t){function n(){p.css({"transition-duration":"0ms",transform:"translateX(0px)"}),r=l.width(),c=f.outerWidth(!0),h=Math.round(Math.round(r/c)/2),p.empty().append(f),r<=c*m?(f.clone().appendTo(p),S=function(e){C<h-1?(C+=m,v+=m,b=c*-v+(r-c)/2,p.css({"transition-duration":"0ms",transform:"translateX("+b+"px)"})):C>=2*m-h&&(C-=m,v-=m,b=c*-v+(r-c)/2,p.css({"transition-duration":"0ms",transform:"translateX("+b+"px)"})),b+=(v-C)*c,setTimeout(function(){p.css({"transition-duration":e+"ms",transform:"translateX("+b+"px)"})},1)}):S=e.noop,s=p.find(d.navItemSelector),S(0)}function o(){s.eq(v).removeClass(d.currentClass),s.eq(C).addClass(d.currentClass),S!==e.noop&&(s.eq(v<m?v+m:v-m).removeClass(d.currentClass),s.eq(C<m?C+m:C-m).addClass(d.currentClass)),d.isContent&&a.eq(v<m?v:v-m).removeClass(d.currentClass).end().eq(C<m?C:C-m).addClass(d.currentClass),S(d.time),setTimeout(function(){k=!0},d.time),v=C}var i,a,s,r,c,l=this,d=e.extend({},e.fn.dragTab.defaults,t),u=this.find(d.navWrapSelector),p=u.find(d.navSelector),f=p.find(d.navItemSelector),h=0,m=f.length,v=-1,C=-1,g=0,w=0,S=e.noop,b=0,k=!0;d.isContent&&(i=this.find(d.contentSelector),a=i.find(d.contentItemSelector));for(var y=0;y<m;y++)if(f.eq(y).hasClass(d.currentClass)){v=y;break}return v===-1&&(v=0,f.eq(v).addClass(d.currentClass),d.isContent&&a.eq(v).addClass(d.currentClass)),C=v,n(),u.on("click",d.navItemSelector,function(){!e(this).hasClass(d.currentClass)&&k&&(C=e(this).index(),k=!1,o())}).on("touchstart",function(t){S!==e.noop&&k&&(g=t.originalEvent.touches[0].pageX,w=g)}).on("touchmove",function(t){t.preventDefault(),S!==e.noop&&k&&(w=t.originalEvent.touches[0].pageX)}).on("touchend",function(t){S!==e.noop&&k&&(w>g?(k=!1,C--,o()):w<g&&(k=!1,C++,o()))}),e(window).on("resize",function(){setTimeout(function(){k&&n()},200)}),this},e.fn.dragTab.defaults={isContent:!0,time:300,navWrapSelector:"div.comment-nav-wrap",navSelector:"ul.comment-nav",navItemSelector:"li",contentSelector:"ul.comment-content",contentItemSelector:"li",currentClass:"current"},e.fn.lazyLoad=function(t){function n(e){i.on("scroll"+r,function(){s.height()-i.scrollTop()-a<o.minHeight&&(i.off("scroll"+r),r="."+(+new Date+Math.random()),i.data("_lazyLoadNamespace",r),e||o.load(n))})}var o=e.extend({},e.fn.lazyLoad.defaults,t),i=this,a=i.height(),s="body"===o.bodySelector?e(o.bodySelector):i.find(o.bodySelector),r="."+(+new Date+Math.random());return this.data("_lazyLoadNamespace",r),i.on("resize",function(){setTimeout(function(){a=i.height()},300)}),o.isPerformLoad?o.load(n):n(),this},e.fn.lazyLoad.defaults={bodySelector:"body",minHeight:100,isPerformLoad:!1,load:e.noop},e.fn.unbindLazyLoad=function(t){var n=(e.extend({},e.fn.lazyLoad.defaults,t),this.data("_lazyLoadNamespace"));return n&&this.off("scroll"+n),this},e.fn.dragSelect=function(t){function n(e){d=e,void 0===c&&(f.hasClass(p.show)?(s=h.width(),a=m.outerHeight(),l=Math.round((m.offset().top-v.offset().top)/a),c=l*a):(f.addClass(p.show),s=h.width(),a=m.outerHeight(),l=Math.round((m.offset().top-v.offset().top)/a),c=l*a,f.removeClass(p.show)),b=(l-d.find(k).index())*a),u((l-d.find(k).index())*a,0)}function o(e){var t=Math.floor(e/s*g);d=C.eq(t<g?t:g-1),r=a-d.height()+c}var i,a,s,r,c,l,d,u,p=e.extend({},e.fn.dragSelect.defaults,t),f=this,h=this.find(p.overlaySelector),m=h.find(p.overlayCurrentSelector),v=this.find(p.contentWrapSelector),C=v.find(p.contentListWrapSelector),g=C.length,w=0,S=0,b=0,k=p.contentListSelector+"."+p.currentClass,y="."+(+new Date+Math.random()),T=!1;return this.data("_dragSelectNamespace",y),p.isMobile?(u=function(e,t){d.css({"transition-duration":t+"ms",transform:"translateY("+e+"px)"})},this.on("touchstart"+y,p.overlaySelector,function(e){T=!0,w=e.originalEvent.touches[0].pageY,o(e.originalEvent.touches[0].pageX)}).on("touchmove"+y,p.overlaySelector,function(e){T&&(e.preventDefault(),S=e.originalEvent.touches[0].pageY-w,u(b+S,0))})):(u=function(e,t){d.animate({"margin-top":e},t)},this.on("mousedown"+y,p.overlaySelector,function(e){T=!0,w=e.pageY,o(e.pageX)}).on("mousemove"+y,p.overlaySelector,function(e){T&&(e.preventDefault(),S=e.pageY-w,u(b+S,0))})),this.on((p.isMobile?"touchend":"mouseup")+y,p.overlaySelector,function(e){T=!1,b+=S,S=0,b>c?b=c:b<r&&(b=r);var t=-Math.round(b/a),o=d.find(p.contentListSelector).eq(t+l);d.find(k).removeClass(p.currentClass),o.addClass(p.currentClass),b=-t*a,u(b,p.scrollTime),i!==b&&(i=b,p.callback(n,o))}),p.isPerformCallback?p.callback(n):C.each(function(){n(e(this))}),this},e.fn.dragSelect.defaults={isMobile:!0,show:"show",scrollTime:600,overlaySelector:"div.popup-overlay",overlayCurrentSelector:"div",contentWrapSelector:"div.level",contentListWrapSelector:"ul",contentListSelector:"li",currentClass:"current",isPerformCallback:!0,callback:e.noop},e.fn.unbindDragSelect=function(t){var n=e.extend({},e.fn.dragSelect.defaults,t),o=this.data("_dragSelectNamespace");return o&&this.off(o,n.overlaySelector),this},e.fn.slidershow=function(t){function n(e,t){l.css({"transition-duration":t+"ms",transform:"translateX("+e+"px)"})}function o(){s=setTimeout(i,c.intervalTime),r.data("_slidershowTimer",s)}function i(){c.isLoop?(b++,n(-b*S,c.scrollTime),b>h?(b=1,setTimeout(function(){n(-S,0)},c.scrollTime)):b<=0&&(b=h,setTimeout(function(){n(-h*S,0)},c.scrollTime))):(b>=h-1?(b=h-1,g&&(C.addClass(c.disabledClass),v.removeClass(c.disabledClass))):b<0?(b=0,g&&(v.addClass(c.disabledClass),C.removeClass(c.disabledClass))):(b++,g&&(v.removeClass(c.disabledClass),b===h-1?C.addClass(c.disabledClass):C.removeClass(c.disabledClass))),n(-b*S,c.scrollTime)),f&&a.eq(k-1).removeClass(c.currentClass).end().eq(b-1).addClass(c.currentClass),k=b,c.isAuto&&o()}var a,s,r=this,c=e.extend({},e.fn.slidershow.defaults,t),l=this.find(c.contentSelector),d=l.find(c.contentItemSelector),u=d,p=this.find(c.navWrapSelector),f=!1,h=d.length,m=1===h,v=this.find(c.leftBtnSelector),C=this.find(c.rightBtnSelector),g=1===v.length,w=e(window),S=this.width(),b=0,k=0,y=0,T=0,x=0,$=0,D=!1,I="."+(+new Date+Math.random());return this.data("_slidershowNamespace",I),p.length&&(a=p.find(c.navItemSelector),f=!0),d.width(S),m?p.hide():(p.show(),c.isLoop&&(d.eq(0).clone().appendTo(l),d.eq(h-1).clone().prependTo(l),i(),u=l.find(c.contentItemSelector)),this.on("touchstart"+I,c.contentItemSelector,function(e){T=y=e.originalEvent.touches[0].pageX,$=x=e.originalEvent.touches[0].pageY,D=!1,c.isAuto&&clearTimeout(s)}),this.on("touchmove"+I,c.contentItemSelector,function(e){T=e.originalEvent.touches[0].pageX,$=e.originalEvent.touches[0].pageY,Math.abs(T-y)-Math.abs($-x)>0&&(e.preventDefault(),D=!0,n(-k*S+T-y,0))}),this.on("touchend"+I,c.contentItemSelector,function(e){D||Math.abs(T-y)-Math.abs($-x)>0?(T-y>0&&(b-=2),i()):c.isAuto&&o()}),f&&p.on("click"+I,c.navItemSelector,function(t){b=e(this).index(),c.isAuto&&clearTimeout(s),i()}),g&&v.on("click"+I,function(){v.hasClass(c.disabledClass)||(b-=2,c.isAuto&&clearTimeout(s),i())}),C.length&&C.on("click"+I,function(){C.hasClass(c.disabledClass)||(c.isAuto&&clearTimeout(s),i())})),w.on("resize"+I,function(){setTimeout(function(){S=r.width(),u.width(S)},200)}),this},e.fn.slidershow.defaults={isAuto:!0,isLoop:!0,scrollTime:1e3,intervalTime:2e4,contentSelector:".slidershow-content",contentItemSelector:".slidershow-item",navWrapSelector:"ul.slidershow-nav",navItemSelector:"li",currentClass:"current",leftBtnSelector:".left-btn",rightBtnSelector:".right-btn",disabledClass:"disabled"},e.fn.unbindSlidershow=function(t){var n=e.extend({},e.fn.slidershow.defaults,t),o=this.data("_slidershowNamespace"),i=this.data("_slidershowTimer");return o&&(this.off("touchstart"+o),this.off("touchmove"+o),this.off("touchend"+o),this.find(n.navWrapSelector).off("click"+o),this.find(n.leftBtnSelector).off("click"+o),this.find(n.rightBtnSelector).off("click"+o),e(window).off("resize"+o)),i&&(clearTimeout(i),this.data("_slidershowTimer","")),this},e.fn.accordion=function(t){var n=e.extend({},e.fn.accordion.defaults,t),o=this,i=o.find(n.itemSel),a=i.find(n.titleSel),s=i.find(n.contentSel),r=n.initIndex,c="."+(+new Date+Math.random());return o.data("_accordionNamespace",c),a.length!==s.length?(console.warn("something wrong"),o):(i.removeClass(n.activeClass),n.isOpen&&i.eq(n.initIndex).addClass(n.activeClass),o.on("click"+c,n.titleSel,function(){var t=e(this),o=t.closest(n.itemSel),i=o.index();o.hasClass(n.activeClass)?o.find(n.contentSel).slideUp(n.easeTime,function(){o.removeClass(n.activeClass),n.afterClose(o)}):(s.eq(r).slideUp(n.easeTime,function(){var t=e(this).closest(n.itemSel).removeClass(n.activeClass);n.afterClose(t)}),o.find(n.contentSel).slideDown(n.easeTime,function(){o.addClass(n.activeClass),n.afterShow(o)}),r=i)}),o)},e.fn.accordion.defaults={itemSel:".accordion-item",titleSel:".accordion-title",contentSel:".accordion-content",activeClass:"show",initIndex:0,easeTime:300,isOpen:!0,afterClose:e.noop,afterShow:e.noop},e.fn.unbindAccordion=function(t){var n=e.extend({},e.fn.dragSelect.defaults,t),o=this.data("accordionNamespace");this.off(o,n.titleSel)}}(jQuery),jQuery(function(e){var t=navigator.userAgent;(t.indexOf("iPhone")>-1||t.indexOf("iPad")>-1)&&t.indexOf("UCBrowser")>-1&&e(window).on("pagehide",function(){var t=e(document.body);t.children().remove(),setTimeout(function(){t.append("<script type='text/javascript'>window.location.reload(true);</script>")})}),setBodyHeight(),e(".global_back_home.disable").click(function(e){return e.preventDefault()}),setTimeout(function(){/InspectionReportDetail/i.test(window.location.href)||e("html,body").scrollTop(0)},300),e("body").unbind("click.track-click").on("click.track-click",".ahs-track-click",function(){var t=e(this);trackAhsAnalytics(t.data("track-category"),t.data("track-action"),t.data("track-name"),1)}).unbind("hover.track-hover").on("hover.track-hover",".ahs-track-hover",function(){var t=e(this);trackAhsAnalytics(t.data("track-category"),t.data("track-action"),t.data("track-name"),1)}),function(){if(/AiHuiShouApp/i.test(t)){var n=location.href;/\/\/Trade\/Success[\/]*($|[?#])/i.test(n)&&e("#share").hide(),e("#js-index-pc").hide(),e("a.js-index-oldcloth-banner").on("click",function(e){e.preventDefault()}),e("li.js-index-oldcloth").hide()}else/\/Home\/(Intro|Lowprice)\/*($|[?#])/i.test(n)&&e("#header").hide();if(/aihuishou_android/i.test(t)){var n=location.href,o=!1,i=0,a=0;if(/\/user\/*($|[?#])/i.test(n)){var s=e(document.body);e(document).on("touchstart",function(t){e(window).scrollTop()<=0&&"fixed"!==s.css("position")&&(o=!0,i=t.originalEvent.touches[0].pageY)}).on("touchmove",function(e){o&&(a=e.originalEvent.touches[0].pageY,a>=i?e.preventDefault():o=!1)}).on("touchend",function(){o&&(o=!1,a>i+50&&location.reload(!0))})}}}(),e("#js-models-content").on("touchend",function(){setTimeout(function(){var t=+e("#js-models-content").find("ul")[0].style.webkitTransform.replace(/[^0-9]+/g,"");t>50?e(".back-top").addClass("active"):e(".back-top").removeClass("active")},100)}),e(".back-top").on("click",function(){e("#js-models-content").find("ul").css({"-webkit-transform":"translateY(0)","-moz-transform":"translateY(0)",transform:"translateY(0)"}),e(this).removeClass("active")}),window.isMobile=/iPhone|iPod|Android|ios|SymbianOS/i.test(t)}),$("#kefu").on("click",function(e){e.preventDefault(),NTKF.im_openInPageChat()});var ishuaweiApp="true"==getCookie("app");if(ishuaweiApp){var currenturl=window.location.href;if(currenturl.indexOf("/huawei/Product/Detail")!=-1)$(".top-header").find("h2").addClass("hide"),$(".top-header").find(".back").addClass("hide"),$("#body").css("paddingTop","30px"),$("#body").addClass("huaweiApp");else if(currenturl.indexOf("/huawei/Help/ChooseCity")!=-1)$(".top-header").addClass("hide"),$(".search-city-wrap").css("top","0"),$("#body").css("paddingTop",".48rem");else{var reg5=/huawei\/product|Product\/CategoryBrands|categorybrands/;reg5.test(currenturl)?($(".back").addClass("hide"),$(".top-header").removeClass("hide")):$(".top-header").addClass("hide")}}$("#holiday-notice").find("span").click(function(){window.location.href=$(".holiday-notice").data("url")}),$("#holiday-notice").find(".close").click(function(){$("#holiday-notice").slideUp(300)});