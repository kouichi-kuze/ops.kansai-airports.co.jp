<?php
/*
Template Name:清掃カート事業
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
		<h1 class="page-header__title blue-under-line-ttl">清掃・カート事業</h1>
	  </div>
	</div>
</div>
<main id="page-service-cart-cleaning">
	<div class="page-sub-services bg-color-bg-blue">
		<div class="content-bg bg-color-white">
		<div class="mv-img">
			<img src="<?php bloginfo('template_url'); ?>/assets/img/service/cart-cleaning/mv-sp.png" alt="清掃・カート事業" class="d-md-none">
		<img src="<?php bloginfo('template_url'); ?>/assets/img/service/cart-cleaning/mv.png" alt="清掃・カート事業" class="d-none d-inline-md-block">
		</div>
		<div class="p-side-3-8 description-outer">
			<p class="description">ターミナルビル内の清掃及びカートの回収点検を行い、空港を利用されるお客様が快適かつ安全に過ごすことができる環境を提供しています。館内テナントからの清掃依頼の受注、清掃機材・物品の管理に加えて、インスペクション業務も行っています。</p>
		</div>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Cleaning & Cart Group</span>
				<h2 class="main-title"><span class="p-side-3-8">KIXターミナルエリアオペレーションセンター</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">KIXターミナルエリアオペレーションセンター</h3>
								<div class="white-radius-box">
									<div class="dot-ttl mb-0">清掃・カートグループ</div>
									
								</div>
								
								
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/cart-cleaning/001.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/cart-cleaning/002.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/cart-cleaning/003.jpg" /></li>
								</ul>
							</li>
						</ul>
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">ITMターミナルエリアオペレーションセンター</h3>
								<div class="white-radius-box">
									<div class="dot-ttl mb-0">清掃・カートグループ</div>
									
								</div>								
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
<div class="service-detail-footer">
	<?php get_template_part( 'inc/footer' ); ?>
</div>