///////////////////////////////////////////////////
function dropdown( obj ){
	var _o = $(obj);
	var _box = _o.find(".dropdownBox");
	_box.css({"display":"none"});
	_o.hover(function(){
		_box.css({"display":"block"});
	},function(){
		_box.css({"display":"none"});
	});

}
///////////////////////////////////////////////////
///////////////////////////////////////////////////选项卡效果
function tab( t, o, box ){
	var title = $(t);
	var tabBox = $(box);

	$(t).each(function(i, v) {
        //var t = $(v);
		tabBox.css({"opacity":0, "display":"none"})
		$(v).mousemove(function(e){
			showTab(i);
		});
    });
	function showTab( N ){
		title.each(function(i, v) {
			if (i != N ){
				tabBox.each(function(i,v) {
					if( i != N ){
						$(this).css({"opacity":0, "display":"none"});
					}
				});
				$(v).removeClass( o );

			}else{
				tabBox.each(function(i,v) {
					if( i == N ){
						$(this).css({ "display":"block"})
						$(this).stop().animate({ opacity:1 }, "fast");
					}
				});
				$(v).addClass( o );
			}
		})
	}
	showTab(1);
}
///////////////////////////////////////////////////END
///////////////////////////////////////////////////
var fN;
function fontzsize(z){
    var HTML = $(".news_Info");
	fN = parseInt(HTML.css('font-size'));
	fN = z ? fN + 2 : fN - 2;
	//HTML.find('*').removeAttr('class').removeAttr('style').removeAttr('id');
	HTML.find('*').css({"font-size":fN + "px","line-height":"1.5em"});
	HTML.css({"font-size":fN + "px","line-height":"1.8em"});


}
///////////////////////////////////////////////////

///////////////////////////////////////////////////主导航	pullDownMenu(".topMenu");//pullDownMenu(".topMenuFixed");
var exceed;//超过一定高度就置顶
var _t, inMenu,openNav,defaultN;
//inMenu是否在菜单内
defaultN = -1;//指定默认栏目，不指定设为负数
openNav = false;//是否默认展开菜单，false：否，true:展开
var menuH = [];
function pullDownMenu(_o){
	var _m = $(".t_M");
	var _mA=$(".topMenu");
	var _mAf =$(".topMenuFixed");
	var aa = _mA.find(".menuLi");//大栏目
	var aaF = _mAf.find(".menuLi");
	var dropDown = $(".menuDownBox");//展开的层
	var dLi = $(".menuDown_li")//子栏目
	var overClass="select";//当前选择的
	var menuB2 = dropDown.children(1).children("ul");
	dropDown.css({"display":"block","height":0});
	menuB2.css({"display":"block","height":0});
	//alert("menuB2="+ menuB2.length )
	///////////////////////////////////////////////////
	function showMenu( _n ){
	//alert("_n="+ _n +"\t height:"+ Number($(dLi[_n]).height())+"\t"+menuH +"\t"+ menuH.length );/**/
	  //openNav = true;
	  aa.removeClass(overClass);
	  aaF.removeClass(overClass);
	  dLi.css({"display":"none"});
	  $(dLi[_n]).css({"display":"block","opacity":"1"});
	  menuB2.css({"height":"0"});
	  if (_n >= 0 ){
		  //alert(  "menuH[_n]="+menuH  );
		  menuB2.stop().animate({height:menuH[_n],opacity:1 },"slow"); /*setTimeout(function(){}, 100);*/
		  dropDown.stop(true).animate({height: menuH[_n] }, "slow");
	  }else{
		  dropDown.stop(true).animate({height:0}, "slow");
	  }
	  $(aa[ _n ]).addClass(overClass);
	  $(aaF[ _n ]).addClass(overClass);
	  if ( dropDown.height() == 0 ){
	  	dropDown.stop().animate({height: menuH[_n],opacity:1},"slow");
	  }
	}
	///////////////////////////////////////////////////
	///////////////////////////////////////////////////
	function hideMenu(){
		//alert("openNav="+openNav + "\t    inMenu="+inMenu );
		aa.removeClass(overClass);
		aaF.removeClass(overClass);
		$(aa[ column ]).addClass(overClass);
		$(aaF[ column ]).addClass(overClass);
		dropDown.stop(true).animate({height:0}, "slow");
	}
	///////////////////////////////////////////////////
	///////////////////////////////////////////////////

	aa.each(function(i, v){
		var _v = $( v );
		_v.hover(function(){
			clearTimeout( _t );
			//inMenu = true;
			showMenu(i);
		},function(){
			//inMenu = false;
			_t = setTimeout( function(){
				(openNav == true) ? showMenu( column ) : hideMenu();
			},300);
		});
		menuH[i] = $(dLi[i]).height()+40;
	});
	////////////////////////////////////////////浮动
	aaF.each(function(i, v){
		var _v = $( v );
		_v.hover(function(){
			clearTimeout( _t );
			//inMenu = true;
			showMenu(i);
		},function(){
			//inMenu = false;
			_t = setTimeout( function(){
				(openNav == true) ? showMenu( column ) : hideMenu();
			},300);
		});
	});
	////////////////////////////////////////////
	dropDown.hover( function(){
		clearTimeout( _t );
		//inMenu = true;
	},function(){
		//inMenu = false;
		_t = setTimeout( function(){
			(openNav == true) ? showMenu(column) : hideMenu();
		},300);
	});
	dLi.css({"display":"none"});
	///////////////////////////////////////////////////默认栏目
	if ( typeof(column) != "undefined" && column >=0 ){
		(openNav == true) ? showMenu( column ) : hideMenu();
	}else{
		column = defaultN;
		var catalog =["health", "product", "innovation", "about", "investor", "news","job" ];
		var str = String(window.location.pathname);
		var strs= str.split("/");
		for(var i = 0; i < strs.length; i++) {
			for(var j = 0; j < catalog.length; j++) {
				if ( strs[i] == catalog[j]){
					column = j;
					(openNav == true) ? showMenu( column ) : hideMenu();
				}
			}//end for
		}//end for
	}
}
/////////////////////////////////////////////////

