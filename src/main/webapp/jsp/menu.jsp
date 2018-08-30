<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="left-menu">
			<div class="sub-left-menu scroll">
				<ul class="nav nav-list">
					<li>
						<div class="left-bg"></div>
					</li>
					<li class="time">
						<h1 class="animated fadeInLeft">21:00</h1>
						<p class="animated fadeInRight">Sat,October 1st 2029</p>
					</li>
					<li><a href="#homepage" role="tab" data-toggle="tab"
						aria-controls=""> 首页 </a></li>
					</li>
					<li class="ripple"><a class="tree-toggle nav-header"><i
							class="fa fa-gear" aria-hidden="true"></i>&nbsp;&nbsp; 系统管理 <span
							class="fa-angle-right fa right-arrow text-right"></span> </a>
						<ul class="nav nav-list tree">
							<li><a class="sysUserManager" href="#sysUserManager" role="tab" data-toggle="tab"	aria-controls="">用户管理</a></li>
							<li><a class="sysRoleManager" href="#roleManager" role="tab" data-toggle="tab" aria-controls="">角色管理</a></li>
							<li><a href="#permissionManager" role="tab"
								data-toggle="tab" aria-controls="">权限管理</a></li>
						</ul></li>
					<li class="ripple"><a class="tree-toggle nav-header"><span
							class="fa-home fa"></span> 供应商管理 <span
							class="fa-angle-right fa right-arrow text-right"></span> </a>
						<ul class="nav nav-list tree">
							<li><a href="#supplierInfo" role="tab" data-toggle="tab"
								aria-controls="">供应商信息</a></li>
							<li><a href="#supplierType" role="tab" data-toggle="tab"
								aria-controls="">供应商类别</a></li>
						</ul></li>
					<li class="ripple"><a class="tree-toggle nav-header"> <span
							class="fa-diamond fa"></span> 询比价管理 <span
							class="fa-angle-right fa right-arrow text-right"></span>
					</a>
						<ul class="nav nav-list tree">
							<li><a href="#inquiryManager" role="tab" data-toggle="tab"
								aria-controls="">询价管理</a></li>
							<li><a href="#quote" role="tab" data-toggle="tab"
								aria-controls="">报价管理</a></li>
							<li><a href="#parity" role="tab" data-toggle="tab"
								aria-controls="">比价管理</a></li>
						</ul></li>
				</ul>
			</div>
		</div>