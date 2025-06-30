
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
		//slidesToShow: 4.2,
		//slidesToScroll: 1,
		variableWidth: true,
		arrows: true,
		appendArrows: $('.arrow_box'),
		prevArrow: '<div class="slide-arrow prev-arrow"></div>',
		nextArrow: '<div class="slide-arrow next-arrow"></div>',
		/*responsive: [
			{
				breakpoint: 1440,
				settings: {
					slidesToShow: 4.2,
				}
			},
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
		]	*/	
	});
	
	//topページ top-slider-list
	$('.top-slider-list').slick({
		arrows: false,
		autoplay: true,
		autoplaySpeed: 0,
		speed: 7500,
		infinite: true,
		cssEase: 'linear',
		slidesToShow: 5,
		slidesToScroll: 1,
		responsive: [
			{
			breakpoint: 1800,
			settings: {
				slidesToShow: 4.8,
			}
		},
			{
			breakpoint: 1440,
			settings: {
				slidesToShow: 4,
			}
		},
			{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3.2,
			}
		},
			{
			breakpoint: 960,
			settings: {
				slidesToShow: 2.5,
			}
		},
		{
			breakpoint: 438,//モニターの横幅が426px以下の見せ方
			settings: {
				slidesToShow: 2,//スライドを画面に1.5枚見せる
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
	
	// mvのスライダー
	var windowwidth = window.innerWidth || document.documentElement.clientWidth || 0;
	let leftImages, rightImages;

	// WordPressから渡されたテーマURL
	const basePath = themeParams.templateUrl + '/assets/img/top/';

	if (windowwidth > 768) {
		leftImages = [
			{ src: basePath + 'mv_01.jpg' },
			{ src: basePath + 'mv_03.jpg' },
			{ src: basePath + 'mv_05.jpg' },
			{ src: basePath + 'mv_07.jpg' },
			{ src: basePath + 'mv_09.jpg' },
			{ src: basePath + 'mv_11.jpg' }
		];
		rightImages = [
			{ src: basePath + 'mv_02.jpg' },
			{ src: basePath + 'mv_04.jpg' },
			{ src: basePath + 'mv_06.jpg' },
			{ src: basePath + 'mv_08.jpg' },
			{ src: basePath + 'mv_10.jpg' },
			{ src: basePath + 'mv_12.jpg' }
		];
	} else {
		leftImages = [
			{ src: basePath + 'mv_01.jpg' },
			{ src: basePath + 'mv_02.jpg' },
			{ src: basePath + 'mv_03.jpg' },
			{ src: basePath + 'mv_04.jpg' },
			{ src: basePath + 'mv_05.jpg' },
			{ src: basePath + 'mv_06.jpg' },
			{ src: basePath + 'mv_07.jpg' },
			{ src: basePath + 'mv_08.jpg' },
			{ src: basePath + 'mv_09.jpg' },
			{ src: basePath + 'mv_10.jpg' },
			{ src: basePath + 'mv_11.jpg' },
			{ src: basePath + 'mv_12.jpg' }
		];
		rightImages = [];
	}

	$('#slider-left').vegas({
		slides: leftImages,
		transition: 'fade',
		animation: 'kenburns',
		delay: 8000,
		transitionDuration: 2000,
		animationDuration: 10000,
		timer: false
	});

	if (rightImages.length > 0) {
		$('#slider-right').vegas({
		slides: rightImages,
		transition: 'fade',
			animation: 'kenburns',
		delay: 8000,
		transitionDuration: 2000,
		animationDuration: 10000,
		timer: false
		});
	}

	$('.top_recruit_img_fade').slick({
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		fade: true,
		cssEase: 'linear',
		autoplay: true,
		autoplaySpeed: 4000,
		arrows: false,
		dots: false,
	});

	$('.recruit-voices-contents-list').slick({
		infinite: true,
		variableWidth: true,
		slidesToScroll: 1,
		arrows: true,
		dots: false,
		autoplay: false,
		//autoplaySpeed: 5000,
		cssEase: 'linear',
		speed: 300,
		swipe: true, 
		draggable: false,
		touchMove: false,
		prevArrow: '<button type="button" class="slick-prev recruit-voices-slide-prev"><span class="icon-prev"></span></button>',
		nextArrow: '<button type="button" class="slick-next recruit-voices-slide-next"><span class="icon-next"></span></button>',
		appendArrows: $('.recruit-voices-slide-arrow'),
	});

	$('.recruit-voices-page-contents-list').slick({
		infinite: true,
		variableWidth: true,
		slidesToScroll: 1,
		arrows: true,
		dots: false,
		autoplay: false,
		//autoplaySpeed: 5000,
		cssEase: 'linear',
		speed: 300,
		swipe: true, 
		draggable: false,
		touchMove: false,
		prevArrow: '<button type="button" class="slick-prev recruit-voices-slide-prev"><span class="icon-prev"></span></button>',
		nextArrow: '<button type="button" class="slick-next recruit-voices-slide-next"><span class="icon-next"></span></button>',
		appendArrows: $('.recruit-voices-slide-arrow'),
	});
});



//======topページ servis======
$(document).ready(function () {
  const $container = $('.service_img');
  // 絶対パスは themeParams から
  const basePath = themeParams.templateUrl + '/assets/img/top/';

  $('.service-item a').hover(function () {
    const match = this.className.match(/service_item_link_([0-9]+)/);
    if (!match) return;

    const num = match[1].padStart(2, '0');
    const newSrc = basePath + `service_img_${num}.png`;

    // 切り替え元 img を取得
    let $currentImg = $container.find('img.active-img');
    if (!$currentImg.length) {
      // もし存在しなければ最初の img として作る
      $currentImg = $('<img class="active-img">').appendTo($container);
    }

    // すでに同じ src なら何もしない
    if ($currentImg.attr('src') === newSrc) return;

    // 切り替え先 img を非表示で追加
    const $newImg = $('<img>')
      .attr('src', newSrc)
      .css({
        display: 'none',
        position: 'absolute',
        top: 0, left: 0,
        width: '100%', height: '100%',
        objectFit: 'cover'
      })
      .appendTo($container);

    $newImg.on('load', function () {
      $currentImg.removeClass('active-img');
      $newImg
        .addClass('active-img')
        .css({ display: 'block', opacity: 0 })
        .animate({ opacity: 1 }, 200, function () {
          $currentImg.remove();
        });
    });

  }, function () {
    // mouseleave 時に元に戻したければここに処理を追加
  });
});


document.addEventListener('DOMContentLoaded', () => {
	gsap.registerPlugin(ScrollTrigger);

	gsap.from('.kv-parts-item-01', {
	x: -1000,
		opacity: 0,
		duration: 1,
		delay: 0.4,           // 0.1秒遅延
		ease: "power2.out",
		scrollTrigger: {
			trigger: '.top-mv',
			start: "top 80%",
			toggleActions: "play none none none"
		}
	});

	gsap.from('.kv-parts-item-02', {
	x: -1000,
		opacity: 0,
		duration: 1,
		delay: 0.8,           // 0.4秒遅延
		ease: "power2.out",
		scrollTrigger: {
			trigger: '.top-mv',
			start: "top 80%",
			toggleActions: "play none none none"
		}
	});

	// kv-fade-01：0.1秒遅延でフェードイン（opacity: 0 → 1）
	gsap.from('.kv-fade-01', {
	opacity: 0,
	duration: 0.8,
	delay: 0,
	ease: "power1.out",
	scrollTrigger: {
		trigger: '.kv-fade-01',
		start: "top 80%",
		toggleActions: "play none none none"
	}
	});

	// kv-fade-02：0.3秒遅延で下から上へフェードイン（opacity + y 移動）
	gsap.from('.kv-fade-02', {
	opacity: 0,
	y: 50,          // 下から 50px 手前にスタート
	duration: 1,
	//delay: 0.5,
	delay: 0,
	ease: "power2.out",
	scrollTrigger: {
		trigger: '.kv-fade-02',
		start: "top 80%",
		toggleActions: "play none none none"
	}
	});

	gsap.utils.toArray('.is-view').forEach(function(element) {
		ScrollTrigger.create({
			trigger: element,
			start: 'top bottom-=20%',
			onEnter: function() {
			// 遅延を挟んで、opacity:0→1, y:50→0 させる
			gsap.to(element, {
				opacity: 1,
				y: 0,
				duration: 0.6,
				ease: "cubic-bezier(0.445, 0.05, 0.55, 0.95)",
				delay: 0.3
			});
			},
			markers: true
		});
	});

	gsap.utils.toArray('.is-fade-view').forEach(function(element) {
		ScrollTrigger.create({
			trigger: element,
			start: 'top bottom-=20%',
			onEnter: function() {
			// 遅延を挟んで、opacity:0→1, y:50→0 させる
			gsap.to(element, {
				opacity: 1,
				y: 0,
				duration: 0.6,
				ease: "cubic-bezier(0.445, 0.05, 0.55, 0.95)",
				delay: 0.3
			});
			},
			markers: true
		});
	});





	// フローティング
const closeBtn = document.querySelector('.floating-recruit-btn-close');
const floatingBtn = document.querySelector('.floating-recruit-btn');
const target = document.querySelector('.flex-box-left .intro-text');
const footer = document.querySelector('.site-footer');

let introShown = false;
let isFooterVisible = false;
let wasClosed = false; // 閉じた後は true にして再表示を防ぐ

// ▼ 閉じるボタン処理
if (closeBtn && floatingBtn) {
	closeBtn.addEventListener('click', function () {
		floatingBtn.classList.remove('is-visible');
		wasClosed = true; // 今後一切表示させない
	});
}

// ▼ トップページ判定
const isTopPage = document.body.classList.contains('home');

if (floatingBtn) {
	if (isTopPage && target) {
		// トップページ：intro-text 表示で is-visible（ただし閉じてなければ）
		const observer = new IntersectionObserver(
			(entries) => {
				entries.forEach((entry) => {
					if (entry.isIntersecting) {
						introShown = true;
						if (!isFooterVisible && !wasClosed) {
							floatingBtn.classList.add('is-visible');
						}
					}
				});
			},
			{ root: null, threshold: 0.1 }
		);
		observer.observe(target);
	} else {
		// トップ以外：スクロールで表示（100px以上、閉じてなければ）
		introShown = true;
		if (!isFooterVisible && !wasClosed) {
			floatingBtn.classList.add('is-visible');
		}
	}
}

// ▼ フッターとの干渉
if (floatingBtn && footer) {
  let wasVisible = false;

  // SP/PC 判定用の MediaQueryList
  const mq = window.matchMedia('(max-width: 767px)');

  // マージンを返す関数
  const getRootMargin = () => {
    return mq.matches
      ? '0px 0px -240px 0px'  // SP 用
      : '0px 0px -400px 0px'; // PC 用
  };

  // IntersectionObserver のインスタンスを生成
  const footerObserver = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        const isNowVisible = entry.isIntersecting;

        if (isNowVisible) {
          wasVisible = floatingBtn.classList.contains('is-visible');
          floatingBtn.classList.remove('is-visible');
        } else {
          if (wasVisible && !wasClosed) {
            floatingBtn.classList.add('is-visible');
          }
        }
      });
    },
    {
      root: null,
      threshold: 0,
      rootMargin: getRootMargin()
    }
  );

  footerObserver.observe(footer);

  // ウィンドウ幅が変わったときに observer を再作成（必要なら）
  mq.addEventListener('change', () => {
    footerObserver.disconnect();
    // 新しく生成し直し
    const newObserver = new IntersectionObserver(footerObserver.callback, {
      root: null,
      threshold: 0,
      rootMargin: getRootMargin()
    });
    newObserver.observe(footer);
  });
}