/////////////////////////////////////////////////整站菜单位置定位，滚动置顶
function menuPosition() {
	var _m = $(".t_M");
	var h1 = $(".in-kvbox").height();
	var h2 = $(".main_img").height();
	var h3 = $(".headbox_nopos").height();
	var kvH
	if ( h1 != null ){
		kvH = h1;
	}else if ( h2 != null ){
		kvH = h2;
	}else if( h3 != null ){
		kvH = h3;
	}
	var navDiv = $(".navbox");
	exceed  =  kvH - navDiv.height();
	navDiv.css({"top": ( exceed ) });
	//alert("top:"+exceed + "\nkvH="+  kvH +"  \nnavDiv.height="+navDiv.height() +"\n"+  $(".in-kvbox").height() );
	$(window).scroll(function() {
		var _top = $(window).scrollTop();
		if ( _top > exceed ){
			_m.addClass("fixed");
		}else{
			_m.removeClass("fixed");
		}
	});
	//END
}
/////////////////////////////////////////////////导航END

/////////////////////////////////////////////////首页大图
//$(window).resize(function() {
//	windowW = $(window).width();
//	windowH = $(window).height();
//
//	//alert(windowW);
//
//	var maxH = $(window).height() * 0.5;
//	var inKV = $(".in-kvbox");
//	var inNav = $(".navbox_top01");
//
//	inKV.css({"height": maxH});
//	//navTop = maxH - inNav.height();
//	//if ( typeof(kvD) != "undefined" ){
//	//exceed = maxH - 66;
//	//}
//	//inNav.css({"top": exceed  });
//	$(".inKV").css({"display":"block" });
//	menuPosition();
//	//pullDownMenu();
//});
///////////////////////////////////////////////////

///////////////////////////////////////////////////搜索
function topsearch( _DIV ){
	var _DIV = $(_DIV);
	var _sDiv = _DIV.find(".topSearch_txt");
	var _sButton = _DIV.find(".top_find");
	var _sinput = _DIV.find(".TopSearchInput");
	var subButton = $(".top_searchBt1");
	var _on = false;
	_sw = _sDiv.width();
	_sDiv.css({"width":0, "opacity":0,"display":"none" });
	_sButton.click(function(){
		$(this).css({"display":"none"});
		_sDiv.css({"display":"block"});
		_sDiv.stop().animate({ "width":_sw, "opacity":1 }, 400, function(){
				_sDiv.find("input").focus();
				_on = true;
				//////回车递交
				document.onkeydown=function(event){
					e = event ? event :(window.event ? window.event : null);
					if(e.keyCode==13){
						subButton.click();
						//alert('回车检测到了');
					}
				}
				/////////////////
		});
	});
	$(document).click(function(event){
		//alert("event.target.id="+event.target.id+"\n"+  "event.target.className="+event.target.className+"\n" + "_sDiv.selector.substring(1)="+ _sDiv.selector.substring(1) +"\n" + "_sDiv.selector ="+ _sDiv.selector +"\n" + "_sDiv ="+ _sDiv)
		if( event.target.className.indexOf( "TopSearchInput" )<0 ){
			  if (_on){
				  _sDiv.stop().animate({ "width":0, "opacity":0 },500,function(){
					  $(this).css({display:"none" });
					  _on = false;
				  });
				  _sButton.css({"display":"block"});
			  }
		}
	});


	subButton.click(function () {
		var v = $(".ts-input01").val();
		if (v + "" !== "Search" && v + "" !== "") {
			$(".ts-input01").val("");
			window.location.href = "/news/search-" + v + ".html"; /*搜索跳转*/
		}
	});

}
///////////////////////////////////////////////////搜索END

