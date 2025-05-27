<?php
/*
Template Name:警備事業
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
		<h1 class="page-header__title blue-under-line-ttl">オペレーションマネジメント事業</h1>
	  </div>
	</div>
</div>
<main id="page-service-●●●●●" class="page-sub-services bg-color-bg-blue">
	<div class="content-bg bg-color-white">
		<div class="mv-img">
			<img src="<?php bloginfo('template_url'); ?>/assets/img/service/management/mv-sp.png" alt="オペレーションマネジメント事業" class="d-md-none">
		<img src="<?php bloginfo('template_url'); ?>/assets/img/service/management/mv.png" alt="オペレーションマネジメント事業" class="d-none d-inline-md-block">
		</div>
		<div class="p-side-3-8 description-outer">
			<p class="description">空港オペレーション業務全般に係る契約事務・支払い等に関する総合調整事業を行う事務系部門です。関西エアポート（株）から受託する業務に関する予算管理や契約業務の他に、警備・消防・旅客サービスにかかる各種調整を行います。社内外との業務運用調整を行う以外にも、空港内展望ホールの運営も行っています。</p>
		</div>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Operation Management Services</span>
				<h2 class="main-title"><span class="p-side-3-8">ビジネスプランニング部</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">2カラム</h3>
								<p>この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、</p>
								<ol class="disc-list">
									<li class="disc-item">この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</li>
									<li class="disc-item">この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</li>
								</ol>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/img_service_cleaning.png" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/img_service_firefighting.png" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/img_service_management.png" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/img_service_refueling.png" /></li>
								</ul>
							</li>
						</ul>
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item w-100 one-column">
								<h3 class="left-pinkline-ttl">1カラム</h3>
								<ol class="disc-list">
									<li class="disc-item">この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</li>
									<li class="disc-item">この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。</li>
								</ol>
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
<!--バナー共通パーツ-->
<?php get_template_part( 'parts/bnr_services' ); ?>
<!--/バナー共通パーツ-->
</main >
<?php get_template_part( 'inc/footer' ); ?>

