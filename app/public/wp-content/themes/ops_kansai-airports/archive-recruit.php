<?php get_template_part( 'inc/header' ); ?>
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

<main id="archive-recruit">
	<div id="top-recruit-page" class="bg-color-primary">
		<div class="main-ounded-content bg-color-primary">
			<div class="p-side-3-8">
				<div class="max-128">
					<h2 class="bottom-border-bulue-ttl">募集要項</h2>
					<div class="max-md40-xl58">
						<div class="new-recruit-link">
						<a href="https://job.rikunabi.com/2026/company/r572772023/" target="_blank">
							2026年新卒採用はこちら
							</a>
            			</div>
					<ul class="pdf-list">
						<li class="pdf-item"><a href="<?php bloginfo('template_url'); ?>/assets/img/common/files/privacy.pdf" target="_blank"><span>＜応募時＞ <br class="d-lg-none">個人情報の利用に関する同意書<img src="<?php bloginfo('template_url'); ?>/assets/img/outline/icon_lightblue_pdf.png" alt="pdfアイコン"></span></a></li>
					</ul>
					<p class="annotation">※応募時、履歴書と一緒にこちらの同意書の郵送が必要です。</p>
				</div>
				<?php
				$args = array(
					'post_type'      => 'recruit',
					'posts_per_page' => 100,
					'paged'          => get_query_var('paged', 1),
				);
				$my_query = new WP_Query( $args );
				?>

					<ul>
					<?php if ( $my_query->have_posts() ) : ?>
					<?php while ( $my_query->have_posts() ) : $my_query->the_post(); ?>
						<?php
							// 1) 本文からブロックをパース
							$blocks    = parse_blocks( get_the_content() );
							$my_blocks = array_filter( $blocks, function( $b ) {
								return $b['blockName'] === 'lazyblock/recruirecruitlist';
							});
							// 2) レンダー
							foreach ( $my_blocks as $block ) {
								echo '<li class="archive-lazyblock">';
								echo render_block( $block );
								echo '</li>';
							}
						?>
					<?php endwhile; ?>
					<?php wp_reset_postdata(); ?>
				<?php endif; ?>
                        
					</ul>
                    
				</div>
			</div>
		</div>
<!--リクルート共通パーツ-->
<?php get_template_part( 'parts/bnr_requruit' ); ?>
<!--/リクルート共通パーツ-->
	</div>
	
</main >
<!--/HTMLここまで-->

<div class="archive-recruit-footer">
	<?php get_template_part( 'inc/footer' ); ?>
</div>

<?php
// 値を取り出し
$title       = isset( $attributes['recruit_list_title'] ) ? $attributes['recruit_list_title'] : '';
$img_attr    = isset( $attributes['recruit_list_img'] ) ? $attributes['recruit_list_img'] : null;
$infos       = isset( $attributes['recruit_list_info'] ) ? $attributes['recruit_list_info'] : [];
$btn_label   = '募集要項を見る';
// パーマリンク取得（レンダラーコールバックで set していない場合はこちらでも可）
// $permalink = get_permalink();
?>