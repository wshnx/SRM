<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="roleManager" role="tabpanel" class="tab-pane">
				<div class="roleManagermain">
				<div class="roleManager_Main">
			<ul class="nav nav-tabs nav-tabs-list">
				<li class="active"><a href="#userInfoManager" data-toggle="tab"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;角色管理</a></li>
				<li class="rListInfo"><a href="#roleInfoList" data-toggle="tab"><i class="fa fa-reorder" aria-hidden="true"></i>&nbsp;&nbsp;用户角色信息列表</a></li>
		</ul>
		<div class="tab-content">
		<div class="tab-pane active" id="userInfoManager">		
		<div class="panel panel-default">
  <div class="panel-heading blue-title">角色信息</div>
  <div class="panel-body">
   <div class="form-inline">
   <div class="navbar-form pull-left">
   <button  class="btn btn-primary btn-sm" id="btnRoleInfoAdd"><i class="fa fa-plus-square" aria-hidden="true"></i>&nbsp;新增</button>
   </div>
   <div class="navbar-form navbar-left pull-right">
					<div class="commonSearch">
                        <input id="roleInfoKeys" placeholder="输入角色编码/名称搜索" type="text">
                        <a href="javascript:;" id="btnRoleInfoSearch"></a>
                     </div>
					</div>
  </div>
  </div>
</div>
	<div class="panel panel-default">
	<div class="warpContrainer">
  <div class="panel-heading blue-title">角色信息列表</div>
  <div class="panel-body">
  <div>
<table class="table table-bordered table-hover commonTable" id="roleInfoTb">
<thead>
<tr><th>序号</th><th>角色编码</th><th>角色名称</th><th>角色描述<th>用户</th><th>权限</th><th>状态</th></tr>
</thead>
</table>
</div>
  </div>
</div>
</div>
		</div>
		<div class="tab-pane" id="roleInfoList">
		<div class="blue-title"><h5>列表信息</h5></div>
		<div class="roleTypeInfo">
		<div class="blue-skin-title"><h4><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户分类</h4></div>
		<div class="roleTypeMain">
			<ul class="nav nav-tabs tabGreen">
				<li class="active"><a href="#userInfoForOrg" data-toggle="tab" aria-expanded="true"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;按组织结构</a></li>
				<li ><a href="#roleInfoForRole" data-toggle="tab" aria-expanded="false"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;按角色</a></li>
			</ul>
			<div class="tab-content">
			<div class="tab-pane active" id="userInfoForOrg">
			<div class="LeftroleUser"><div class="blue-skin-title"><h5><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;事业部</h5>			
			</div><ul id="zTreeHrmCompanyInfo" class="ztree" style="-moz-user-select: none;"></ul></div>
            </div>

			<div class="tab-pane" id="roleInfoForRole"><div class="LeftroleUser"><div class="blue-skin-title"><h5><i class="fa fa-users" aria-hidden="true"></i>&nbsp;&nbsp;角色</h5></div>
			<ul id="zTreeHrmRoleInfo" class="ztree" style="-moz-user-select: none;"></ul>
			</div></div>
			</div>
		</div>
		</div>
		<div class="u_rList">
		<div>
		<table class="table  table-bordered table-hover" id="roleListTb">
		<thead>
		<tr><th>序号</th><th class="hide">id</th><th>角色名称</th><th>用户编码</th><th>用户名称</th><th>操作</th></tr>
		</thead>
		</table>
		</div>
		</div>
		</div>
		</div>
	</div>
				</div>
				</div>