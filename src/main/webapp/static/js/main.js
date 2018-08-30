;
(function($) {
	'use strict'
	var srm = (function() {
		var currentTime = null, currentDate = null, date = null;
		// 初始化加载事件日期时间自动更新
		function updateTime() {
			date = moment(new Date());
			currentTime.html(date.format('HH:mm'));
			currentDate.html(date.format('YYYY年MM月DD日'));
		}
		function loadinit() {
			var time = $('.time');
			currentTime = time.find('h1');
			currentDate = $('.time p');
			updateTime();
			setInterval(updateTime, 1000);
		}
		function menuEvent() {
			$('.tree-toggle').click(
					function(e) {
						e.preventDefault();
						var $this = $(this).parent().children('ul.tree');
						$(".tree").not($this).slideUp(600);
						$this.toggle(700);

						$(".tree").not($this).parent("li").find(
								".tree-toggle .right-arrow").removeClass(
								"fa-angle-down").addClass("fa-angle-right");
						$this.parent("li").find(".tree-toggle .right-arrow")
								.toggleClass("fa-angle-right fa-angle-down");
					});
		}
		function init() {
			loadinit();
			menuEvent();
		}
		return function() {
			init();
		}
	}());
	$(window).on('load', function() {
		srm();
	});
})(jQuery);