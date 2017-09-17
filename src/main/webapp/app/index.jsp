<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/hm.js"></script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<title>
		XX医药
	</title>
	<link rel="shortcut icon" href="/images/favicon.ico">
	<!--[if lt IE 9]>
		<script src="/js/ie-9-fix.js"></script>
		<script src="/js/ie-9-fix-mediaquery.js"></script>
	<![endif]-->
	<link href="/styles/global.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" media="screen and (max-width:800px)" href="/styles/max800.css">
	<link href="/styles/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script language="javascript" type="text/javascript" src="/bower_components/jquery/jquery.min.js"></script>
	<script language="javascript" type="text/javascript" src="/js/global.js"></script>
	<script src="/js/share.js"></script>
	<!--焦点图-->
	<link href="/styles/royalslider.css" rel="stylesheet">
	<script src="/js/jquery.royalslider.min.js"></script>
	<script src="/js/jquery.easing.js"></script>

	<!--手机端弹出菜单-->
	<link href="/bower_components/jquery-fatNav/dist/jquery.fatNav.min.css" rel="stylesheet" type="text/css">
	<!-- 自适应横向轮播图 -->
	<link href="/components/carousel/owl.carousel.css" rel="stylesheet">
	<script type="text/javascript">
		var Column = -1;
		$(document).ready(function () {
			$(window).resize();
		});
	</script>

	<style type="text/css">

		.hiSlider {
			overflow: hidden;
			background: #39B19E
		}

		.hiSlider-item {
			float: left;
		}

		.hiSlider-pages {
			position: relative;
			z-index: 3;
			width: 100%;
			text-align: center;
			height: 2rem;
			height: 16px \9;
			padding-top: 8px
		}

		.hiSlider-pages a {
			width: 1rem;
			height: 1rem;
			line-height: 1rem;
			width: 12px \9;
			height: 12px \9;
			line-height: 12px \9;
			margin: 0 4px;
			display: inline-block;
			overflow: hidden;
			text-indent: -100px;
			font-size: 0;
			border-radius: 50%;
			background: #ccc
		}

		.hiSlider-pages a.active {
			background: #0062B7
		}

		.in-hiSlider01 a {
			color: #fff
		}

		.in-hiSlider01 a:hover {
			filter: alpha(opacity=80);
			-moz-opacity: 0.8;
			-khtml-opacity: 0.8;
			opacity: 0.8
		}

	</style>
</head>
<body>
<!--手机端弹出菜单-->
<div class="fat-nav">
	<div class="fat-nav_wrapper" id="fat-nav">
		<ul class="mo_nav" id="mo_nav">
			<li><a href="/" class="cf">企业文化<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">产品与服务<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">我们的创新<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">我们的公司<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">新闻中心<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">职业发展<i class="fa fa-angle-right fright color666"></i></a></li>
			<li><a href="/" class="cf">投资者关系<i class="fa fa-angle-right fright color666"></i></a></li>
		</ul>
	</div>
