/**
 * 项目通用事件前端处理脚本
 * 创建人：贺年喜
 * 创建日期：2018-08-09
 * 功能用途：前项目中应用到的事件作通用性处理，提高代码的灵活性和扩展性
 */
;(function($){
  'use strict'
	$.extend($.fn,{
		clickPlugin : function(option){	
			var settings = {
					url : '',//提交url地址
					self : this,//操作对象本身
					event : 'click',//注册事件，默认单击事件
					contentType :'application/json; charset=utf-8',
					beforEvent : function(){//AOP前置事件，用于作校验或其它一些相关操作，默认为true
						return true;
					},
					params : function(){//提交参数，默认参数为空
						return {};
					},
					onLoadDone : function(response){//执行主方法
						
					},
					afterEvent :function(){//AOP后置方法
						
					},
					isquest : function(){//是否提交请求
						return true;
					},
					getUrl : function(){//多个请求方式根据应用场景区分。
						return this.url;
					},
					isAjax : true,//用于判断是否需要ajax提交请求,
					ev : null
			},
			opt = $.extend({},settings,option),
			Event = function(){
				this.option = opt || {};
				if(this.option.url === '' && this.option.isquest() === true){
					return;
				}
				if(this.option.self.selector.length >1){
					this.listener();
				}				
			};
			Event.prototype = {
					constructor : Event,
					listener : function(){
						var option = this.option,event = option.event,_this = this,self = option.self;
						$(document).on(event,self.selector,function(e){
							if(e) e.preventDefault();
							option.self = $(this);
							option.ev = e;
							_this.load();
						});
					},
					load : function(){
						var option = this.option,e = option.ev,
						beforEvent = option.beforEvent,self = option.self,isquest = option.isquest.call(self,e);					
						if(beforEvent.call(self,option)){
							if(isquest){
								var urlEvent = option.getUrl.bind(option);
								var param = option.params.call(self,e) , url = urlEvent(),contentType = option.contentType,
								data = contentType === 'application/json; charset=utf-8' ? JSON.stringify(param) : param;			
								$.ajaxPost({
				                  url : url,
				                  data : data,
				                  contentType : contentType
				                },function(response){
				                	option.onLoadDone.call(self,response);
				                });
							}
							else{
								option.onLoadDone.call(self,e);
								
							}
						}
						return this;
					}					
			}
			new Event();			
		}
	});
})(jQuery);

