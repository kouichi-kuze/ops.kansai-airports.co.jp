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
		<h1 class="page-header__title blue-under-line-ttl">警備事業</h1>
	  </div>
	</div>
</div>
<main id="page-service-security">
	<div class="page-sub-services bg-color-bg-blue">
		<div class="content-bg bg-color-white">
		<div class="mv-img">
			<img src="<?php bloginfo('template_url'); ?>/assets/img/service/security/mv-sp.jpg" alt="オペレーションマネジメント事業" class="d-md-none">
		<img src="<?php bloginfo('template_url'); ?>/assets/img/service/security/mv.jpg" alt="オペレーションマネジメント事業" class="d-none d-inline-md-block">
		</div>
		<div class="p-side-3-8 description-outer">
			<p class="description">空港内の制限区域・保安区域の出入管理、スクリーニングを行っています。車両巡回や、管制監視業務で、空港の主要部へ不審者の侵入などを未然に防ぐ業務を24時間体制で実施し、空港の安全を守っています。</p>
		</div>
		
		<section class="services-contener">
			<div class="services-content-ttl add">
				<span class="sub-title p-side-3-8">Security Services</span>
				<h2 class="main-title"><span class="p-side-3-8">KIXエアフィールドオペレーションセンター　警備隊</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
<!--
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item w-100 one-column">
								<h3 class="left-pinkline-ttl">運用管理グループ</h3>
							</li>
						</ul>
-->
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">運用管理グループ</h3>
								<h3 class="left-pinkline-ttl">第1警備隊、第２警備隊</h3>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/kix/001.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/kix/002.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/kix/003.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/kix/004.jpg" /></li>
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/kix/005.jpg" /></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section class="services-contener">
			<div class="services-content-ttl">
				<span class="sub-title p-side-3-8">Security Services</span>
				<h2 class="main-title"><span class="p-side-3-8">ITMエアフィールドオペレーションセンター　警備隊</span></h2>
			</div>
			<div class="p-side-15-3">
				<div class="glay-box">
					<div class="p-side-3-8 max-128">
<!--
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">運用管理グループ</h3>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>//assets/img/service/security/itm/001.jpg" /></li>
								</ul>
							</li>
						</ul>
-->
						<ul class="services-content-list d-md-flex justify-content-md-between">
							<li class="services-content-item two-column">
								<h3 class="left-pinkline-ttl">運用管理グループ</h3>
								<h3 class="left-pinkline-ttl">第1警備隊、第２警備隊</h3>
							</li>
							<li class="services-content-item two-column">
								<ul class="services-subpage-slider">
									<li><img alt="" src="<?php bloginfo('template_url'); ?>/assets/img/service/security/itm/001.jpg" /></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		
		<div class="btn-bace-round">
			<a class="btn-setting" href="<?php echo home_url( '/' ); ?>services" class="back">事業紹介一覧</a>
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