</div>
<!--手机端弹出菜单 end-->
<article class="mainblock">
	<!--头部开始-->
	<header class="headbox">
		<div class="base_width">
			<div class="width92 marginauto cf">
				<a href="/index.html" ><img src="/images/logo.png" class="logo fleft"/></a>
				<div class=" positionRelative languageHot">
					<a ><i class="fa fa-globe fa-2_6x color555 fright marginleft10"></i></a>
					<div class="language_dow dropdownBox">
						<i class="language_jt"></i>
						<div class="language_bgfff">
							<p class="language_a select"><a data-language="">中文简体</a></p>
							<p class="language_a"><a data-language="/">中文繁体</a></p>
							<p class="language_a"><a data-language="/">English</a></p>
						</div>
						<script>
							$("a[data-language]").each(function (i, o) { language.set($(o), $(o).data("language")); });
						</script>
					</div>
				</div>
				<div class="top_search fright cf topS1">
					<div class="topSearch_txt ">
						<p class="fleft"><input type="text" class="ts-input01 ts-focus TopSearchInput "></p>
						<a class="top_searchBt1 fleft">
							<i class="fa fa-search fa-stack-1x fa-inverse"></i>
						</a>
					</div>
					<span class="fa-stack fa-lg fright tsB top_find" >
						<i class="fa fa-circle fa-stack-2x color555"></i>
						<i class="fa fa-search fa-stack-1x fa-inverse"></i>
					</span>
				</div>
			</div>
		</div>
		<script>
			$(document).ready(function () {
				$(".top_searchBt1").click(function () {
					var v = $(".ts-input01").val();
					if (v + "" !== "Search" && v + "" !== "") {
						$(".ts-input01").val("");

						window.location.href = "/news/search-" + v + ".html";
					}
				});

			});
		</script>
	</header>
	<!--头部结束-->

	<!--菜单开始-->
	<header class="navbox navbox_top01 mo_undis" style="top: 450px;">
		<div class="t_M">
			<div class="t_M_Fixed_w">
				<div class="topMenu ">
					<ul class=" cf">
						<li class="menuLi">
							<a class="menuLiBname" href="/">企业文化</a>
						</li>
						<li class="menuLi">
							<a class="menuLiBname" href="/">产品与服务</a>
						</li>
						<li class="menuLi">
							<a class="menuLiBname" href="/">我们的创新</a></li>
						<li class="menuLi menu_first select">
							<a class="menuLiBname" href="/">我们的公司</a>
						</li>
						<li class="menuLi">
							<a class="menuLiBname" href="/">新闻中心</a></li>
						<li class="menuLi menu_last">
							<a class="menuLiBname" href="/">职业发展</a>
						</li>
						<li class="menuLi">
							<a class="menuLiBname" href="/">投资者关系</a>
						</li>
					</ul>
				</div>
				<div class="topMenuFixed  cf">
					<div class="width92 marginauto">
						<div class="MF_logo positionRelative">
							<a href="/"> <img src="/images/logo.png" class="poabsolute-h50"></a>
						</div>
						<ul class="MF_links cf">
							<li class="menuLi"><a class="menuLiBname" href="/ ">企业文化</a> </li>
							<li class="menuLi"><a class="menuLiBname" href="/ ">产品与服务</a> </li>
							<li class="menuLi"><a class="menuLiBname" href="/ ">我们的创新</a> </li>
							<li class="menuLi menu_first"><a class="menuLiBname" href="/ ">我们的公司</a> </li>
							<li class="menuLi"><a class="menuLiBname" href="/ ">新闻中心</a> </li>
							<li class="menuLi menu_last"><a class="menuLiBname " href="/ ">职业发展</a> </li>
							<li class="menuLi"><a class="menuLiBname" href="/ ">投资者关系</a> </li>
						</ul>
						<div class="MF_icon fright cf">
							<div class=" positionRelative languageHot">
								<a><i class="fa fa-globe fa-2_6x color555 fright marginleft10"></i></a>
								<div class="language_dow dropdownBox" style="display: none;">
									<i class="language_jt"></i>
									<div class="language_bgfff">
										<p class="language_a select"><a data-language="">中文简体</a></p>
										<p class="language_a"><a data-language="/zh-tw">中文繁体</a></p>
										<p class="language_a"><a data-language="/en">English</a></p>
									</div>

								</div>
							</div>
							<div class="top_search fright cf topS2">
								<div class="topSearch_txt " >
									<p class="fleft">
										<input type="text" id="searchCont" class="ts-input01 ts-focus TopSearchInput ">
									</p>
									<a class="top_searchBt1 fleft"><i
										class="fa fa-search fa-stack-1x fa-inverse"></i></a>
								</div>
								<span class="fa-stack fa-lg fright tsB top_find"><i
									class="fa fa-circle fa-stack-2x color555"></i><i
									class="fa fa-search fa-stack-1x fa-inverse"></i></span>
							</div>
						</div>
					</div>
				</div>

				<div class="menuDownBox" style="display: block; height: 306.891px; overflow: hidden; opacity: 1;">
					<div class="base_width">
						<div class="mainblock" style="background-color: transparent">
							<ul class="menuDown">
								<li class="menuDown_li mLi2 cf" style="display: none; opacity: 1;">
									<ul class="menuDown_links">
										<li class="menuDown_linksFist"><a href="/">创新能力</a></li>
										<li><a href="/">员工归属感</a></li>
										<li><a href="/">社会责任感</a></li>
										<li><a href="/">股东</a></li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down2_1.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">企业文化</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi3 cf" style="display: none; opacity: 1;">
									<ul class="menuDown_links">
										<li>
											<a href="/">制药产品</a>
											<div class="cf">
												<div class="links_section">
													<a href="/">·代谢及消化系统</a>
													<a href="/">·心血管系统</a>
													<a href="/">·血液系统</a>
													<a href="/">·中枢神经系统药物</a>
													<a href="/">·抗感染</a>
													<a href="/">·抗肿瘤</a>
													<a href="/">·疫苗</a>
													<a href="/">·原料药及中间体</a>
												</div>
											</div>
										</li>
									</ul>
									<ul class="menuDown_links">
										<li><a href="/">医学诊断产品</a></li>
										<li><a href="/">医疗器械产品</a></li>
										<li><a href="/">医疗服务</a></li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down3_2.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">医疗服务</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi4 cf" style="display: none; opacity: 1;">
									<ul class="menuDown_links">
										<li><a href="/">研发体系</a></li>
										<li><a href="/">创新战略联盟</a></li>
										<li><a href="/">研发团队</a></li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down4_2.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">研发团队</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi1 cf" style="display: block; opacity: 1;">
									<ul class="menuDown_links">
										<li class="menuDown_linksFist"><a href="/">公司简介</a></li>
									</ul>
									<ul class="menuDown_links">
										<li class="cf">
											<a href="/">领导团队</a>
											<div class="links_section">
												<a href="/">·董事会</a>
												<a href="/">·监事会</a>
												<a href="/">·高管</a>
											</div>
										</li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down_03.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">公司简介</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi6 cf" style="display: none;">
									<ul class="menuDown_links">
										<li class="menuDown_linksFist"><a href="/">最新资讯</a></li>
										<li><a href="/">集团新闻</a></li>
										<li><a href="/">媒体报道</a></li>
										<li><a href="/">媒体垂询</a></li>
									</ul>
									<ul class="menuDown_links">
										<li class="cf">
											<a href="/">多媒体专区</a>
											<div class="links_section">
												<a href="/">·期刊</a>
												<a href="/">·视频</a>
												<a href="/">·文件下载</a>
											</div>
										</li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down5_2.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">资料下载</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi7 cf" style="display: none;">
									<ul class="menuDown_links">
										<li><a href="/">社会招聘</a></li>
									</ul>
									<ul class="menuDown_links">
										<li class="menuDown_linksFist cf">
											<a href="/">培训与发展</a>
											<div class="links_section">
												<a href="/">·人才培育体系</a>
												<a href="/">·管理培训生项目</a>
												<a href="/">·人才发展与激励</a>
											</div>
										</li>
									</ul>
									<ul class="menuDown_links">
										<li class="cf"><a href="/">员工生活</a>
											<div class="links_section">
												<a href="/">·企业文化</a>
												<a href="/">·工作环境</a>
											</div>
										</li>
									</ul>

									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/Down7_2.jpg">
											<div class="menuDown_picBox">
												<p class="menuDown_img">
													<img src="/images/index/Down7_2.jpg" width="224" height="128">
												</p>
												<p class="menuDown_txt">培训与发展</p>
											</div>
										</a>
										</li>
									</ul>
								</li>
								<li class="menuDown_li mLi5 cf" style="display: none;">
									<ul class="menuDown_links">
										<li class="menuDown_linksFist"><a href="/">公告及通函</a></li>
										<li><a href="/">公司治理</a></li>
										<li><a href="/">公司推介</a></li>
										<li><a href="/">财务报告</a></li>
									</ul>
									<ul class="menuDown_links">
										<li class="menuDown_linksFist"><a href="/">股票信息</a></li>
										<li><a href="/">常见问题</a></li>
										<li><a href="/">投资者联络</a></li>
									</ul>
									<ul class="menuDown_pic ">
										<li class="menuDown_picli">
											<a href="/">
												<div class="menuDown_picBox">
													<p class="menuDown_img">
														<img src="/images/index/Down6_2.jpg" width="224" height="128">
													</p>
													<p class="menuDown_txt">财务报告</p>
												</div>
											</a>
										</li>
									</ul>
								</li>
								<!---->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--菜单结束-->

	<!--焦点图开始-->
	<section class="sidebar inKV">

		<div id="slider-with-blocks-1" class="royalSlider rsMinW in-kvbox ">
			<div class="slide-con inkv1-bg ">
				<div class="base_width positionRelative">
					<p class="slide-txtbox inkv1-text01" >
						<span class="fontSize50 line-height1_2em">关爱生命</span><br>
						<span class="fontSize16">Care For Life</span>
					</p>
				</div>
			</div>
			<div class="slide-con inkv2-bg">
				<div class="base_width positionRelative">
					<p class="slide-txtbox inkv1-text01" >
						<span class="fontSize50 line-height1_2em">不断创新</span><br>
						<span class="fontSize16">Continuous Innovation</span>
					</p>
				</div>
			</div>
			<div class="slide-con inkv3-bg">
				<div class="base_width positionRelative">
					<p class="slide-txtbox inkv1-text01" >
						<span class="fontSize50 line-height1_2em">精益求精</span><br>
						<span class="fontSize16">Pursuit of Excellence</span>
					</p>
				</div>
			</div>
			<div class="slide-con inkv4-bg">
				<div class="base_width positionRelative">
					<p class="slide-txtbox inkv1-text01" >
						<span class="fontSize50 line-height1_2em">合作共赢</span><br>
						<span class="fontSize16">Sustainable Partnership</span>
					</p>
				</div>
			</div>

		</div>
	</section>

	<!--焦点图结束-->
	<!--主体内容开始-->
	<section class="width100  paddingbottom40 bgfff">
		<div class="width92 marginauto cf">
			<p class="fontSize30 line-height1_2em paddingtop30">探索复星医药</p>
			<!--滚动内容区域-->
			<div class="cf">
				<div class="area_50l in-hiSlider01">
					<ul class="hiSlider hiSlider01">
						<li class="hiSlider-item  ">
							<div class="width100 bg39B19E cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<p class="com-tit bg000_0_2">热点新闻</p>
										<p class="fontSize20 com-rows_3 margintop15">复星医药：研发及国际化点亮业绩 ，上半年营收同比增长20.41%</p>
										<p class="fontSize12 margintop15 com-rows_3s">
											&nbsp;
											2017年8月30日，中国领先的医疗健康产业集团复星医药 (股票代码：600196.SH，02196.HK) 公布2017年中期业绩。
											报告期内，复星医药集团实现营业收入人民币83...</p>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<div class="width50 fleft com-img overhidden">
									<a href="/" ><img src="/images/index/2017083073722.jpg" class="dis"  width="300px" height="400px"></a>
								</div>
							</div>
						</li>
						<li class="hiSlider-item  ">
							<div class="width100 bg39B19E cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<p class="com-tit bg000_0_2">热点新闻</p>
										<p class="fontSize20 com-rows_3 margintop15">2016年复星医药扣非净利同比增长26.36% 持续加大创新研发投入 强化医疗服务布局</p>
										<p class="fontSize12 margintop15 com-rows_3s">
											2017年3月29日，复星医药 (股票代码：600196.SH，02196.HK) 披露2016年业绩。
											2016年，复星医药集团坚持产品创新和管理提升、国际化发展，主营业务继续保持均衡增长。2016年度，复星医药集团实...</p>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<div class="width50 fleft com-img overhidden">
									<a href="/" ><img src="/images/index/2017041083131.jpg" class="dis"  width="300px" height="400px"></a>
								</div>
							</div>
						</li>
						<li class="hiSlider-item  ">
							<div class="width100 bg39B19E cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<p class="com-tit bg000_0_2">热点新闻</p>
										<p class="fontSize20 com-rows_3 margintop15">中瑞商业合作又一“里程碑” 复星医药收购欧洲呼吸机器械领先品牌Breas</p>
										<p class="fontSize12 margintop15 com-rows_3s">
											（2017年3月22日，上海）近日，复星医药收购欧洲呼吸机器械领先品牌Breas的交割仪式在Breas总部所在地瑞典城市哥德堡举行，来自复星医药和Breas公司（以下简称“Breas”）前股东PBM Capital的高级管理人员、哥德...</p>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<div class="width50 fleft com-img overhidden">
									<a href="/" ><img src="/images/index/201704108372.jpg" class="dis"  width="300px" height="400px"></a>
								</div>
							</div>
						</li>

						<li class="hiSlider-item  ">
							<div class="width100 bg39B19E cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<p class="com-tit bg000_0_2">热点新闻</p>
										<p class="fontSize20 com-rows_3 margintop15">复星医药与Kite Pharma在华成立中外合营企业 引进全球领先癌症治疗技术和重磅产品</p>
										<p class="fontSize12 margintop15 com-rows_3s">
											2017年1月11日 — 上海复星医药（集团）股份有限公司（以下简称复星医药，股票代码600196.SH，02196.HK）宣布，通过旗下全资子公司成立中外合营企业，拟在中国（根据本次合作约定，包括中国大陆、香港及澳门，但不包括台湾；...</p>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<div class="width50 fleft com-img overhidden">
									<a href="/" ><img src="/images/index/20170119101058.jpg" class="dis"  width="300px" height="400px"></a>
								</div>
							</div>
						</li>
					</ul>
					<!--滚动内容区域 end-->
				</div>
				<div class="area_50r in-hiSlider01">
					<ul class="hiSlider hiSlider01">
						<li class="hiSlider-item">
							<div class="width100 bgFFBF00 cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/" >
											<p class="com-tit bg000_0_2">创新研发</p>
											<p class="fontSize20 com-rows_5 margintop15">复星医药始终将自主创新作为企业发展的源动力，持续完善仿创结合的药品研发体系。</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/" >
									<div class="width50 fleft com-img overhidden">
										<img src="/images/index/in-pic02.jpg" class="dis" >
									</div>
								</a>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg4473A8 cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/" >
											<p class="com-tit bg000_0_2">制药产品</p>
											<p class="fontSize20 com-rows_5 margintop15">专注于心血管、抗肿瘤、中枢神经系统、血液系统、新陈代谢及抗感染药物</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<div class="width50 fleft com-img overhidden">
									<a href="/" ><img src="/images/index/in-pic03.jpg" class="dis" ></a>
								</div>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg00A3D9 cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff"> <a href="/health/medical-service.html" >
										<p class="com-tit bg000_0_2">医疗服务</p>
										<p class="fontSize20 com-rows_5 margintop15">瞄准高端、专科及综合医疗服务，为市民分别提供优质的医疗服务</p>
									</a> </div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/">
									<div class="width50 fleft com-img overhidden"> <img src="/images/index/in-pic04.jpg" class="dis" > </div>
								</a>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg0078C6 cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/">
											<p class="com-tit bg000_0_2">全产业链</p>
											<p class="fontSize20 com-rows_5 margintop15">从原创发明到应用技术改进、从管理优化到服务创新，为民众健康做出贡献</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/">
									<div class="width50 fleft com-img overhidden"> <img src="/images/index/in-pic05.jpg" class="dis" > </div>
								</a>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg5C8C6C cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/">
											<p class="com-tit bg000_0_2">社会责任</p>
											<p class="fontSize20 com-rows_5 margintop15">复星医药的社会责任使更多的民众能获得安全、便利、优质的产品和服务</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/">
									<div class="width50 fleft com-img overhidden"> <img src="/images/index/in-pic06.jpg" class="dis" > </div>
								</a>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg915A4B cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/" >
											<p class="com-tit bg000_0_2">投资者服务</p>
											<p class="fontSize20 com-rows_5 margintop15">复星医药未来三年（2015-2017 年）股东分红回报规划</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/" >
									<div class="width50 fleft com-img overhidden"> <img src="/images/index/in-pic07.jpg" class="dis" > </div>
								</a>
							</div>
						</li>

						<li class="hiSlider-item">
							<div class="width100 bg425B7D cf positionRelative">
								<div class="width50 fleft">
									<div class="width80 marginauto colorfff">
										<a href="/" >
											<p class="com-tit bg000_0_2">国际化</p>
											<p class="fontSize20 com-rows_5 margintop15">中国动力 全球资源<br>内生式增长、外延式扩张、整合式发展</p>
										</a>
									</div>
								</div>
								<a href="/" class="com-a12 positionAbsolute left_p5 bottom10">了解详情<i class="fa fa-long-arrow-right"></i></a>
								<a href="/" >
									<div class="width50 fleft com-img overhidden"> <img src="/images/index/in-pic08.jpg" class="dis" > </div>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<section class="width100 paddingtop20 paddingbottom20 bg0057B6">
		<div class="width92 marginauto cf colorfff">
			<div class="inColumns1 mo_border-b1ABCBF1">
				<div class="in-w01 height100 positionRelative">
					<p class="fontSize30 line-height1_2em tcenter">质量体系</p>
					<p class="fontSize14 line-height1_2em tcenter">精益求精的质量体系</p>
					<div class="inQualitySystem marginauto">
						<p class=" line-height1_1em paddingtop50">GMP国际认证</p>
						<p class="fontSize50   line-height1_1em paddingbottom10 paddingtop10">13个</p>
						<p class="  line-height1_1em">原料药</p>
					</div>
					<p class="inColumns_ba tcenter">
						<a href="/" class="com-a14 line-height2_5em">了解我们的创新 <i class="fa fa-long-arrow-right"></i></a>
					</p>
				</div>
			</div>

			<div class=" inColumns2 mo_border-b1ABCBF1">
				<p class="fontSize30 line-height1_2em">复星医药股票</p>
				<p class="fontSize14 line-height1_2em">复星医药A+H股两地上市公司</p>
				<div class="margintop20 cf">
					<div class="width45 fleft stockdate1 inStockBlock s1">
						<p class="paddingleft5 line-height2em paddingbottom5">SH 600196</p>
						<p class="line3-fff opacity0_5 marginbottom20"></p>
						<p class="paddingleft5 fontSize50 nufontfamily line-height1_2em" id="stock1_1">30.98</p>
						<i class="stockjt"></i>
						<p class="paddingbottom20 in_s_zs" id="stock1_2">1.17<br>3.92%</p>
						<p class="paddingleft5 fontSize12 paddingbottom5" id="stock1_3"><i class="fa fa-clock-o marginright5"></i>2017/09/15 15:05:56</p>
					</div>
					<div class="width45 fright stockdate2 inStockBlock s1">
						<p class="paddingleft5 line-height2em paddingbottom5">HK 02196</p>
						<p class="line3-fff opacity0_5 marginbottom20"></p>
						<p class="paddingleft5 fontSize50 nufontfamily line-height1_2em" id="stock2_1">30.75</p>
						<i class="stockjt"></i>
						<p class="paddingbottom20 in_s_zs" id="stock2_2">1.30<br>4.41%</p>
						<p class="paddingleft5 fontSize12  paddingbottom5" id="stock2_3"><i class="fa fa-clock-o marginright5"></i>2017/09/15 16:08:19</p>
					</div>
				</div>
				<p class="line-fff opacity0_5 mo_undis marginbottom10"></p>
				<p class="inColumns_ba">
					<a href="http://www.fosunpharma.com/investor/finance.html" class="com-a14 line-height2_5em paddingleft5">查阅年度财务报告 <i class="fa fa-long-arrow-right"></i></a>
				</p>

			</div>
			<div class="inColumns1 cf">
				<div class="in-jobbox height100 positionRelative">
					<p class="fontSize30 line-height1_2em tcenter">招贤纳才</p>
					<p class="fontSize14 line-height1_2em tcenter">一个更好的世界从你开始</p>
					<div class="in-job marginauto">
						<p class="paddingtop60"><span class="fontSize50 nufontfamily" id="jobsCount">10</span><br> 招聘职位</p>
					</div>
					<p class="inColumns_ba tcenter"><a href="/" class="com-a14 line-height2_5em">加入复星医药 <i class="fa fa-long-arrow-right"></i></a></p>
				</div>
			</div>
		</div>
	</section>
	<section class="blogroll">
		<section class="width100 paddingbottom30 paddingtop10 bgeee">
			<div class="width92 marginauto cf">
				<div class="area_70 paddingtop0 cf">
					<div class="area_30 margintop10">
						<img src="/images/logo.png" class="dis marginauto" style="max-width:60%">
					</div>
					<div class="area_70">
						<p class="slogan ">复星医药以“持续创新 乐享健康”为品牌理念<br>致力于成为全球主流医疗健康市场的一流企业</p>
					</div>
				</div>
				<div class="area_30">
					<div class="width45 fleft">
						<a class="width50 fleft tcenter a02 logo-pop">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x color003490"></i>
								<i class="fa fa-plus fa-stack-1x fa-inverse"></i>
							</span><br>
							<span class="">成员企业</span>
						</a>
						<a class="width50 fleft tcenter a02" href="/">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x"></i>
								<i class="fa fa-download fa-stack-1x fa-inverse"></i>
							</span><br>
							<span class="">资料下载</span>
						</a>
					</div>

					<div class="width55 fleft border-l1ddd ">
						<a class="width33 fleft tcenter a02 weixin" href="javascript:;">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x color3db92e"></i>
								<i class="fa fa-wechat fa-stack-1x fa-inverse"></i>
							</span><br>
							<span class="">微信</span>
						</a>
						<a href="/" target="_blank" class="width33 fleft tcenter a02  bds_linkedin">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x color00a3d9"></i>
								<i class="fa fa-linkedin-square fa-stack-1x fa-inverse"></i>
							</span><br>
							<span class="">领英</span>
						</a>
						<a href="/" target="_blank" class="width33 fleft tcenter a02">
							<p class="fa-stack fa-lg">
								<i class="icon_txsp"></i>
							</p>
							<p class="">视频</p>
						</a>
					</div>

				</div>
			</div>
		</section>
		<section class="logo-list">
			<div class="tcenter paddingtop20">
				<a href="/" class="logo-listMore">查看全部成员企业</a></div>
				<div id="owl-brand01" class="logo-box owl-carousel paddingtop30 paddingbottom20 owl-theme" style="opacity: 0; display: block;">
				<div class="owl-wrapper-outer">
					<div class="owl-wrapper" style="width: 672px; left: 0px; display: block;">
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015102012542.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101954235.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank"  class="logo-imgbox">
									<img src="/images/index/20160328102623.png">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/20160324102959.png">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015082423051.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015102012042.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/201510195294.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2016121231243.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/201510195300.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101953050.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/20160328102644.png">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2016032372246.png">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2016121231125.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/201708216333.gif">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/201510195543.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955427.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955451.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955519.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101954919.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/201510195509.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955050.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955115.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015111962931.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/20170821626.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955239.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="http://www.saladax.com/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2015101955257.jpg">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2016032411492.png">
								</a>
							</div>
						</div>
						<div class="owl-item" style="width: 12px;">
							<div class="item">
								<a href="/" target="_blank" class="logo-imgbox">
									<img src="/images/index/2017080223521.jpg">
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="owl-controls clickable">
					<div class="owl-pagination">
						<div class="owl-page active"><span class=""></span></div>
						<div class="owl-page"><span class=""></span></div>
						<div class="owl-page"><span class=""></span></div>
						<div class="owl-page"><span class=""></span></div>
					</div>
					<div class="owl-buttons">
						<div class="owl-prev"><i class="fa fa-chevron-left"></i></div>
						<div class="owl-next"><i class="fa fa-chevron-right"></i></div>
					</div>
				</div>
			</div>
		</section>

	</section>
	<section class="width100 bgddd mo_undis">
		<ul class="in-menu paddingtop50 paddingbottom50 width92 marginauto cf">
			<li class="in-menuli01">
				<p class="fontSize18">企业文化</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">创新能力</a></p>
					<p><a href="/">员工归属感</a></p>
					<p><a href="/">社会责任感</a></p>
					<p><a href="/">股东</a></p>
				</div>
			</li>
			<li class="in-menuli02">
				<p class="fontSize18">产品与服务</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">制药产品</a></p>
					<p><a href="/">医学诊断产品</a></p>
					<p><a href="/">医疗器械产品</a></p>
					<p><a href="/">医疗服务</a></p>
				</div>
			</li>
			<li class="in-menuli02">
				<p class="fontSize18">我们的创新</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">研发体系</a></p>
					<p><a href="/">创新战略联盟</a></p>
					<p><a href="/">研发团队</a></p>
				</div>
			</li>
			<li class="in-menuli02">
				<p class="fontSize18">我们的公司</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">公司简介</a></p>
					<p><a href="/">领导团队</a></p>
				</div>
			</li>
			<li class="in-menuli02">
				<p class="fontSize18">新闻中心</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">最新资讯</a></p>
					<p><a href="/">集团新闻</a></p>
					<p><a href="/">媒体报道</a></p>
					<p><a href="/">多媒体专区</a></p>
					<p><a href="/">媒体垂询</a></p>
				</div>
			</li>
			<li class="in-menuli03">
				<p class="fontSize18">职业发展</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">社会招聘</a></p>
					<p><a href="/">培训与发展</a></p>
					<p><a href="/">企业文化</a></p>
					<p><a href="/">工作环境</a></p>
				</div>
			</li>
			<li class="in-menuli02">
				<p class="fontSize18">投资者关系</p>
				<div class="paddingtop10 line-height1_8em">
					<p><a href="/">公告及通函</a></p>
					<p><a href="/">公司治理</a></p>
					<p><a href="/">公司推介</a></p>
					<p><a href="/">财务报告</a></p>
					<p><a href="/">股票信息</a></p>
					<p><a href="/">常见问题</a></p>
					<p><a href="/">投资者联络</a></p>
				</div>
			</li>
		</ul>
	</section>
	<!--主体内容结束-->
	<!--底部开始-->
	<footer class="footbox">
		<div class="width92 marginauto cf">
			<ul class="foot-link fontSize12 cf">
				<li class=""><a href="/">联系我们</a></li>
				<li class=""><a href="/">在线反馈</a></li>
				<li class=""><a href="/">网站地图</a></li>
				<li class=""><a href="/">隐私保护</a></li>
				<li class=""><a href="/">法律条款</a></li>
			</ul>
			<p class="fontSize12 copyright">
				<span class="fontSize16">©</span>2016 上海XX医药（集团）股份有限公司. 版权所有.<br>
				<a href="/" target="_blank">沪ICP备XXX号</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/" target="_blank">powered by XX</a>
			</p>
		</div>
		<div style="background:#eaeaea">
			<div style="width:300px;margin:0 auto; padding:20px 0;">
				<a target="_blank" href="/" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
					<img src="/images/index/beian.png" style="float:left;">
					<p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">沪公网安备 XX</p>
				</a>
			</div>
		</div>
	</footer>
	<!--底部结束-->

