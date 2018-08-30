/**
 *  * 分页插件
 * 创建人：贺年喜
 * 重建日期：2018-08-16
 * 适用范围：适应用于Mybatis+pageHelper环境下的查询分页功能
 * 
 */
;(function($){
	'use strict'
	$.extend($.fn,{
		/*
		 * 参数说明：
		 * methodName ： 调用后台控制器方法名
		 * pg : 页码，即显示第几页内容
		 * condition : 查询条件
		 * pars ： 对象操作参数，如：操作方式：精确查询还是模糊查询，字段说明,字段与段之间对应关系，如每页行数，是否第一列显示序号等
		 * */
	   paging : function(methodName,pg,condition,pars){
		   if(arguments.length<3){
			   throw new Error('参数输入不正确！！');
		   }
		   var self = $(this),param = pars || {},triggerEvent = {},liEvent,
		   Default = {
				   row : 8,//.每页显示行数，默认8行
				   isNum : true,//是否显示第一列序号，
				   title : [],//列标题
			       type : 0,//默认操作类型
			       httpType : 'post',//参数传递类型，默认为Post
			       fn : function(){},
			       pageNum : 0
		   },
		   opt = $.extend({},Default,pars),
			option = {
					method : methodName,
					data : {'pg' : pg || 1,'condition' : condition,'type' : opt['type']},
					title :opt['title'],
					row : opt['row'] || 8,
					isNum : opt['isNum'],
					numNo : 0,
					list : {},
					self :{},
					httpType : opt['httpType'],
					fn : opt['fn'],
					pageNum : opt['pageNum']
				};
		   $.regEvent(triggerEvent);
			$.ajax({
				url : option.method,
				type : option.httpType,
				data : option.data,
				success : function(response){
					var list = response.umap.list || {},fn = option.fn;
					option['list'] = list;
					option['self'] = self;
					fn(option);
					if(list.hasOwnProperty('list') && list.list.length>0){
					triggerEvent.trigger('pagelist',option);
					}
				}
			});
			//动态生左侧第X页,共X页,合计共X条记录信息
			var leftList = (function(){
				triggerEvent.listen('pagelist',function(data){
					leftList.buildList(data);
				});
				return {
					buildList :function(data){
						var className = option.method || 'paging',list = data.list || {},leftListDiv = $('<div/>',{'class' : 'pull-left'}),
						arr = ['<p>当前第'],self = data.self.parent().parent(),leftDiv = className + 'listDiv';
						arr.push(list.pageNum,'页,共',list.pages,'页,合计共',list.total,'条记录</p>');
						if(!self.children().hasClass(leftDiv)){							
							self.append(leftListDiv.addClass(leftDiv));
						}						
						$('.' + leftDiv).empty().append(arr.join(''));
					}
				}
			})();
			//动态生成右侧页码选择条
			var rightList = (function(){
				triggerEvent.listen('pagelist',function(data){
					rightList.buildList(data);
				});
				return {
					buildList :function(data){
						var className = option.method || 'paging',pagerList = className + 'Nav',list = data.list || {},
						ul = $('<ul/>',{'class' : 'pagination'}),self = data.self.parent().parent(),
						nav = $('<nav/>',{'aria-label' : 'Page navigation','html' : ul}),
						rightDivList = $('<div/>',{'class' : 'pull-right','html' : nav}),
						firstLi = buildElement('首页').addClass('firstLi'),preLi = buildElement("&laquo;").addClass('preLi'),pagePre = data.list.pageNum-1,
						nextPage = buildElement("&raquo;").addClass('nextPage'),lastLi = buildElement("末页").addClass('lastLi'),
						list = data.list || {},nums = list.navigatepageNums,nextNum = list.pageNum+1,lastNum = list.pages;						
						if(!self.children().hasClass(pagerList)){
							self.append(rightDivList.addClass(pagerList));
						}
						var _this = $('.'+pagerList+'  .pagination');
						_this.empty().append(firstLi,preLi);
						$.each(nums,function(){
							var numLi = buildElement(this).addClass('numLi');
							_this.append(numLi);
							if(this == data.list.pageNum){
								numLi.addClass('active');
							}
						});
						_this.append(nextPage,lastLi);
						var li = _this.find('li');
						selectClickEvent(li,data);
					}
				}
			})();
			//---------------导航页码单击事件-------------------
			function selectClickEvent(li,data){
				li.each(function(){
					var self = $(this),type = self.prop('class').indexOf('firstLi') >= 0 || self.prop('class').indexOf('preLi') >= 0 ? 0 : 1,
							className = self.prop('class'),list = data.list,
							hasPage = type == 0 ? list.hasPreviousPage : list.hasNextPage;
							if(!hasPage && self.prop('class').indexOf('numLi')<0){
								self.addClass('disabled');
							}
							self.click(function(){
								if(self.prop('class').indexOf('disabled')>=0)
								{
									return false;
								}
								clickEvent.call(self,data);						
							});
				});
			}
			function clickEvent(data){
				var list = data.list,pagePre = list.pageNum-1,pageNext = list.pageNum + 1,pageLast = list.pages,condition = data.data.condition,
				num = this.prop('class').indexOf('firstLi')>=0 ? 1 : 
					this.prop('class').indexOf('preLi')>=0  ? pagePre : 
						this.prop('class').indexOf('nextPage')>=0 ? pageNext : 
							this.prop('class').indexOf('lastLi')>=0 ? pageLast : this.find('a').html()|| 1;
							if(num === list.pageNum){
								return false;
							}
							data.pageNum = num;
							pager(data);
			}
			function pager(opt){
				var method = opt.method,condition = opt.data.condition,type = opt.data.type || 1,title = opt.title || [],self = opt.self,num = opt.pageNum;
				self.paging(method,num,condition,{fn : opt.fn,pageNum : num});
			}
			function buildElement(content){
				var a = $('<a/>',{'href' : '#','html' : content});
				return $('<li/>',{'html' : a })
			}		
	   }
	});
})(jQuery);