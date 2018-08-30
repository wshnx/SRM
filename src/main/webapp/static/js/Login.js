/**
 * 系统登录前端脚本文件； 重构日期：2018-08-09 重建人：贺年喜 修正日期：2018-08-09 说明：正式版本 补充说明：
 * 采用插件式开发方式，将常用响应事件分离出来，编写成通用插件(如：单击事件、鼠标移入/移出事件),增加了代码的可扩展性和灵活性
 */
;
(function($) {
	'use strict'
	var login = (function() {
		// 1.登录框操作对象父容器，便于统一调用子对象;
		var parent = $('.login_container'),
		// 2.提示响应操作信息(放到前面便于统一修改和维护，提高维护工作效率)
		Message = {
			empty : ' <i class="fa fa-cog fa-spin"></i>&nbsp;&nbsp;用户名或密码不能为空！',
			Default : '没有账号,请联系统管理员',
			BadPassword : '密码错误！',
			NonName : '用户名不存在！',
			NonAuthority : '用户无使用系统权限！',
			ServerFail : '服务器内部错误，请联系开发人员查找原因！',
			ConnectFail : '服务器连接失败，请确认网络是否正常！',
			Success : 'sysMain'
		}, text = parent.find('input:not([type="checkbox"])'), a = parent.find(
				'.text-center:last').find('a'), btn = parent.find('button'),
		// 登录按钮单击事件
		click = {
			url : 'login',
			beforEvent : check,
			onLoadDone : login,
			params : function(e){
				var data = {};
				text.each(function(i,n){data[n.id] = $.trim(n.value)});
                return data;
			}
		}, 
		focus = {
			isquest : function(){
				return false;
			},
			event : 'focusin focusout',
			onLoadDone : function(e) {
				var activeColor = '#337ab7';
				var color = (e.type == 'click' || e.type == 'focus') ? activeColor: '#d8e3ef', info = Message.Default;
				$(this).setColor(color);
				a.html(info).css({'color' : '#337ab7'});
			}
		};

		// 初始化方法，主要注册对象响应事件如单击、移入/移出等
		function init() {
			btn.clickPlugin(click);
			text.clickPlugin(focus);
		}
		function check() {
			var state = true, color = '#f35757';
			text.each(function(i, n) {
				if ($.trim(n.value).length < 1) {
					$(n).setColor(color,true);
					a.html(Message['empty']).css({'color' : color});
					state = false;
				}
			})
			return state;
		}
		function login(response) {
			var msg = response.msg,data = response.umap,login = data.login,result = Message[login];
			if(msg == 'fail'){
				var info =' <i class="fa fa-cog fa-spin"></i>&nbsp;&nbsp;'+ result;
				a.html(info).css({'color' : '#f35757'});
			}
			else{
				window.location = result;
			}
		}
		return function() {
			init();
		}
	}());
	$(window).on('load', function() {
		login();
	});
})(jQuery);