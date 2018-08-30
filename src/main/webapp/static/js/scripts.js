/*
 * 全局通用前端脚本；
 * 重构日期：2018-08-09
 * 重建人：贺年喜
 * 修正日期：2018-08-09
 * 说明：正式版本
 * 
 */
;
(function($) {
	'use strict'
	Function.prototype.before = function(fn) {
		var _self = this;// 先保存当前函数引用
		// 标准校验，确保参数输入正确。
		if (arguments.length != 1 || typeof fn != 'function') {
			return false;
		}
		return function() {// 返回包含原函数和新函数的“代理”函数
			if (fn.apply(this, arguments)) {// 执行传入的参数方法，且保证this不被劫持,同时新函数接受的参数也会被原封不动地传入原函数。
				return _self.apply(this, arguments);// 执行原函数并返回原函数执行结果。
			}
		}
	}
	Function.prototype.after = function(fn) {
		var _self = this;// 先保存当前函数引用
		// 标准校验，确保参数输入正确。
		if (arguments.length != 1 || typeof fn != 'function') {
			return false;
		}
		return function() {
			var ret = _self.apply(this, arguments);
			fn.apply(this.arguments);
			return ret;
		}
	}
	var goldCup = (function() {
		return function(elm, opt) {
			this.element = elm;
			var settings = {
					async:true,
					type:'post',
					dataType:'json',
					data:{},
					url:'',
					contentType:'application/x-www-form-urlencoded',
					title : '',
					size : 'modal-dm',
					isSave : true,
					btnTitle :'<i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;确定',
					save : '<button type="button" class="btn btn-success btnSave btn-sm"><i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;确定</button>',
					close : '<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal"><i class="fa fa-close" aria-hidden="true"></i>&nbsp;关闭</button>',
					self :'',
					fn : function(){},
					cur : 1//模态窗体状态标识，1表示新增，2表示修改，3表示删除
			};
			this.options = $.extend({},settings,opt);
		}
	}());
	goldCup.prototype = {
			ajax:function(fn){
				var opt = this.options;
				$.ajax({
					url:opt.url,
					data:opt.data,
					dataType:opt.dataType,
					type:opt.type,
					async:opt.async,
					contentType:opt.contentType,
					success:function(result){
						fn(result);
					}
				});
			},
			madal:function(){
				var element = this.element.selector,self = $(element),title = self.find('.modal-title').attr('id',element.substring(1)+'Label'),
				option = this.options,dialog = self.find('#modalDialog'),footer = self.find('.modal-footer').empty().addClass('unline');
				title.html(option.title);
				dialog.addClass(option.size);
				footer.append(option.isSave ? ([option.save,option.close]).join(''):option.colse);
				self.draggable().attr('data-Type',option.cur);
				self.modal({
					backdrop : 'static',
					keyboard : false
				});		
			}
	};
	jQuery.extend({
		regx : function(r, s) {
			if (r == null || $.trim(r).length == 0) {
				return false;
			}
			var patrn = new RegExp(r);
			if (patrn.test(s))
				return true;
			return false;
		},
		isArray : function(obj){
			return obj && typeof obj==='object' &&
		      Array == obj.constructor;
		},
		ajaxPost : function(option, fn) {
			var msg = new goldCup(this, option);
			msg.ajax(fn);
		},
		customzTreeIcon:function(list,type){
			var p = type || 1,img = ['men','dept','card','role','asterisk_yellow'];
			$.each(list,function(){
			  var self = this,level = self.tlevel||1,pid = self.pid;
			  if(pid === 0){
				  	this['iconOpen']=p == 1 ?'static/img/1_open.png':'static/img/cog_go.png';
					this['iconClose']=p == 1 ?'static/img/1_close.png':'static/img/cog.png';
					this['icon'] = p == 1 ?'static/img/1_open.png':'static/img/cog_go.png';
			  }
			  else{
				  var this_img = img[level-1];
                  self['icon'] = 'static/img/'+this_img+'.png';
			  }		  
			});
		},
		triggerEvent : function(){
			return {
				 clientList : [],
				   listen : function(key,fn){
					   if(!this.clientList[key]){
						   this.clientList[key] = [];
					   }
					   this.clientList[key].push(fn);
				   },
				   trigger : function(){
					   var key = Array.prototype.shift.call(arguments),
					   fns = this.clientList[key];
					   if(!fns || fns.length === 0){
						   return false;
					   }
					   for(var i = 0,fn;fn = fns[i++];){
						   fn.apply(this,arguments);
					   }
				   }
			}
		},
		regEvent : function(obj){
			var event = $.triggerEvent();
			for(var i in event){
				obj[i] = event[i];
			}
		},
		//通用模态框生成方法
		model : function(option){
			var modal = $.trim(option.id) || '',id = modal.substring(0,1) === '#' ? modal.substring(1) : modal,cur = option.cur,
					$id = $(modal),$modal = $('#commonModal'),fun = option.fn,btnTitle = option.btnTitle,title = option.title;
			if($id.length < 1){
				$modal.clone(true).attr({'id':id,'aria-labelledby' : id + 'Label'}).insertAfter($modal);
			}
			$id.showModal({
				title :title,
				fn : fun,
				cur : option.cur,
				self :option.self
			});
			$(modal+' .btnSave').html(btnTitle);
		}
	});
	$.fn.extend({
		setColor : function(color,state){
			if(arguments.length == 1){
				$(this).css({'border':'1px solid '+ color,'color' : '#555'});
			}
			else if(arguments.length == 2 && state === true){
				$(this).css({'border':'1px solid '+ color,'color' : color});
			}
			return this;
		},
		loadzTree:function(zTreeJson,ikey,ename,fn,state){
			state = state||0;
			var self = $(this);
			var setting = {
					callback : {
						beforeClick :state==0?function(){}:$.fn.beforeClick,
						onClick : fn
					},
					data : {
						simpleData : {
							enable : true,
							idKey : ikey,
							pIdKey : "pid",
							rootPId : "0"
						},
						key : {
							name : ename
						}
					}
				};
				$.fn.zTree.init(self, setting, zTreeJson);
		},
		beforeClick:function(treeid,node){
			return !node.isParent;
		},
		showModal : function(option){
			var msg = new goldCup(this,option),fn = option.fn;
			if(fn != null){
				fn(msg.options);
			}
			msg.madal();
		}
		
	});
})(jQuery);