const list   = document.querySelector('.fix-page-content-link-list');
const end    = document.querySelector('.hidden-area');

if (!list || !end) return;

// レスポンシブ対応判定
function enabled() {
  return window.innerWidth >= 1200;
}
// 2) 300px スクロールで .fixed クラスを付け外し
ScrollTrigger.create({
  trigger: document.body,
  start: '300px top',
  onEnter:     () => { if (enabled()) list.classList.add('fixed'); },
  onLeaveBack: () => { list.classList.remove('fixed'); },
});

// 3) hidden-area へのぶつかりでフェードアウト、戻ったらフェードイン
const fadeDuration = 0.3;
ScrollTrigger.create({
  trigger: end,
  // list の下端が end の上端にぶつかるタイミング
  // 「end.top が viewport bottom - listHeight に来たら」
  start: () => {
    const listHeight = list.offsetHeight;
    //return `top top+=380`;
	return `top top+=430`;
  },
  onEnter: () => {
    if (enabled()) {
      gsap.to(list, { autoAlpha: 0, duration: fadeDuration });
    }
  },
  onLeaveBack: () => {
    if (enabled()) {
      gsap.to(list, { autoAlpha: 1, duration: fadeDuration });
    }
  },
  markers: false
});

	const tabAreas = document.querySelectorAll('.tab-area');
	let maxHeight = 0;

	// 各タブを一時的に表示して高さを取得
	tabAreas.forEach(tab => {
		const originalStyle = tab.getAttribute('style') || '';

		// 一時的に表示状態にする（display: block にして position: absolute で影響を避ける）
		tab.style.visibility = 'hidden';
		tab.style.display = 'block';
		tab.style.position = 'absolute';
		tab.style.height = 'auto';

		const height = tab.offsetHeight;
		if (height > maxHeight) {
		maxHeight = height;
		}

		// 元のスタイルに戻す
		tab.setAttribute('style', originalStyle);
	});

	// 全タブの親要素に最大高さを設定
	const wrapper = document.querySelector('.information_list__wrap');
	if (wrapper) {
		wrapper.style.minHeight = maxHeight + 'px';
	}
});