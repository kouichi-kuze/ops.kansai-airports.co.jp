<?php
/*
Template Name:トップページ
*/
?>
<?php get_template_part( 'inc/header' ); ?>
<main id="page-home">
	<section class="top-mv kv-fade-01">
		<div class="mv-flex">
			<div id="slider-left"></div>
			<div id="slider-right"></div>
		</div>
	</section>	
	
	<section>
		<div id="information">
			<div id="top-news-page" class="bg-color-primary">
				<div class="kv-parts-block">
					<div class="kv-parts-item kv-parts-item-01">
						<img src="<?php bloginfo('template_url'); ?>/assets/img/top/kv_pink_part.svg">
					</div>
					<div class="kv-parts-item kv-parts-item-02">
						<img src="<?php bloginfo('template_url'); ?>/assets/img/top/kv_blue_part.svg">
					</div>
				</div>
				<div class="flex-box-left">
					<div class="mv-ttl">
						<div class="kv-fade-02" >
							<img src="<?php bloginfo('template_url'); ?>/assets/img/top/mv-ttl_01.png" alt="空港の安全安心を守る" class="mv-ttl_01">
						</div>
						<div class="kv-fade-02" >
							<img src="<?php bloginfo('template_url'); ?>/assets/img/top/mv-ttl_02.png" alt="Kansai Areports Opereation Sarvice" class="mv-ttl_02 d-none d-md-block d-xl-none">
						</div>
						
						<div class="kv-fade-02" >
							<img src="<?php bloginfo('template_url'); ?>/assets/img/top/mv-ttl_02_tate.png" alt="Kansai Areports Opereation Sarvice" class="mv-ttl_02_tate d-md-none d-xl-block ">
						</div>
						
						<p class="intro-text">関西エアポートオペレーションサービス株式会社は、関西エアポート株式会社グループのオペレーション部門として安全安心の中核を担い、危機管理、安全性、セキュリティ、顧客サービスの観点から人的リソースの高度化・最適化により最高水準の空港オペレーション品質を提供します。</p>
					</div>
				</div>
			
				<div class="flex-box-right">
					<div class="top-ttl-area">
						<div class="top-ttl-bg">
							<h2 class="ttl-2"><span>お知らせ</span>Information</h2>
						</div>
						<div class="top-ttl-bg-02">
							<div class="btn-bace-round">
								<a class="btn-setting btn-sm" href="/information">お知らせ一覧</a>
							</div>
						</div>
					</div>
					
					<?php
						// 投稿カテゴリを取得
						$categories = get_categories([
						'hide_empty' => true,
						'orderby'    => 'name',
						'order'      => 'ASC',
						]);
					?>

			<div class="main-ounded-content">
				<div class="p-side p-side-information">
					<div class="max-128">
					<ul class="information_list__tags">
						<li class="">
						<p id="#all">ALL</p>
						</li>
						<?php foreach ( $categories as $cat ) : ?>
						<li>
						<p id="#<?php echo esc_attr( $cat->slug ); ?>">
						<?php echo esc_html( $cat->name ); ?>
						</p>
						</li>
						<?php endforeach; ?>
					</ul>

					<div class="information_list">
						<div class="information_list__wrap">

						<!-- ALL 表示領域 -->
						<div class="tab-area active" id="all">
						<ul class="flex-information_list">
						<?php
						$all_query = new WP_Query([
							'post_type'      => 'post',
							'posts_per_page' => 3,
						]);
						if ( $all_query->have_posts() ) :
							while ( $all_query->have_posts() ) : $all_query->the_post();
						?>
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
												'thumbnail',
												false,
												[ 'alt' => get_the_title() ]
												);
												} else {
												if ( has_post_thumbnail() ) {
												the_post_thumbnail( 'thumbnail' );
												}
												}
												?>
												</div>
												<div class="information_list__caption">
												<span class="information_list__date"><?php echo get_the_date('Y.m.d'); ?></span>
												<ul class="information_list__tags-name">
													<?php
													$cats = get_the_category();
													if ( ! empty( $cats ) ) {
													foreach ( $cats as $cat ) {
														printf('<li>%s</li>', esc_html( $cat->name ));
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
								<?php
									endwhile;
									wp_reset_postdata();
								else :
									echo '<p>投稿がありません。</p>';
								endif;
								?>
							</ul>
						</div>

						<!-- カテゴリ別表示領域 -->
						<?php foreach ( $categories as $cat ) : ?>
							<div class="tab-area" id="<?php echo esc_attr( $cat->slug ); ?>">
							<ul class="flex-information_list">
								<?php
								$cat_query = new WP_Query([
								'post_type'      => 'post',
								'posts_per_page' => 3,
								'category_name'  => $cat->slug,
								]);
								if ( $cat_query->have_posts() ) :
								while ( $cat_query->have_posts() ) : $cat_query->the_post();
								?>
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
											'thumbnail',
											false,
											[ 'alt' => get_the_title() ]
										);
										} else {
										if ( has_post_thumbnail() ) {
											the_post_thumbnail( 'thumbnail' );
										}
										}
										?>
									</div>
									<div class="information_list__caption">
										<span class="information_list__date"><?php echo get_the_date('Y.m.d'); ?></span>
										<ul class="information_list__tags-name">
										<?php
										$cats = get_the_category();
										if ( ! empty( $cats ) ) {
											foreach ( $cats as $cat ) {
											printf('<li>%s</li>', esc_html( $cat->name ));
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
								<?php
								endwhile;
								wp_reset_postdata();
								else :
								echo '<p>このカテゴリには投稿がありません。</p>';
								endif;
								?>
							</ul>
							</div>
						<?php endforeach; ?>

						</div>
						</div>

						</div>
					</div>
				</div>
				</div>			
				
			</div>
		</div>	
	</section>	
	
	<section>
		<div class="top-slider-outer">
			<div class="scroll-infinity-top-slide">
				<div class="scroll-infinity-top-slide__wrap">
					<ul class="scroll-infinity-top-slide__list scroll-infinity-top-slide__list--left">
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_01.png" /></li>                        
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_02.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_03.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_04.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_05.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_06.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_07.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_08.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_09.png" /></li>
					</ul>
					<ul class="scroll-infinity-top-slide__list scroll-infinity-top-slide__list--left">
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_01.png" /></li>                        
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_02.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_03.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_04.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_05.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_06.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_07.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_08.png" /></li>
						<li class="scroll-infinity-top-slide__item"><img src="<?php bloginfo('template_url'); ?>/assets/img/top/slide_09.png" /></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!--service-->
	<section id="top-service">
		<div class="service-bg">
			<div class="content-inner">
				<div class="flex-bok">
					<div class="service_img">
					
					</div>
					<div class="flex-box-right">
						<div class="top-ttl-area">
						<h2 class="ttl-2"><span>事業紹介</span>Service</h2>
						<div class="btn-bace-round"><a class="btn-setting btn-sm" href="<?php echo home_url( '/' ); ?>service">事業紹介一覧</a></div>
						</div>
						<div class="service-list-outer">
						<ul class="service-list">
							<li class="service-item"><a class="service_item_link_01" href="<?php echo home_url( '/' ); ?>services/management/">オペレーションマネジメント事業</a></li>
							<li class="service-item"><a class="service_item_link_02" href="<?php echo home_url( '/' ); ?>services/security/">警備事業</a></li>
							<li class="service-item"><a class="service_item_link_03" href="<?php echo home_url( '/' ); ?>services/fire/">消防事業</a></li>
							<li class="service-item"><a class="service_item_link_04" href="<?php echo home_url( '/' ); ?>services/terminal/">ターミナルマネジメント事業</a></li>
							<li class="service-item"><a class="service_item_link_05" href="<?php echo home_url( '/' ); ?>services/cart-cleaning/">清掃・カート事業</a></li>
							<li class="service-item"><a class="service_item_link_06" href="<?php echo home_url( '/' ); ?>services/parking/">駐車場運営事業</a></li>
							<li class="service-item"><a class="service_item_link_07" href="<?php echo home_url( '/' ); ?>services/cargo/">カーゴエリアオペレーション事業</a></li>
							<li class="service-item"><a class="service_item_link_08" href="<?php echo home_url( '/' ); ?>services/fueling/">給油運用事業</a></li>
						</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--recruit-->

	<section id="top-recruit">
		<div class="recruit_img">
			<div class="top_recruit_img_fade">
				<img src="<?php bloginfo('template_url'); ?>/assets/img/top/recruit_img_02.png">
				<img src="<?php bloginfo('template_url'); ?>/assets/img/top/recruit_img_03.png">
			</div>	
		</div>
		<div class="recruit-bg">
			<div class="content-inner">
				<div class="recruit-top-contents">
					<div class="top-ttl-area end">
						<h2 class="ttl-2"><span>採用情報</span>Recruit</h2>
						<div class="btn-bace-square btn-lg"><a class="btn-setting btn-lg" href="<?php echo home_url( '/' ); ?>recruit">採用情報トップページ</a></div>
					</div>
					<h3 class="ttl-3">採用に関するお知らせ</h3>
					
					<?php
					// ① クエリのパラメータをセット
					$args = array(
					'category_name'  => 'recruit-info',  // カテゴリスラッグ。IDで指定する場合は 'cat' => 123
					'posts_per_page' => 3,               // 取得件数
					'orderby'        => 'date',          // 日付順
					'order'          => 'DESC',
					);

					// ② カスタムクエリを実行
					$recruit_query = new WP_Query( $args );

					if ( $recruit_query->have_posts() ) : ?>
					<ul class="top-recruit-info">
						<?php while ( $recruit_query->have_posts() ) : $recruit_query->the_post(); ?>
						<li class="recruit-info-item">
							<div href="<?php the_permalink(); ?>" class="recruit-info-link">
								<span class="recruit-info-date"><?php echo get_the_date( 'Y.m.d' ); ?></span>
								<a class="recruit-info-ttl"><?php the_title(); ?></a>
							</div>
						</li>
						<?php endwhile; ?>
					</ul>
					<?php
					// ループ後はリセット
					wp_reset_postdata();
					endif;
					?>
				</div>
			</div>

			<div id="page-recruit-voices-outline">
				<div class="senior-other-voice-content">
					<div class="senior-other-voice-inner">
						<!--slide-->
						<div class="slider-head">
							<div class="slider-head-top">
								<h2 class="slider-head-title">
								先輩の声<span class="font-sm">Staff Voice</span>
								</h2>
								<div class="slider-head-btn">
									<a class="btn-voice" href="<?php echo get_option('home'); ?>/voices/" class="back">先輩の声一覧</a>
								</div>
							</div>
							<p class="slider-head-text">空港内のさまざまなフィールドで活躍している<br class="d-none d-xl-block">先輩たちの担当業務や入社動機などをご紹介。</p>
						</div>
						<div class="slider-content">
							<div class="senior-other-voice-slider">
								<div class="recruit-voices-list-card">
									<?php
									// --- シングル記事本体 here ... ---

									// ここから「他の先輩の声」スライダー用クエリを用意
									$args = [
									'post_type'      => 'voices',
									'posts_per_page' => 10,
									'post__not_in'   => [ get_the_ID() ], // 今見ている記事は除外
									'orderby'        => 'date',
									'order'          => 'DESC',
									];
									$voices = new WP_Query( $args );
									?>
									<?php if ( $voices->have_posts() ) : ?>
									<ul class="recruit-voices-contents-list">
										<?php while ( $voices->have_posts() ) : $voices->the_post(); ?>
										<li class="recruit-voices-contents-list-item">
										<a href="<?php the_permalink(); ?>">
										<!-- サムネイル画像 -->
											<div>
												<?php
												if ( has_post_thumbnail() ) {
													the_post_thumbnail( 'large' );
												} elseif ( $thumb_id = get_field( 'voices_thumb_img' ) ) {
													echo wp_get_attachment_image( $thumb_id, 'large' );
												} else {
													echo '<img clss="img-voice-slide" src="' . esc_url( get_template_directory_uri() . '/assets/img/voice/img_page-recruit-voices_01.png' ) . '" alt="' . esc_attr( get_the_title() ) . '">';
												}
												?>
											</div>

											<!-- テキスト部分 -->
											<div class="text-voice-slide">

												<!-- 先輩の声専用カテゴリ -->
												<?php
												$terms = get_the_terms( get_the_ID(), 'voices_category' );
												if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
													echo '<span class="work">' . esc_html( $terms[0]->name ) . '</span>';
												}
												?>

												<!-- ボタンエリア -->
												<ul class="voices-desc-area">
													<li class="voices-button-area-text">
														<!-- 名前イニシャル -->
														<?php if ( $val = get_field( 'voices_initial' ) ) : ?>
															<span class="name"><?php echo esc_html( $val ); ?></span>
														<?php endif; ?>

														<div class="voices-button-area-text-bottom">
															<!-- 所属場所 -->
															<?php if ( $val = get_field( 'voices_affiliation' ) ) : ?>
																<span class="place"><?php echo esc_html( $val ); ?></span>
															<?php endif; ?>

															<!-- 入社年 -->
															<?php if ( $val = get_field( 'voices_joining' ) ) : ?>
																<span class="Joining"><?php echo esc_html( $val ); ?></span>
															<?php endif; ?>
														</div>
													</li>
												</ul>
												<div class="voices-button-area-btn"><span></span></div>
											</div>
										</a>
										</li>
										<?php endwhile; ?>
									</ul>
									<div class="recruit-voices-slide-arrow"><!--矢印--></div>

									<?php
										// ループ後は必ずリセット
										wp_reset_postdata();
									?>

									<?php else : ?>
									<p>該当する投稿がありません。</p>
									<?php endif; ?>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</main >
<?php get_template_part( 'inc/footer' ); ?>
