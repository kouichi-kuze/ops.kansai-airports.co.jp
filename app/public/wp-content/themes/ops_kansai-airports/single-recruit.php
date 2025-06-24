<?php get_template_part( 'inc/header' ); ?>

<div id="single-recruit">
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
					<div class="p-side-3-8">
						<div class="max-128">
							<h2 class="bottom-border-bulue-ttl">募集要項</h2>
		
							<div class="post_detail">
								<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
									
									<div class="post_detail-head" style="display: none;">
										<?php
										global $post;
										$post_id = $post->ID;

										// 採用情報専用カテゴリを取得
										$terms = get_the_terms( $post_id, 'recruit_category' );

										// もしカテゴリがあれば出力
										if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) : ?>
										<ul class="tags">
											<?php foreach ( $terms as $term ) : ?>
											<li><?php echo esc_html( $term->name ); ?></li>
											<?php endforeach; ?>
										</ul>
										<?php endif; ?>
										
										<h1 class="title">
										<?php the_title(); ?>
										</h1>
									</div>

									<?php the_content(); ?>
                                
                                
                                
                                
                                

								<?php endwhile; else: ?>
								<?php endif; ?>						
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
</div>
	
<div class="single-recruit-footer">
	<?php get_template_part( 'inc/footer' ); ?>
</div>

