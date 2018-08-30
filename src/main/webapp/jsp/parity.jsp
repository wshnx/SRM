<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div role="tabpanel" class="tab-pane" id="parity">
					<ul id="tabs-parityManager" class="nav nav-tabs nav-tabs-v6"
						role="tablist">
						<li role="presentation" class="active"><a
							href="#tabs-parity-analysis" id="tabs-demo6-1" role="tab"
							data-toggle="tab" aria-expanded="true">比价分析</a></li>
						<li role="presentation" class=""><a
							href="#tabs-parity-supplier" role="tab" id="tabs-demo6-2"
							data-toggle="tab" aria-expanded="false">选择供应商列表</a></li>
					</ul>
					<div id="tabsDemo6Content"
						class="tab-content tab-content-v6 col-md-12">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tabs-parity-analysis" aria-labelledby="tabs-parity-analysis">
							<nav>
								<div class="container-fluid">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="supplierState">
										<form class="form-inline">
											<div class="form-group has-success has-feedback">
												<label class="control-label" for="inputSuccess4">询价单号：</label>
												<input type="text" class="form-control" id="inputSuccess4"
													aria-describedby="inputSuccess4Status" value="201806190023">
											</div>
											<button class="btn ripple-infinite btn-raised btn-success">
												<div>
													<span><i class="fa fa-plus-circle"
														aria-hidden="true"></i>&nbsp;&nbsp;生成比价</span>
												</div>
											</button>
											<button class="btn ripple-infinite btn-round btn-warning">
												<div>
													<span><i class="fa fa-refresh" aria-hidden="true"></i>&nbsp;&nbsp;重置</span>
												</div>
											</button>
										</form>
									</div>
									<!-- /.navbar-collapse -->
								</div>
								<!-- /.container-fluid -->
							</nav>
							<hr />
							<div>

								<h4>
									<i class="fa fa-bars" aria-hidden="true"></i>&nbsp;询价单信息
								</h4>
							</div>

							<div>
								<table class="table unlinetable">
									<tr>
										<th>询价单号：</th>
										<td>201806190023</td>
										<th>询价主题：</th>
										<td>金杯电工询价单</td>
										<th>发布日期：</th>
										<td>2018-6-19</td>
										<th>结束日期：</th>
										<td>2018-7-15</td>
									</tr>
									<tr>
										<th>事业部：</th>
										<td>特缆事业部</td>
										<th>询价方式：</th>
										<td>公开</td>
										<th>结果公由方式：</th>
										<td>邮件通知</td>
									</tr>
								</table>
							</div>
							<hr />
							<div>
								<h4>
									<i class="fa fa-sort-amount-asc" aria-hidden="true"></i>&nbsp;比价信息
								</h4>
							</div>
							<div>
								<table class="table table-bordered pppadd linetb">
									<tr>

										<!--<th style="width:80px;">序号</th>
												<th>品名</th>
												<th>规格型号</th>
												<th>单位</th>
												<th style="width:80px;">项目</th>
												<th>金杯电工供应商1</th>
												<th>金杯电工供应商2</th>
												<th>金杯电工供应商3</th>-->
										<th>选择</th>
										<th style="width: 80px;">序号</th>
										<th>品名</th>
										<th>规格型号</th>
										<th>数量</th>
										<th>单位</th>
										<th>报价</th>
										<th>报价单位</th>
										<th>操作</th>
									</tr>
									<tr>
										<td><input type="checkbox" /></td>
										<td>1</td>
										<td>铜</td>
										<td>0.8</td>
										<td>150</td>
										<td>吨</td>
										<td>120.25</td>
										<td>金杯电工供应商1</td>
										<td><button class="btn btn-primary btn-xs">历史报价</button></td>
									</tr>
									<tr>
										<td><input type="checkbox" /></td>
										<td>2</td>
										<td>铜</td>
										<td>0.8</td>
										<td>150</td>
										<td>吨</td>
										<th>120.10</th>
										<td>金杯电工供应商2</td>
										<td><button class="btn btn-primary btn-xs">历史报价</button></td>
									</tr>
									<tr>
										<td><input type="checkbox" /></td>
										<td>3</td>
										<td>铜</td>
										<td>0.8</td>
										<td>150</td>
										<td>吨</td>
										<td>118.20</td>
										<td>金杯电工供应商3</td>
										<td><button class="btn btn-primary btn-xs">历史报价</button></td>
									</tr>
								</table>
							</div>
							<div style="text-align: center;">
								<button class="btn btn-primary">选择</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-primary">重置</button>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade"
							id="tabs-parity-supplier" aria-labelledby="tabs-parity-supplier">
							<form class="form-inline">
								<div class="form-group">
									<label for="parityKeys">请输入关键字查询：</label> <input type="text"
										class="form-control" id="parityKeys" placeholder="输入任意关键字查询即可">
									<a href="javascript:;" class="btnSearch"><i
										class="fa fa-search" aria-hidden="true"></i></a> <a
										href="javascript:;" class="btnSearch"><i
										class="fa fa-refresh" aria-hidden="true"></i></a>
								</div>
							</form>
							<hr />
							<div>
								<table class="table linetb">
									<tr>
										<th>选择</th>
										<th>序号</th>
										<th>询价单号</th>
										<th>事业部</th>
										<th>询价主题</th>
										<th>询价方式</th>
										<th>结果公布方式</th>
										<th>发布日期</th>
										<th>结束日期</th>
										<th>供应商</th>
										<th>流程状态</th>
										<th>操作</th>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td>201806190023</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商3</td>
										<td>待审核</td>
										<td><button class="btn btn-sm btn-warning">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2</td>
										<td>201806190024</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商1</td>
										<td>已审核</td>
										<td><button class="btn btn-sm btn-warning"
												disabled="disabled">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary" disabled="disabled">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>3</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商5</td>
										<td>已淘汰</td>
										<td><button class="btn btn-sm btn-warning"
												disabled="disabled">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary" disabled="disabled">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>4</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商3</td>
										<td>已审核</td>
										<td><button class="btn btn-sm btn-warning"
												disabled="disabled">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary" disabled="disabled">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>5</td>
										<td>201806190021</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商6</td>
										<td>待审核</td>
										<td><button class="btn btn-sm btn-warning">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>6</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商1</td>
										<td>待审核</td>
										<td><button class="btn btn-sm btn-warning">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>7</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商2</td>
										<td>待审核</td>
										<td><button class="btn btn-sm btn-warning">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>8</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商4</td>
										<td>待审核</td>
										<td><button class="btn btn-sm btn-warning">淘汰</button>&nbsp;
											<button class="btn btn-sm btn-primary">审核</button>&nbsp;
											<button class="btn btn-sm btn-info">详细</button></td>
									</tr>
								</table>
								<hr />
								<nav aria-label="" style="text-align: center;">
									<ul class="pagination">
										<li class="disabled"><a href="#" aria-label="Previous"><span
												aria-hidden="true">首页</span></a></li>
										<li class="active"><a href="#">1 <span
												class="sr-only">(current)</span></a></li>
										<li class=""><a href="#">2 <span class="sr-only"></span></a>
										</li>
										<li class=""><a href="#">3 <span class="sr-only"></span></a>
										</li>
										<li class=""><a href="#">4 <span class="sr-only"></span></a>
										</li>
										<li class=""><a href="#">5 <span class="sr-only"></span></a>
										</li>
										<li class="disabled"><a href="#" aria-label="Previous"><span
												aria-hidden="true">末页</span></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>