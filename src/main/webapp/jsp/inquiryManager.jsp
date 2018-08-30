<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<div id="inquiryManager" role="tabpanel" class="tab-pane">
					<ul id="tabs-inquiry-menu" class="nav nav-tabs nav-tabs-v6"
						role="tablist">
						<li role="presentation" class="active"><a
							href="#tabs-inquiry" id="tabs-inquiry-create" role="tab"
							data-toggle="tab" aria-expanded="true">创建询价</a></li>
						<li role="presentation" class=""><a href="#tabs-inquiry-list"
							role="tab" id="tabs-inquiry-infoList" data-toggle="tab"
							aria-expanded="false">询价列表</a></li>
					</ul>
					<div id="tabs-inquiryContent"
						class="tab-content tab-content-v6 col-md-12">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tabs-inquiry" aria-labelledby="tabs-inquiry">
							<nav>
								<div class="container-fluid">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="inquiry-Manager">
										<ul class="nav navbar-nav">
											<li>
												<button class="btn ripple-infinite btn-raised btn-success">
													<div>
														<span><i class="fa fa-plus-circle"
															aria-hidden="true"></i>&nbsp;&nbsp;新增</span>
													</div>
												</button>
											</li>
											<li>
												<button class="btn ripple-infinite btn-gradient btn-info">
													<div>
														<span><i class="fa fa-pie-chart" aria-hidden="true"></i>&nbsp;&nbsp;草稿箱</span>
													</div>
												</button>
											</li>
											<li>
												<button class="btn ripple-infinite btn-round btn-warning">
													<div>
														<span><i class="fa fa-recycle" aria-hidden="true"></i>&nbsp;&nbsp;回收站</span>
													</div>
												</button>
											</li>
										</ul>
									</div>
									<!-- /.navbar-collapse -->
								</div>
								<!-- /.container-fluid -->
							</nav>

							<div>
								<table class="table unlinetable">
									<tr>
										<th>标题：</th>
										<td colspan="5"><input type="text" class="form-control"></td>
										<th>询价单号：</th>
										<td><input type="text" class="form-control"
											readonly="readonly"></td>
									</tr>
									<tr>
										<th>事业部：</th>
										<td><select class="form-control">
												<option>请选择</option>
												<option>总部</option>
												<option>特缆事业部</option>
												<option>衡阳金杯事业部</option>
										</select></td>
										<th>询价方式：</th>
										<td>
											<div class="form-animate-radio">
												<label class="radio"> <input id="radio1"
													type="radio" name="radios"> <span class="outer">
														<span class="inner"></span>
												</span> 公开
												</label> <label class="radio"> <input id="radio2"
													type="radio" name="radios"> <span class="outer">
														<span class="inner"></span>
												</span> 选择供应商
												</label>
											</div>
										</td>
									</tr>
									<tr>
										<th>品类：</th>
										<td><select class="form-control pType">
												<option>请选择</option>
												<option>原材料</option>
												<option>塑料</option>
												<option>铜</option>
										</select></td>
										<th>名称：</th>
										<td><input type="text" class="form-control uname"></td>
										<th>规格：</th>
										<td><input type="text" class="form-control ustd"></td>
									</tr>
									<tr>
										<th>报价截止时间</th>
										<td>
											<div class="input-group date form_date" data-date=""
												data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
												data-link-format="yyyy-mm-dd">
												<input class="form-control" size="16" type="text" value=""
													readonly> <span class="input-group-addon"><span
													class="glyphicon glyphicon-remove"></span></span> <span
													class="input-group-addon"><span
													class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</td>
										<th>结果公布方式：</th>
										<td><select class="form-control">
												<option>请选择</option>
												<option>电话通知</option>
												<option>邮件通知</option>
												<option>其它方式</option>
										</select></td>
										<td></td>
										<td></td>
										<td><button class="btn btn-primary btn_add">增加</button></td>
									</tr>
								</table>
							</div>
							<div>
								<table class="table table-bordered pppadd linetb">
									<tr>
										<th style="width: 80px;">序号</th>
										<th>品类</th>
										<th>名称</th>
										<th>规格</th>
										<th>操作</th>
									</tr>
									<tr>
										<td>1</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
							<div>
								<script id="editorInquiry" type="text/plain"
									style="width: 100%; height: 300px;"></script>
							</div>
							<div>
								<button class="btn btn-primary">保存</button>
								<button class="btn btn-primary">提交</button>
								<button class="btn btn-primary">重置</button>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tabs-inquiry-list"
							aria-labelledby="tabs-inquiry-list">
							<form class="form-inline">
								<div class="form-group">
									<label for="inquiryKeys">请输入关键字查询：</label> <input type="text"
										class="form-control" id="inquiryKeys"
										placeholder="输入任意关键字查询即可"> <a href="javascript:;"
										class="btnSearch"><i class="fa fa-search"
										aria-hidden="true"></i></a> <a href="javascript:;"
										class="btnSearch"><i class="fa fa-refresh"
										aria-hidden="true"></i></a>
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
										<th>品类</th>
										<th>名称</th>
										<th>数量</th>
										<th>单位</th>
										<th>规格</th>
										<th>询价主题</th>
										<th>询价方式</th>
										<th>结果公布方式</th>
										<th>发布日期</th>
										<th>结束日期</th>
										<th>流程状态</th>
										<th>操作</th>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td>201806190023</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>120</td>
										<td>吨</td>
										<td>0.8</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>已发布</td>
										<td><button class="btn btn-sm btn-primary">撤回</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2</td>
										<td>201806190024</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铝</td>
										<td>100</td>
										<td>吨</td>
										<td>0.8</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>3</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>150</td>
										<td>吨</td>
										<td>0.6</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>4</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>180</td>
										<td>吨</td>
										<td>0.9</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>已发布</td>
										<td><button class="btn btn-sm btn-primary">撤回</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>5</td>
										<td>201806190021</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>150</td>
										<td>吨</td>
										<td>0.7</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>6</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>150</td>
										<td>吨</td>
										<td>0.6</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>7</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>150</td>
										<td>吨</td>
										<td>0.6</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>8</td>
										<td>201806190025</td>
										<td>特缆事业部</td>
										<td>原材料</td>
										<td>铜</td>
										<td>150</td>
										<td>吨</td>
										<td>0.6</td>
										<td>金杯电工询价单</td>
										<td>公开</td>
										<td>邮件通知</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>待修改</td>
										<td><button class="btn btn-sm btn-warning">修改</button></td>
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