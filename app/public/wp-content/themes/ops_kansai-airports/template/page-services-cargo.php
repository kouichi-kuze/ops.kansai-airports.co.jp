<?php
/*
Template Name:カーゴエリアオペレーション事業
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
		<h1 class="page-header__title blue-under-line-ttl">カーゴエリアオペレーション事業</h1>
	  </div>
	</div>
</div>
<main id="page-service-cargo">
	<div class="page-sub-services bg-color-bg-blue">
		<div class="content-bg bg-color-white">
		<div class="mv-img">
			<img src="<?php bloginfo('template_url'); ?>/assets/img/service/cargo/mv-sp.png" alt="カーゴエリアオペレーション事業" class="d-md-none">
		<img src="<?php bloginfo('template_url'); ?>/assets/img/service/cargo/mv.png" alt="カーゴエリアオペレーション事業" class="d-none d-inline-md-block">
		</div>
		<div class="p-side-3-8 description-outer">
			<p class="description">国際貨物エリアの中での施設管理や連絡窓口としての役割を担っています。また各種災害や重大事案発生時には迅速な情報提供を行うなど、国際貨物エリア内での災害活動拠点として対応を行い、安全確保に努めています。</p>
		</div>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Cargo Area Operation Services</span>
				<h2 class="main-title"><span class="p-side-3-8">カーゴエリアオペレーションセンター</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/cargo/001.jpg" /></li>
								</ul>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/cargo/002.jpg" /></li>
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
