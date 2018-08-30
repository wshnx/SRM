/**
 * 用户管理实现前端脚本功能
 * 重建人：贺年喜
 * 重建日期：2018-08-15
 */
;(function($){
	'use strict'
	var userManager = (function(){
		var menu = $('.sysUserManager'),params = null,
		Selector = {
			ztree : '#zTreeHrmSubCompany',
			search : '#btnEmployeeSearch',
			update : '#userManagerTb .btn',
			table : '#userManagerTb',
			primary : 'btn-primary',
			danger : 'btn-danger',
			className : {
				primary : ['btn btn-primary btn-sm','启用'],
				danger : ['btn btn-danger btn-sm','禁用']
			}
		},
		loadCompany = {
				url : 'loadCompanayInfo',
				onLoadDone : function(response){
					var ztree = $(Selector.ztree),id = 'id',name = 'subcompanyname'
						if(response.code == 100){
							var list = response.umap.list;
							$.customzTreeIcon(list);
							ztree.empty();
							ztree.loadzTree(list, id, name,selectUserEvent);
						}
				}
		},
		searchEvent = {
				isquest : function(){
					return false;
				},
				onLoadDone : searchUserInfo
		},
		updateEvent = {
				url : 'userChangeInfo',
				params : function(){
					var self = $(this),$tr = self.parent().parent();
					var loginid = $.trim($tr.find('td:eq(1)').text()),values = self.html()=='启用'?1:0;
					return {'loginid':loginid,'issrm':values};
				},
				onLoadDone : function(response){
					if(response.code == 100){
						var num = $('.loadUserPageNav').find('.pagination').find('.active').find('a').html() || 1;
						$(Selector.table).paging('loadUserPage', num, params, {fn :loadUser});
					}
				}
			}
		function searchUserInfo(e){
			if (e.type == 'click'|| (e.type == 'keypress' && e.keyCode == '13')) {
				var lastname = $.trim($('#employeeCondition').val()) || '0';
				var code = '0,0,' + lastname;
				params = code;
				$(Selector.table).paging('loadUserPage', 1, code, {fn :loadUser});
			}
		}
		function selectUserEvent(e,treeId,node){
			e.stopPropagation();
			var id = node.id>1000?node.id-1000:node.id,pid = node.pid>1000?node.pid-1000:node.pid;
			var code=pid==0?id+',0,0':'0,'+id+',0';
			params = code;
			$(Selector.table).paging('loadUserPage',1,code,{fn :loadUser});
		}
		function loadUser(option){
			var num = option.pageNum || 1,table = option.self,list = option.list.list || {},classes = Selector.className;
			table.find('tr:gt(0)').empty();
			$.each(list,function(index,item){
			var td = '</td><td>',className = item.issrm ==0?classes.primary:classes.danger,
			arr = ['<tr><td>',(num-1)*8+(index+1),td,item.loginid,td,item.lastname,td,item.hrmDepartment.departmentmark,'</td><td><button class="',className[0],'">',className[1],'</button></td></tr>'];
			table.append(arr.join(''));
			});
		}
		function init(){
			menu.clickPlugin(loadCompany);
			$(Selector.search).clickPlugin(searchEvent);
			$(Selector.update).clickPlugin(updateEvent);
		}
		return function(){
			init();
		}
	}());
	$(window).on('load',function(){
		userManager();
	});
})(jQuery);