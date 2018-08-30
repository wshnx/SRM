<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<div id="supplierInfo" role="tabpanel" class="tab-pane">
					<div class="col-md-12 tabs-area"
						style="height: 100%; background: white;">
						<ul class="nav nav-tabs nav-tabs-v1" role="tablist">
							<li role="presentation" class="active"><a
								href="#supplier-baseInfo" id="tabs-baseInfo" role="tab"
								data-toggle="tab" aria-expanded="false">基本信息</a></li>
							<li role="presentation" class=""><a href="#supplier-finance"
								role="tab" id="tabs-finance" data-toggle="tab"
								aria-expanded="false">财务信息</a></li>
							<li role="presentation" class=""><a
								href="#supplier-employee" id="tabs-employee" role="tab"
								data-toggle="tab" aria-expanded="false">人员情况</a></li>
							<li role="presentation" class=""><a href="#supplier-product"
								role="tab" id="tabs-product" data-toggle="tab"
								aria-expanded="true">产品情况</a></li>
							<li role="presentation" class=""><a
								href="#supplier-material" role="tab" id="tabs-material"
								data-toggle="tab" aria-expanded="true">主要原材料供应商</a></li>
							<li role="presentation" class=""><a
								href="#supplier-qualification" role="tab"
								id="tabs-qualification" data-toggle="tab" aria-expanded="true">资质文件管理</a>
							</li>
						</ul>
						<div id="tabsSupplierContent"
							class="tab-content tab-content-v1 col-md-12"
							style="height: 100%;">
							<div role="tabpanel" class="tab-pane fade  active in"
								id="supplier-baseInfo" aria-labelledby="supplier-baseInfo"
								style="height: 100%;">
								<div>
									<h4>
										<i class="fa fa-bars" aria-hidden="true"></i>&nbsp;注册信息
									</h4>
									<hr />
								</div>
								<div>
									<div class="regInfo">
										<table class="table unlinetable">
											<tr>
												<th>企业全称：</th>
												<td colspan="3"><input type="text" class="form-control"></td>
												<th>企业法人：</th>
												<td><input type="text" class="form-control" /></td>
												<th>注册资金：</th>
												<td><input type="text" class="form-control"></td>
											</tr>
											<tr>
												<th>企业类型：</th>
												<td colspan="3"><select class="form-control">
														<option>请选择</option>
														<option>合资</option>
														<option>独资</option>
														<option>国有</option>
														<option>私营</option>
														<option>股份制</option>
														<option>全民所有制</option>
												</select></td>
												<th>企业性质：</th>
												<td><select class="form-control">
														<option>请选择</option>
														<option>国有企业</option>
														<option>集体所有制企业</option>
														<option>联营企业</option>
														<option>合资企业</option>
														<option>民营企业</option>
														<option>其它企业</option>
												</select></td>
												<th>主供品类：</th>
												<td><input type="text" class="form-control"></td>
											</tr>
											<tr>
												<th>邮编：</th>
												<td><input type="text" class="form-control"></td>
												<th>成立年份：</th>
												<td><input type="text" class="form-control" /></td>
											</tr>
											<tr>
												<th>注册地址：</th>
												<td colspan="7"><input type="text" class="form-control"></td>
											</tr>
											<tr>
												<th>公司地址：</th>
												<td colspan="7"><input type="text" class="form-control"></td>
											</tr>
											<tr>
												<th>厂房面积(m³)：</th>
												<td><input type="text" class="form-control"></td>
												<th>建筑面积(m³)：</th>
												<td><input type="text" class="form-control"></td>
											</tr>
										</table>
									</div>
									<div>
										<h4>
											<i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;公司简介
										</h4>
										<hr />
									</div>
									<br />
									<div>
										<script id="editor" type="text/plain"
											style="width: 100%; height: 400px;"></script>
									</div>
									<div>
										<h4>
											<i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;联系方式
										</h4>
										<hr />
									</div>
									<div>
										<table class="table unlinetable">
											<tr>
												<th>公司电话：</th>
												<td><input type="text" class="form-control" /></td>
												<th>传真：</th>
												<td><input type="text" class="form-control" /></td>
												<th>公司网站：</th>
												<td><input type="text" class="form-control" /></td>
											</tr>
											<tr>
												<th>联系人：</th>
												<td><input type="text" class="form-control" /></td>
												<th>联系人手机：</th>
												<td><input type="text" class="form-control" /></td>
												<th>联系人邮箱：</th>
												<td><input type="text" class="form-control" /></td>
											</tr>
											<tr>
												<th>是否有亲戚在金杯：</th>
												<td><select class="form-control">
														<option>请选择</option>
														<option>否</option>
														<option>是</option>
												</select></td>
											</tr>
										</table>
									</div>
									<div class="baseInfobutton">
										<button class="btn btn-primary">保存</button>
										<button class="btn btn-primary">重置</button>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="supplier-finance"
								aria-labelledby="supplier-finance" style="height: 100%;">
								<div style="height: 100%;">
									<p>注：财务信息项目需要供应部确认内容</p>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="supplier-employee"
								aria-labelledby="supplier-employee">
								<div>
									<div>
										<h4>
											<i class="fa fa-user" aria-hidden="true"></i>&nbsp;人员基本情况
										</h4>
										<hr />
									</div>
									<div>
										<form class="form-inline">
											<div class="form-group telName">
												<label for="goldCupTech">工程技术人员：</label> <input type="text"
													class="form-control" id="goldCupTech">
											</div>
											<div class="form-group">
												<label for="goldCupEmployee">人，占</label> <input type="email"
													class="form-control" id="goldCupEmployee">%
											</div>
										</form>
										<form class="form-inline">
											<div class="form-group telName">
												<label for="exampleInputName2">管理人员：</label> <input
													type="text" class="form-control" id="exampleInputName2">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2">人，占</label> <input
													type="email" class="form-control" id="exampleInputEmail2">%
											</div>
											<div class="form-group">
												<label for="goldCupMaster">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负责人：</label>
												<input type="email" class="form-control" id="goldCupMaster">
											</div>
											<div class="form-group">
												<label for="goldCupConcater">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系方式：</label>
												<input type="email" class="form-control"
													id="goldCupConcater">
											</div>
										</form>

									</div>
									<br /> <br />
									<div>
										<h4>
											<i class="fa fa-user-circle" aria-hidden="true"></i>&nbsp;人员文化程度
										</h4>
										<hr />
									</div>
									<div>
										<form class="form-inline">
											<div class="form-group telName">
												<label for="exampleInputName2">大专以上：</label> <input
													type="text" class="form-control" id="exampleInputName2">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2">人，占</label> <input
													type="email" class="form-control" id="exampleInputEmail2">%
											</div>
									</div>
									<div style="margin-bottom: 200px;">
										<button class="btn btn-primary">保存</button>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="supplier-product"
								aria-labelledby="supplier-product">
								<nav class="navbar navbar-default">
									<ul class="nav navbar-nav product">
										<li><a href="#"><i class="fa fa-plus-circle"
												aria-hidden="true"></i>&nbsp;添加</a></li>
										<li><a href="#"><i class="fa fa-times-circle"
												aria-hidden="true"></i>&nbsp;删除</a></li>
									</ul>
								</nav>
								<div style="min-height: 400px;">
									<table class="table table-bordered linetb">
										<tr>
											<th>选择</th>
											<th>序号</th>
											<th>产品名称</th>
											<th>年平均销售额(万元)</th>
											<th>产品介绍</th>
											<th>天供货能力</th>
											<th>产品主要技术参数</th>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>1</td>
											<td>护套胶</td>
											<td>1200</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>2</td>
											<td>绝缘胶</td>
											<td>2600</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>3</td>
											<td>护套胶</td>
											<td>1200</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>4</td>
											<td>绝缘胶</td>
											<td>2600</td>
											<td>产品介绍</td>
											<td>100吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>5</td>
											<td>护套胶</td>
											<td>1200</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>6</td>
											<td>绝缘胶</td>
											<td>2600</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>7</td>
											<td>护套胶</td>
											<td>1200</td>
											<td>产品介绍</td>
											<td>120吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>8</td>
											<td>绝缘胶</td>
											<td>2600</td>
											<td>产品介绍</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
									</table>
								</div>
								<div class="text-center">
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
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="supplier-material"
								aria-labelledby="supplier-material">
								<nav class="navbar navbar-default">
									<ul class="nav navbar-nav customer">
										<li><a href="#"><i class="fa fa-plus-circle"
												aria-hidden="true"></i>&nbsp;添加</a></li>
										<li><a href="#"><i class="fa fa-times-circle"
												aria-hidden="true"></i>&nbsp;删除</a></li>
									</ul>
								</nav>
								<div style="min-height: 400px;">
									<table class="table table-bordered linetb">
										<tr>
											<th>选择</th>
											<th>序号</th>
											<th>产品名称</th>
											<th>产品介绍</th>
											<th>占年平均销售额(%)</th>
											<th>主要客户</th>
											<th>天供货能力</th>
											<th>产品主要技术参数</th>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>1</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户1</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>2</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户2</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>3</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户3</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>4</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户4</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>5</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户5</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>6</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户6</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>7</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户7</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>8</td>
											<td>绝缘胶</td>
											<td>绝缘胶的产品介绍</td>
											<td>8</td>
											<td>金杯电工客户8</td>
											<td>50吨</td>
											<td>1号、2号、3号/红、绿、蓝</td>
										</tr>
									</table>
								</div>
								<div class="text-center">
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
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade"
								id="supplier-qualification"
								aria-labelledby="supplier-qualification">
								<p>
								<h4>资质文件上传注意事项</h4>
								</p>
								<p>1.资质文件必须包含 ...</p>
								<p>2.资质文件必须在有效期内</p>
								<p>3.资质文件必须每一年更新一次</p>
								<p>4.资质文件不要单个上传，请将所有资质文件压缩为一个rar格式然后上传</p>
								<div style="margin: 50px 20px;">
									<div class="htmleaf-container"
										style="width: 400px; height: 300px;">
										<div class="container kv-main">
											<form enctype="multipart/form-data">
												<label>请选择需要上传的资质文件压缩包</label> <input id="file-zh"
													name="files" type="file" multiple>
												<p class="help-block">仅支持rar格式文件</p>
											</form>
											<hr>
											<br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>