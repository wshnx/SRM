<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<div role="tabpanel" class="tab-pane" id="quote">
					<ul id="tabs-quoteList" class="nav nav-tabs nav-tabs-v6"
						role="tablist">
						<li role="presentation" class="active"><a
							href="#tabs-quoteManager" role="tab" data-toggle="tab"
							aria-expanded="true">供应商报价列表</a></li>
					</ul>
					<div id="tabs-quoteContent"
						class="tab-content tab-content-v6 col-md-12">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tabs-quoteManager" aria-labelledby="tabs-quoteManager">
							<form class="form-inline">
								<div class="form-group">
									<label for="quoteKeys">请输入关键字查询：</label> <input type="text"
										class="form-control" id="quoteKeys" placeholder="输入任意关键字查询即可">
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
										<th>最新报价</th>
										<th>询价主题</th>
										<th>报价次数</th>
										<th>发布日期</th>
										<th>报价日期</th>
										<th>结束日期</th>
										<th>供应商</th>
										<th>操作</th>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td>201806190023</td>
										<td>特缆事业部</td>
										<td>120.25</td>
										<td>金杯电工询价单</td>
										<td>1</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商1</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2</td>
										<td>201806190023</td>
										<td>特缆事业部</td>
										<td>120.10</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商2</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr style="font-weight: bold; color: red;">
										<td><input type="checkbox"></td>
										<td>3</td>
										<td>201806190023</td>
										<td>特缆事业部</td>
										<td style="background: #999;">118.20</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商3</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>4</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>120.22</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商1</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>5</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>130.05</td>
										<td>金杯电工询价单</td>
										<td>1</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商3</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr style="font-weight: bold; color: red;">
										<td><input type="checkbox"></td>
										<td>6</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td style="background: #999;">119.58</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商2</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>7</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>120.25</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商4</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>8</td>
										<td>201806190026</td>
										<td>特缆事业部</td>
										<td>120.25</td>
										<td>金杯电工询价单</td>
										<td>2</td>
										<td>2018-06-19</td>
										<td>2018-06-19</td>
										<td>2018-07-15</td>
										<td>金杯电工供应商5</td>
										<td><button class="btn btn-sm btn-primary">报价历史</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button class="btn btn-sm btn-primary">详细</button></td>
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