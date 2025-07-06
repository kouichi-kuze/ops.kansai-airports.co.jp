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
						<a href="https://job.rikunabi.com/n/job_descriptions/7abff28a42835805/?betk=SoDJ6_I3xwlPX3QIlZ0NbzkdCdPP&jrtk=5-nrt1-0-1itgm269qi0vg800-7abff28a42835805---6NYlbfkN0BpvkinRYh7Igr3TQQJbWnpFbY7R1uj7IWjufj49bsUmaM9PHuZh94cnFVQ_hQRWEia1NvsuN6ygt6jSgxw8y34VNrLuBXtv7ph-MGPPH-vJfjUhUQbZsc_XUjPoW6CfWF9xtPV5t4crwZSi9eX-RkksIfkd13Wq9_DHp7-TSqyPR3vF9MhJaPbkey7i22fSGMMnbyR-3XL_VliePBoHNz7vygkpq2Yy3P81e9Zz0eOokwMQO8feLYOswV-Lfs7qD2Wc0hVExy9O2Psm5Ibw7lZ49bejjxs_PfWPpsKPYGrHn8COHy-z9DFc-9uHlh9raDUp2UAxuyGj6QxQ445XXTEyTjDOmzCTH3OLRRTF8nUQCNx5_8D18g-GocDkdeet9Fm-NSs2EBOcLVB9rymthiqQcdnZHqYJM3Q2j6A6fWC0Q_QlqA797OahlgE5yzBoFD95nPVAp9d2Sbsb6esUNUCDkcuKZXLjuzksAh2bGy1zii_QxR2zV7dqkA3mD2ch0TWD9Evl3g3GvZMCkcV47k4PkRz9MtxHyJeYMUC4fym-WqGnO80D9y_dwUm2RpWTJnGkGkyC1jGwo6RwQULwxFXW3ffHNCzVpW2fQJQNz5OWtmuAEFetx9iQU5V_JQhJ4qCJis4hZ1LAiDU6Qw-F0bIoKd2ca-mcTkjBOt39ghnLaS9DOlrsax8TVXTf6iVWaTXUcPIO3FnSABUZRy0xdjvgJNWh4Fr7TAv0n8evfW3oTIiekOY0KvVjhgPhrSI7ttqVltZl8Joag==&referrerId=030&seqNo=1&from=job_search" target="_blank">
							2027年新卒採用はこちら
							</a>
            			</div>

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

					<div class="pdf-list-wrap">
						<ul class="pdf-list">
							<li class="pdf-item"><a href="<?php bloginfo('template_url'); ?>/assets/img/common/files/privacy.pdf" target="_blank"><span>＜応募時＞ <br class="d-lg-none">個人情報の利用に関する同意書<img src="<?php bloginfo('template_url'); ?>/assets/img/outline/icon_lightblue_pdf.png" alt="pdfアイコン"></span></a></li>
						</ul>
						<p class="annotation">※応募時、履歴書と一緒にこちらの同意書の郵送が必要です。</p>
					</div>
                    
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