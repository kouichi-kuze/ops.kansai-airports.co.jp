
document.addEventListener('DOMContentLoaded', () => {
	// sp nav
	$(function(){
		$(".menu-trigger").on("click", function(){
			if ($("#header-sm").hasClass("open")) {
			$("#header-sm").removeClass("open");
			} else {
			$("#header-sm").addClass("open");
			}
		});
	});

	//sp nav アコーディオン
	$(".js-menu__item__link").each(function () {
		$(this).on("click", function () {
			$(this).toggleClass("open");
			$(this).next(".submenu").slideToggle();
			return false;
		});
	});
	
	//ページ内スクロール
	$(function(){
		$('a[href^="#"]').click(function(){
			var adjust = 0;
			var speed = 400;
			var href= $(this).attr("href");
			var target = $(href == "#" || href == "" ? 'html' : href);
			var position = target.offset().top + adjust;
			$('body,html').animate({scrollTop:position}, speed, 'swing');
			return false;
		});
	});
	
	//スクロール後非表示
	$(function () {
	  const $list = $('.page-content-link-list');
	  const $end = $('.hidden-area');

	  $(window).on('scroll', function () {
		// ウィンドウ幅をチェック
		if ($(window).width() < 1200) {
		  // 1200px未満の場合は初期状態に戻す
		  $list.removeClass('fixed').show();
		  return;
		}

		const scrollTop = $(this).scrollTop();
		const windowBottom = scrollTop + $(window).height();

		// fixed クラスの付け外し（300px以上スクロールしたら）
		if (scrollTop >= 300) {
		  $list.addClass('fixed');
		} else {
		  $list.removeClass('fixed');
		}

		// hidden-area に差し掛かったら非表示
		if ($list.length && $end.length) {
		  const endTop = $end.offset().top;

		  if (windowBottom >= endTop) {
			$list.fadeOut();
		  } else {
			$list.fadeIn();
		  }
		}
	  });
	});
	
	
	
	
	
	
	
	
	
	
	
	
});







