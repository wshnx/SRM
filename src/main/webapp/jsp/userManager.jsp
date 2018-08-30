<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="sysUserManager" role="tabpanel" class="tab-pane">
	<div class="pull-left left-tree">
		<div class="companyTitle blue-title">
			<span class="fa fa-home"></span>&nbsp;&nbsp;事业部信息
		</div>
		<ul id="zTreeHrmSubCompany" class="ztree"></ul>
	</div>
	<div class="rightContent">
		<div class="userMangerInfo">
			<div class="blue-title">
				<i class="fa fa-list" aria-hidden="true"></i>&nbsp;用户列表
			</div>
			<div>
				<div class="navbar-form pull-right rightMargin">
					<div class="titleContent">查询条件</div>
					<div class="commonSearch">
						<input type="text" id="employeeCondition"
							placeholder="输入员工编码、姓名查询"> <a href="javascript:;"
							id="btnEmployeeSearch"></a>
					</div>
				</div>
			</div>
			<div>
				<table class="table table-bordered table-hover commonTable"	id="userManagerTb">
					<thead>
						<tr>
							<th>序号</th>
							<th>编号</th>
							<th>姓名</th>
							<th>部门</th>
							<th>状态</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>