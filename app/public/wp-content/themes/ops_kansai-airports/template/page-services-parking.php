<?php
/*
Template Name:駐車場運営事業
*/
?>
<?php get_template_part( 'inc/header' ); ?>



<div class="sub-page-header sub-services ">
	<div class="p-side-3-8">
	  <!-- パンくずリスト -->
	  <div class="breadcrumb-wrap">
		<?php get_template_part( 'inc/breadcrumb' ); ?>
	  </div>

	  <div class="page-header__titles services-titles">
		<ul class="place-list">
		  <li>関西国際空港</li>
		  <li>大阪国際空港</li>
		</ul>
		<h1 class="page-header__title blue-under-line-ttl">駐車場運営事業</h1>
	  </div>
	</div>
</div>
<main id="page-service-parking">
	<div class="page-sub-services bg-color-bg-blue">
		<div class="content-bg bg-color-white">
		<div class="mv-img">
			<img src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/mv-sp.png" alt="駐車場運営事業" class="d-md-none">
		<img src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/mv.png" alt="駐車場運営事業" class="d-none d-inline-md-block">
		</div>
		<div class="p-side-3-8 description-outer">
			<p class="description">空港内駐車場の運営全般を担っており、出庫・入庫の管理、精算時の補助や車両の監視、予約サービスにも対応しています。その他、不正駐車や不審車両の確認など、駐車場内で発生するイレギュラー事案の対応も行っています。</p>
		</div>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Parking Lots Management Services</span>
				<h2 class="main-title"><span class="p-side-3-8">KIXターミナルエリアオペレーションセンター</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">駐車場運営グループ</h3>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/kix/001.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/kix/002.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/kix/003.jpg" /></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Parking Lots Management Services</span>
				<h2 class="main-title"><span class="p-side-3-8">ITMターミナルエリアオペレーションセンター</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">駐車場運営グループ</h3>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/itm/001.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/parking/itm/002.jpg" /></li>

								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		
		<div class="btn-bace-round">
			<div class="btn-setting">
			  <a href="<?php echo home_url( '/' ); ?>services" class="back">事業紹介一覧</a>
			</div>
		</div>		
	</div>
	</div>
<!--バナー共通パーツ-->
<?php get_template_part( 'parts/bnr_services' ); ?>
<!--/バナー共通パーツ-->
</main >
<?php get_template_part( 'inc/footer' ); ?>
