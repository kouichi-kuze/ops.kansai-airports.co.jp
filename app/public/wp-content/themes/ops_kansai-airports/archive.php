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

<div id="archive-news">
	<div id="information">
		<div id="top-news-page" class="bg-color-primary">
			<div class="main-ounded-content bg-color-primary">
				<div class="p-side-3-8">
					<div class="max-128">
						<?php
						// taxonomy 情報ページの場合は URL の /information/category/{slug}/ から slug を取得
						if ( is_category() ) {
							$queried = get_queried_object();
							$current = $queried->slug;
						} else {
							// GET パラメータ ?cat=slug があればこちらを優先
							$current = isset($_GET['cat']) ? sanitize_text_field($_GET['cat']) : '';
						}
						?>
					
								<ul class="information_list__tags">
								<!-- 全件（ALL）リンク -->
								<li<?php if ( ! $current ) echo ' class="is-active"'; ?>>
									<a href="<?php echo esc_url( home_url('/information/') ); ?>">ALL</a>
								</li>

								<?php
								// 投稿カテゴリで投稿が一件以上あるものだけ取得
								$cats = get_categories([
									'hide_empty' => true,
									'orderby'    => 'name',
									'order'      => 'ASC',
								]);
								foreach ( $cats as $cat ) :
									$slug = $cat->slug;
									$url  = add_query_arg( 'cat', $slug, home_url('/information/') );
								?>
									<li<?php if ( $current === $slug ) echo ' class="is-active"'; ?>>
									<a href="<?php echo esc_url( $url ); ?>">
										<?php echo esc_html( $cat->name ); ?>
									</a>
									</li>
								<?php endforeach; ?>
								</ul>
													
														<div class="information_list">
															<div class="information_list__wrap">
								<?php
								$paged = max( 1, get_query_var('paged') );
								$args  = [
								'post_type'      => 'post',
								'posts_per_page' => 3,
								'paged'          => $paged,
								];
								// 絞り込み用のカテゴリ slug があればセット
								if ( $current ) {
									$args['category_name'] = $current;
								}
								$info_query = new WP_Query( $args );
								?>

								<?php if ( $info_query->have_posts() ) : ?>	

								<ul class="flex-information_list">
									<?php while ( $info_query->have_posts() ) : $info_query->the_post(); ?>
										<li>
											<div class="information_list__item">
												<div class="information_list__card">
													<a href="<?php the_permalink(); ?>">
													<div class="flex-container">
														<div class="information_list__thumb">
															<?php
															if ( $thumb_id = get_field( 'thumb_infomation' ) ) {
																echo wp_get_attachment_image(
																	$thumb_id,
																	'large',
																	false,
																	[ 'alt' => get_the_title() ]  // 必要に応じて alt 属性を追加
																);
															} else {
																if ( has_post_thumbnail() ) {
																	the_post_thumbnail( 'large' );
																}
															}
															?>	
														</div>
														<div class="information_list__caption">
															<span class="information_list__date"><?php echo get_the_date('Y.m.d'); ?></span>
															<ul class="information_list__tags-name">
<!--
																<?php
																$cats = get_the_category();
																if ( ! empty( $cats ) ) {
																	foreach ( $cats as $cat ) {
																		printf(
																			'<li><a href="%1$s">%2$s</a></li>',
																			esc_url( get_category_link( $cat->term_id ) ),
																			esc_html( $cat->name )
																		);
																	}
																} else {
																	echo '<li>未分類</li>';
																}
																?>
-->
																
																<?php
																$cats = get_the_category();
																if ( ! empty( $cats ) ) {
																	foreach ( $cats as $cat ) {
																		echo '<li>' . esc_html( $cat->name ) . '</li>';
																	}
																} else {
																	echo '<li>未分類</li>';
																}
																?>
																
															</ul>
															<p class="information_list__title"><?php the_title(); ?></p>
														</div>
													</div>
												</a>
											</div>
										</div>
									</li>
									<?php endwhile; ?>

									<!--
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_01.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">all表示確認泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									-->
								</ul>
								<!-- ページネーション -->
                              <nav class="navigation pagination">
                                  <div class="nav-links">
                                        <?php
                                            echo paginate_links([
                                            'total'   => $info_query->max_num_pages,
                                            'current' => $paged,
                                             'prev_text' => __( '', 'textdomain' ),
                                            'next_text' => __( '', 'textdomain' ),
                                            ]);
                                            wp_reset_postdata();
                                        ?>
                                  </div>
                            </nav>                              
								<?php else : ?>
								<p class="no-date">No date</p>
								<?php endif; ?>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
</div >
<!--／HTMLここまで-->













<?php get_template_part( 'inc/footer' ); ?>
