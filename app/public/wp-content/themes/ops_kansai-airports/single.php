<?php get_template_part( 'inc/header' ); ?>

<!--HTMLここから-->
<div class="sub-page-header p-side-3-8">
  <!-- パンくずリスト -->
  <div class="breadcrumb-wrap">
    <?php get_template_part( 'inc/breadcrumb' ); ?>
  </div>
  <!-- タイトルとサブタイトル -->
  <div class="page-header__titles">
    <h1 class="page-header__title">お知らせ</h1>
    <p class="page-header__subtitle">Information</p>
  </div>
</div>


<div id="single-news">
	<div id="information">
		<div id="single-news-page" class="bg-color-primary">
			<div class="main-ounded-content single bg-color-primary">
				<div class="p-side-3-8">
					<div class="max-128">
						
						
	
				<!--<div id="post">-->
				<div class="post_detail">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
					
					<div class="content-head">
						<div class="date-cat-content">
						<span class="date">
							<?php the_time(__('Y.m.d', 'kubrick')) ?>
						</span>
						<?php
						// カテゴリーを取得
						$cats = get_the_category();
						if ( ! empty( $cats ) ) :
							echo '<ul class="tags">';
							foreach ( $cats as $cat ) {
							printf(
								'<li><a href="%1$s">%2$s</a></li>',
								esc_url( get_category_link( $cat->term_id ) ),
								esc_html( $cat->name )
							);
							}
							echo '</ul>';
						endif;
						?>
						</div>

						<h1 class="title">
							<?php the_title(); ?>
						</h1>
					</div>
	
					<div class="entry">
						<?php the_content(); ?>
					</div>
					<div class="navigation">
					
					<!-- <?php previous_post_link( '%link', 'PREV', TRUE ) ?>-->
					<div class="btn-center">
						<div class="btn-bace-round">
							<a class="btn-setting btn-sm" href="<?php echo get_option('home'); ?>/category/news/" class="back">お知らせ一覧</a>
						</div>
					</div>
					
					<!--      <?php next_post_link( '%link', 'NEXT', TRUE ) ?>-->
						
					</div>
					<?php endwhile; else: ?>
					<?php endif; ?>
					
					</div>
					<!--</div>-->
					<?php get_template_part('bloc/contact_box'); ?>
	
	
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>



<?php get_template_part( 'inc/footer' ); ?>
