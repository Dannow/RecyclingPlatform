<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Recycling后台首页</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
		<script type="text/javascript">
            function get(i1,i2,i3){
                document.getElementById('a1').value=i1;
                document.getElementById('a2').value=i2;
                document.getElementById('a3').value=i3;
            }
		</script>
		<!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="javascript:void(0);" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							云智废品回收系统
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									最新订单
								</li>

								<li class="dropdown-footer">
									<a href="javascript:void(0)">
										未处理订单
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/images/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome</small>
									Admin
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="${pageContext.request.contextPath}/recyclerLogout">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-diamond"></i>
							<span class="menu-text"> 商品 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="active">
								<a href="goods.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									查看商品
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="goods_add.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									添加商品
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 订单 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="${pageContext.request.contextPath}/showAllPayOrder/1">
									<i class="menu-icon fa fa-caret-right"></i>
									已处理订单
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="${pageContext.request.contextPath}/showAllNoPayOrder/1">
									<i class="menu-icon fa fa-caret-right"></i>
									未处理订单
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-diamond"></i>
							<span class="menu-text"> 用户 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="${pageContext.request.contextPath}/showAllUser/1">
									<i class="menu-icon fa fa-caret-right"></i>
									用户
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="javascript:void(0);">首页</a>
							</li>

							<li>
								<a href="javascript:void(0);">商品</a>
							</li>
							<li class="active"> &amp; goods</li>
						</ul>

					</div>

					<div class="page-content" style="min-height: 740px;">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								商品表&nbsp;&nbsp;<span style="font-size: 14px;color: red;">&amp;查看</span>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th class="center col-md-1">编号</th>
													<th class="detail-col center col-md-1">图片</th>
													<th class="center col-md-2">名称</th>
													<th class="center col-md-1">价格</th>
													<th class="center col-md-1">二级分类</th>
													<th class="center col-md-1">功能</th>
												</tr>
											</thead>

											<tbody>
											<c:forEach items="${goodsList.list}" var="goods">
												<tr>
													<td class="center"> ${goods.goodsId} </td>
													<td class="center">
														<div class="action-buttons">
															<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
																<i class="ace-icon fa fa-angle-double-down"></i>
															</a>
														</div>
													</td>
													<td class="center">${goods.goodsName}</td>
													<td class="center">${goods.goodsPrice}</td>
													<td class="hidden-480 center">${goods["secondSort"].secondSortName}</td>
													<td class="center">
														<div class="hidden-sm hidden-xs">
															<button class="btn btn-xs btn-info" data-toggle="modal" data-target="#modal-table" onclick="get('${goods.goodsId}','${goods.goodsName}','${goods.goodsPrice}')">
																<i class="ace-icon fa fa-pencil bigger-120"></i>
															</button>
															<button class="btn btn-xs btn-danger" onclick="window.location.href='${pageContext.request.contextPath}/deleteGoods/${goods.goodsId}'">
																<i class="ace-icon fa fa-trash-o bigger-120"></i>
															</button>
														</div>
													</td>
												</tr>

												<tr class="detail-row">
													<td colspan="9">
														<div class="table-detail">
															<div class="row">
																<div class="col-xs-12 col-sm-2 col-md-3">
																	<div class="text-center">
																		<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="${pageContext.request.contextPath}/static/picture/${goods.goodsPicture}" />
																		<br />
																		<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																			<div class="inline position-relative">
																				<a class="user-title-label" href="#">
																					<i class="ace-icon fa fa-circle light-green"></i>
																					&nbsp;
																					<span class="white">图一</span>
																				</a>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-xs-12 col-sm-7">
																	<div class="space visible-xs"></div>
																</div>
															</div>
														</div>
													</td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->
			<!--page-->
			<div class="page col-md-12">
				<ul class="pagination pull-right no-margin">
					<li class="prev ">
						<a href="${pageContext.request.contextPath}/showGoods/${goodsList.pageNum-1}">
							<i class="ace-icon fa fa-angle-double-left"></i>
						</a>
					</li>

					<c:forEach var="page_num" items="${goodsList.navigatepageNums}">
						<c:if test="${page_num == goodsList.pageNum}">
							<li class="active">
								<a href="#">${page_num}</a>
							</li>
						</c:if>
						<c:if test="${page_num != goodsList.pageNum}">
							<li>
								<a href="${pageContext.request.contextPath}/showGoods/${page_num}">${page_num}</a>
							</li>
						</c:if>
					</c:forEach>

					<li class="next">
						<a href="${pageContext.request.contextPath}/showGoods/${goodsList.pageNum+1}">
							<i class="ace-icon fa fa-angle-double-right"></i>
						</a>
					</li>
				</ul>
			</div>
			<!--page end-->
			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Recycling</span>
							winner winner,Chickdinner! &copy; 2017
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
			
			<!-- /.modal-->
			<div id="modal-table" class="modal fade" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header no-padding">
							<div class="table-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									<span class="white">&times;</span>
								</button>
								修改商品数量
							</div>
						</div>
						<form action="${pageContext.request.contextPath}/updateGoods" method="post" class="form-horizontal">
							<div class="modal-body no-padding">
									<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right">商品编号</label>

											<div class="col-sm-9">
												<input type="text" id="a1" name="goodsId" value="" class="col-xs-10 col-sm-5" readonly/>
											</div>
										</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品名称</label>

										<div class="col-sm-9">
											<input type="text" id="a2" name="goodsName" value="" class="col-xs-10 col-sm-5" readonly/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">修改价格</label>

										<div class="col-sm-9">
											<input type="number" id="a3" name="goodsPrice" value="" class="col-xs-10 col-sm-5" min="1"/>
										</div>
									</div>

							</div>

							<div class="modal-footer no-margin-top">
								<button class="btn btn-sm btn-success pull-right" type="submit">
									提交
								</button>
							</div>
						</form>
					</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div>
			<!-- /.modal-end -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
			})
		</script>
	</body>
</html>