///////////////////////////////////////////////////微信二维码
function wechatCode( obj, XY ){
	$("body").append("<div class=' wechatCode2'></div>");
	var _wdiv,_w,d_t,d_l,t_l;
	_w = $(obj);
	//alert("_w="+ _w.html()  )
	_w.hover(function(){
		if ( XY == "top" ){
			_wdiv = $(".wechatCode1");
			t_t = $(obj).offset().top+ 35;
			d_t = t_t + 120;
			d_l = _w.offset().left + _w.width()/2 - _wdiv.width()/2 ;
		}
		if ( XY == "bottom" ){
			_wdiv = $(".wechatCode2");
			t_t = $(obj).offset().top - _wdiv.height();
			d_t = t_t - 180;
			d_l = _w.offset().left + _w.width()/2 - _wdiv.width()/2;
		}
		_wdiv.css({"opacity":0,"display":"block","top": d_t, "left": d_l });
		_wdiv.stop().animate({  top:t_t, opacity:1 }, 500);
	},function(){
		if ( XY == "top" ){ _wdiv = $(".wechatCode1"); d_t = $(obj).offset().top+ 120; }
		if ( XY == "bottom" ){ _wdiv = $(".wechatCode2"); d_t = $(obj).offset().top- 220; }
		_wdiv.stop().animate({ "top":d_t, "opacity":0 },500,function(){
			$(this).css({display:"none" });
		});
	});
}
///////////////////////////////////////////////////

///////////////////////////////////////////////////
$(document).ready(function(){
	pullDownMenu();
	menuPosition();
	wechatCode( ".weixin",  "bottom" );

	dropdown(".languageHot");
	topsearch(".topS1");//顶部搜索
	topsearch(".topS2");//置顶的搜索
});
//<!---------------------分享----------------------->
window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];



function jsonDateFormat(jsonDate, format) {
    try {
        var date;
        if (jsonDate.indexOf('T') > -1) {
            date = new Date(Date.parse(jsonDate));
        } else {
            date = new Date(parseInt(jsonDate.replace("/Date(", "").replace(")/", ""), 10));
        }
        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
        var day = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
        var hours = date.getHours();
        hours = hours < 10 ? "0" + hours : "" + hours;
        var minutes = date.getMinutes();
        minutes = minutes < 10 ? "0" + minutes : "" + minutes;
        var seconds = date.getSeconds();
        seconds = seconds < 10 ? "0" + seconds : "" + seconds;
        var milliseconds = date.getMilliseconds();
        milliseconds = milliseconds < 10 ? "0" + milliseconds : "" + milliseconds;

        format = format.replace("yyyy", date.getFullYear());
        format = format.replace("MM", month);
        format = format.replace("dd", day);
        format = format.replace("HH", hours);
        format = format.replace("mm", minutes);
        format = format.replace("ss", seconds);

        return format;//date.getFullYear() + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds + "." + milliseconds;
    } catch (ex) {
        return "";
    }
}
///////////////////////////////////////////////////
var language = {
    GetUrlRelativePath: function () {
        var url = document.location.toString();
        var arrUrl = url.split("//")[1];
        var relurl = arrUrl.split('/');
        var _relurl = "";

        for (var i = 1; i < relurl.length; i++) {
            _relurl += "/" + relurl[i];
        }
        return _relurl.toLowerCase();
    },
    set: function (elms, state) {
        var $this = this;
        elms.bind("click", function () {
            var u = $this.GetUrlRelativePath();
            u = u.replace("/zh-tw/", "");
            u = u.replace("/en/", "");
            u = (state + "/" + u).replace("//","/");
            window.location = u;
        });
    }
};
///////////////////////////////////////////////////
