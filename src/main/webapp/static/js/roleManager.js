/**
 * 
 */
;(function($){
	'use strict'
	var roleManager = (function(){
		//对象选择器
		var Selector = {
				btn : '#btnRoleInfoAdd',
				model :'#roleManagerModal',
				body : '.modal-body',
				roleMain : '.roleInfoMain',
				save : '.btnSave',
				text : 'input[type="text"]:not([id="roleRemark"])',
				table :'#roleInfoTb',
				menu : '.sysRoleManager',
				roleKey : '#roleInfoKeys',
				upbtn : '#roleInfoTb  td .roleState',
				td : '#roleInfoTb tr:gt(0) td'
		},
		//错误 提示颜色
		color = '#f35757',curr = {},
		//提示类别
		info = {'roleCode' : '角色编码','roleName' : '角色名称'},
		//
		Content = {
				add : '<i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;角色新增',
				update :'<i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;角色修改',
				modalbody : '<div class="roleInfoMain">\
					  <div class="form-inline">\
				    <label for="txtRoleCode">角色编码：</label>\
				    <input type="text" class="form-control" id="roleCode" placeholder="角色编码"><p></p>\
				  </div><div class="form-inline">\
					    <label for="txtRoleName">角色名称：</label>\
					    <input type="text" class="form-control" id="roleName" placeholder="角色名称"><p></p>\
					  </div><div class="form-inline"><label for="txtRoleRemark">角色备注：</label>\
					    <input type="text" class="form-control" id="roleRemark" placeholder="角色备注">\
					  </div></div>',
				btnRolesUser : '<button class="btn btn-info btn-sm btnRolesUser commonSmbtn"><i class="fa fa-user-o" aria-hidden="true"></i></button>',
				btnRolePermission : '<button class="btn btn-info btn-sm btnRolePermission commonSmbtn"><i class="fa fa-gears" aria-hidden="true"></i></button>',
				className : {
					primary : ['btn btn-primary btn-sm roleState','启用'],
					danger : ['btn btn-danger btn-sm roleState','禁用']
				}
		},
		Url = {
				url : 'addRoleManager,updateRoleManager',
				pageUrl : 'loadRoleInfo',
				updateUrl : 'updateRole'
		},
		//1.单击角色管理菜单响应事件
		sysEvent = {
			isquest : function() {
				return false;
			},
			onLoadDone : function() {
				initEvent(this);
			}					
		},
		//2.单击角色新增按钮，以及双击角色列表响应模态框事件
		addEvent = {
				isquest : function(){
					return false;
				},
				event : 'click dblclick',
				onLoadDone : function(e){
					var modal = Selector.model,title = Content.add,cur = 1;
					if(this.prop('id') !='btnRoleInfoAdd'){
						title = Content.update;
						cur = 2;
					}
					if((e.type == 'click' && cur == 1) || (e.type == 'dblclick' && cur == 2)){
						$.model({id :modal,title : title,fn : roleModalFunc,cur : cur,self : this});
					}					
				}
		},
		//3.角色修改保存和新建保存事件
		saveEvent = {
				url : Url.url,
				getUrl : getUrlString,
				beforEvent :saveBeforEvent.before(beforCheck),
				onLoadDone : function(response){
					var code = response.code;
					if(code == 100){
						$(Selector.roleMain).find('input[type="text"]').val('');
						initEvent(this);
						$(Selector.model).modal('hide');
					}
				},
				params : function(e){
					var text = getText(),data = {},cur = $(Selector.model).attr('data-Type') || 1 ;
					text.each(function(){
						var value = $.trim(this.value);
						if(cur ==1){
							data[this.id] = value;
						}
						else{
							if(curr[this.id] != value){
								data[this.id] = value;
							}
						}
						
					});
					if(cur == 2 && !$.isEmptyObject(data)){
						data['roleCode'] = $.trim($('#roleCode').val());
					}
					return data;
				}				
		},
		//角色状态修改
		updateState = {
				url : Url.updateUrl,
				params : function(e){
					var roleCode = this.parent().parent().find('td:eq(1)').text(),
					isDel = this.prop('class').indexOf('btn-danger')>=0;
					return {'roleCode' : $.trim(roleCode),'del' : isDel};
				},
				onLoadDone : function(e){
					if(e.code == 100){
						initEvent(this);
					}
				}				
		},
		textClickEvent = {
				url : 'checkRole',
				event : 'focusin focusout input',
				isquest : textRequest,
				onLoadDone : textEvent,
				beforEvent : textBeforEvent,	
				params : function(e){
					var data = {};
					if(e.type == 'focusout'){						
						 data[this.prop('id')] = $.trim(this.val());
					}
					return data;
				}		
		},
		roleUserEvent = {
				isquest :function(){
					return false;
				},
				onLoadDone : function(){
					console.info(this);
				}
		};
		function initEvent(self){
			var className = self.prop('class') || '',roleKey = $(Selector.roleKey),load = Url.pageUrl,table = $(Selector.table);
			if(className != '' ){
				roleKey.val('');
			}
			var con = $.trim(roleKey.val())||'';
			table.paging(load,1,con,{fn : loadRolePage});
		}
		function loadRolePage(e){
			var list = e.list.list,option = e.list,table = $(Selector.table),
			td = '</td><td>';
			table.find('tr:gt(0)').empty();
				$.each(list,function(index,item){
					var num = option.pageNum || 1,className = item.del== 0 ? Content.className.danger : Content.className.primary,
							arr = ['<tr><td>',(num-1)*6+(index+1),td,item.roleCode,td,item.roleName,						
						td,item.roleRemark,td,Content.btnRolesUser,td,Content.btnRolePermission,td,'<button class="',className[0],'">',className[1],'</button></td></tr>'];
					table.append(arr.join(''));

				});
		}
		function beforCheck(option){
			var cur = $(Selector.model).attr('data-Type') || 1,state = true;
			if(cur == 1){
				var text = getText(Selector.text),
				status = {'roleCode' : '<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;角色编码不能为空','roleName':'<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;角色名称不能为空'};
				text.each(function(){
					if($.trim(this.value).length <1){
						state = false;
						$(this).setColor(color,true).next().html(status[this.id]).css('color',color);
					}
				})
			}
			return state;
		}
		function saveBeforEvent(option){
			var cur =$(Selector.model).attr('data-Type') || 1,state = true,text = getText(Selector.text);
			if(cur == 1){
				state =	addSaveRoleEvent(text);
			}
			else{
				state =	updateRoleEvent(text);
			}
			return state;
		}
		function updateRoleEvent(text){
			var state = true,data = {},count = 0;//text = getText();
			text.each(function(){
				var key = this.id,self = this;
				if($.trim(this.value) != curr[key]){
					data[key] = $.trim(this.value);
					count += 1;
					$.ajaxPost({
						url : 'checkRole',
						data : JSON.stringify(data),
						contentType : 'application/json; charset=utf-8',
						async : false
					},function(e){
						if(e.code == 100 && e.umap.role.count > 0){
							var tip = (['<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;',info[key],'重复']).join('');
							$(self).setColor(color).next().html(tip).css('color',color);
							state = false;
						}//if结束
					});//结果方法结束
			}
			});
			if(curr['roleRemark'] == $.trim($('#roleRemark').val()) && count== 0){
				state = false;
			}
return state;
		}
		//角色新增窗体保存前重复性校验
		function addSaveRoleEvent(text){
			var state = true;
			text.each(function(){
				var data = {},key = this.id,value = $.trim(this.value),self = this;
				data[key] = value;
				$.ajaxPost({
					url : 'checkRole',
					data : JSON.stringify(data),
					contentType : 'application/json; charset=utf-8',
					async : false		
				},function(e){
					if(e.code == 100 && e.umap.role.count > 0){
						var tip = (['<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;',info[self.id],'重复']).join('');
						$(self).setColor(color).next().html(tip).css('color',color);
						state = false;
					}
				});
			});
			return state;
		}
		function textBeforEvent(option){			
			var e = option.ev.type, ncolor = '#ccc',state = false,curVal = $.trim(this.val()),$html = '',cur = $(Selector.model).attr('data-Type') || 1;
			if(e == 'focusin'){
				 $(Selector.model).find(Selector.save).css('display','inline-block');
			}
			 if(e == 'input' && this.prop('id') =='roleCode'){
				 var rex=/^[0-9]{3,5}$/;
					if(curVal.length>0 &&!$.regx(rex,curVal)){
						$html = '<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;角色编码格式不正确';
						ncolor = color;
					}
			 }
			 this.setColor(ncolor).next().html($html).css('color',ncolor);
			 if(e == 'focusout' && curVal.length >1 && cur == 1){
				 state = true;
			 }
			 return state;
		}
		//校验角色输入内容是否重复
		function textEvent(e){
			var code = e.code,count = e.umap.role.count,display = 'inline-block';
			if(code == 100 && count > 0){
				var tip = (['<i class="fa fa-times-circle" aria-hidden="true"></i>&nbsp;&nbsp;',info[this.prop('id')],'重复']).join('');
				this.setColor(color).next().html(tip).css('color',color);
				display = 'none';
			}
			$(Selector.model).find(Selector.save).css('display',display);
		}
		function textRequest(e){
			return e.type == 'focusout' && $.trim(this.val()).length>1;
		}
		function getUrlString(){
			var cur =$(Selector.model).attr('data-Type') || 1;
			return ($.trim(this.url || '')).split(',')[cur-1];
		}
		function roleModalFunc(option){
			var modalbody = $(Selector.model).find(Selector.body).empty(),curType = option.cur || 1;
			modalbody.append(Content.modalbody);
			$(Selector.roleMain).find('input[type="text"]:eq(2)').css({'width':'400px'});
			if(curType !== 1){
				var $tr = option.self.parent(),code = $tr.find('td:eq(1)').text(),name = $tr.find('td:eq(2)').text(),
				remark = $tr.find('td:eq(3)').text();
				var data = {roleCode : $.trim(code),roleName : $.trim(name),roleRemark : $.trim(remark)}, text = getText();
				text.each(function(){
					this.value = data[this.id];
					curr[this.id] = data[this.id];
				});				
			}			
		}
		function getText(opt){
			var classType = opt || 'input[type="text"]';
			return $(Selector.roleMain).find(classType);
		}
		function init(){
			var btnSave = $(Selector.model).find(Selector.save),text = getText(Selector.text),
			menu = $(Selector.menu),
			update = $(Selector.upbtn),sys = $(([Selector.btn,',',Selector.td]).join(''));
			sys.clickPlugin(addEvent);//点击新增按钮响应事件，正常情况下弹出新增角色模态框，
			btnSave.clickPlugin(saveEvent);//角色内容新增或修改保存事件
			text.clickPlugin(textClickEvent);//选中新增角色模态框选中、移入/移出事件，主要用于数据校验，比如是否为空，是否重复等
			menu.clickPlugin(sysEvent);//单击菜单响应用事件
			update.clickPlugin(updateState);
		}
		return function(){
			init();
		}
	}());
	$(window).on('load',function(){
		roleManager();
	})
})(jQuery);