</article>
<!--焦点图-->
<script>
	jQuery(document).ready(function ($) {
		jQuery.rsCSS3Easing.easeOutBack = 'cubic-bezier(0.175, 0.885, 0.320, 1.275)';
		$('#slider-with-blocks-1').royalSlider({
			arrowsNav: true,
			arrowsNavAutoHide: false,
			fadeinLoadedSlide: false,
			controlNavigationSpacing: 0,
			controlNavigation: 'bullets',
			imageScaleMode: 'none',
			imageAlignCenter: false,
			blockLoop: true,
			loop: 1,
			loopRewind: 1,
			numImagesToPreload: 6,
			transitionType: 'fade',
			keyboardNavEnabled: true,
			block: {
				delay: 400
			}
		});
	});

	setInterval(function () {
		$(".rsArrowRight").click();
	}, 10000);

</script>
<!--手机端弹出菜单-->
<script language="javascript" type="text/javascript" src="/bower_components/jquery-fatNav/dist/jquery.fatNav.min.js"></script>
<a href="javascript:void(0)" class="hamburger">
	<div class="hamburger_icon"></div>
</a>
<!-- 自适应横向轮播图 -->
<script src="/components/carousel/owl.carousel.js"></script>
<script src="/components/hiSlider/js/jquery.hiSlider.min.js"></script>
<script>
	$('.hiSlider01').hiSlider({
		isFlexible: true,
		isSupportTouch: true,
		isShowTitle: false,
		isShowControls: false
	});
</script>

<div class=" wechatCode2"></div>
</body>
</html>
