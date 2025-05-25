<?php
/*
Template Name:募集要項
*/
?>
<?php get_template_part( 'inc/header' ); ?>

<div id="main-content" class="single-recruit">
	<div id="page">	
		<div id="post">
		
			<!--HTMLここから-->
			<div class="sub-page-header p-side-3-8">
				<!-- パンくずリスト -->
				<div class="breadcrumb-wrap">
					<?php get_template_part( 'inc/breadcrumb' ); ?>
				</div>
				<!-- タイトルとサブタイトル -->
				<div class="page-header__titles">
					<h1 class="page-header__title">採用情報</h1>
					<p class="page-header__subtitle">Recruit</p>
				</div>
			</div>
			
			<div id="single-recruit-page" class="bg-color-primary">
				<div class="main-ounded-content bg-color-primary">
					<div class="p-side-15-8">
						<div class="max-128">
							<h2 class="bottom-border-bulue-ttl">募集要項</h2>
							<div class="post_detail">
								<?php the_content(); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!--リクルート共通パーツ-->
			<?php get_template_part( 'parts/bnr_requruit' ); ?>
			<!--/リクルート共通パーツ-->
		</div>
	<!--/HTMLここまで-->
	</div>
	<?php get_template_part('bloc/contact_box'); ?>
</div>

<?php get_template_part( 'inc/footer' ); ?>
