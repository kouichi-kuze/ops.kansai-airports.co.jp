
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
	
	
//=====================
//	スライダー設定
//=====================
	//inquiry
	$('.slick-slider').slick({
		//autoplay: true,
		infinite: true,
		arrows: false,
		dots: false,
		pauseOnFocus: false ,
		pauseOnHover: false ,
		slidesToShow: 2,
		slidesToScroll: 2,
		responsive: [{
			breakpoint: 1200,
			settings: {
			slidesToShow: 1,
			slidesToScroll: 1,
			}
		}]
	});
	//recruit-bnr-slider	
  $('.recruit-bnr-slider').slick({
		arrows: false,
		autoplay: true,
		autoplaySpeed: 0,
		speed: 7500,
		infinite: true,
		cssEase: 'linear',
		slidesToShow: 2,
		slidesToScroll: 1,
		responsive: [
			{
			breakpoint: 1200,
			settings: {
				slidesToShow: 1.5,
			}
		},
			{
			breakpoint: 768,//モニターの横幅が769px以下の見せ方
			settings: {
				slidesToShow: 1,//スライドを画面に2枚見せる
			}
		},
			{
			breakpoint: 520,
			settings: {
				slidesToShow: 0.7,
			}
		}
	]
	});
	//recruit-voices-slider	
	$('.recruit-voices-slider').slick({
		infinite: false,
		slidesToShow: 4.2,
		slidesToScroll: 1,
		arrows: true,
		appendArrows: $('.arrow_box'),
		prevArrow: '<div class="slide-arrow prev-arrow"></div>',
		nextArrow: '<div class="slide-arrow next-arrow"></div>',
		responsive: [
			{
				breakpoint: 960,
				settings: {
					slidesToShow: 3.2,
				}
			},
			{
				breakpoint: 769,
				settings: {
					slidesToShow: 2.2,
				}
			},
			{
				breakpoint: 520,
				settings: {
					slidesToShow: 1.2,
				}
			}
		]		
	});
	//services-subpage-slider  (page-services-xxxx)
	$('.services-subpage-slider').slick({ //{}を入れる
		autoplay: true, 
		dots: true,
		dotsClass: 'dots-wrap',
		arrows:false,
		speed: 1500,
		slidesToShow: 1,
		slidesToScroll: 1
	});
	
	
	
	//任意のタブにURLからリンクするための設定
function GethashID (hashIDName){
	if(hashIDName){
		//タブ設定
		$('.information_list__tags li').find('p').each(function() { //タブ内のaタグ全てを取得
			var idName = $(this).attr('id'); //タブ内のaタグのリンク名（例）#lunchの値を取得	
			if(idName == hashIDName){ //リンク元の指定されたURLのハッシュタグ（例）http://example.com/#lunch←この#の値とタブ内のリンク名（例）#lunchが同じかをチェック
				var parentElm = $(this).parent(); //タブ内のaタグの親要素（li）を取得
				$('.information_list__tags li').removeClass("active"); //タブ内のliについているactiveクラスを取り除き
				$(parentElm).addClass("active"); //リンク元の指定されたURLのハッシュタグとタブ内のリンク名が同じであれば、liにactiveクラスを追加
				//表示させるエリア設定
				$(".tab-area").removeClass("is-active"); //もともとついているis-activeクラスを取り除き
				$(hashIDName).addClass("is-active"); //表示させたいエリアのタブリンク名をクリックしたら、表示エリアにis-activeクラスを追加	
			}
		});
	}
}

//タブをクリックしたら
$('.information_list__tags p').on('click', function() {
	var idName = $(this).attr('id'); //タブ内のリンク名を取得	
	GethashID (idName);//設定したタブの読み込みと
	return false;//aタグを無効にする
});


// 上記の動きをページが読み込まれたらすぐに動かす
$(window).on('load', function () {
    $('.information_list__tags li:first-of-type').addClass("active"); //最初のliにactiveクラスを追加
    $('.tab-area:first-of-type').addClass("is-active"); //最初の.tab-area-activeクラスを追加
	var hashName = location.hash; //リンク元の指定されたURLのハッシュタグを取得
	GethashID (hashName);//設定したタブの読み込み
});

	
	
	
	
	
	
	
	
	
	
	
});







