<?php
/*
Template Name:採用情報
*/
?>
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

<main id="main-content" class="archive-recruit">
	<div id="top-recruit-page" class="bg-color-primary">
		<div class="main-ounded-content bg-color-primary">
			<div class="p-side-15-8">
				<div class="max-128">
					<h2 class="bottom-border-bulue-ttl">募集要項</h2>
					<div class="max-md40-xl58">
						<div class="new-recruit-link">
            <?php if ( $link_url = get_field( 'new_recruit_link_url' ) ) :
                // テキストフィールドの値も取得
                $link_text = get_field( 'new_recruit_link' );
                ?>
                <a href="<?php echo esc_url( $link_url ); ?>">
                  <?php echo esc_html( $link_text ); ?>
                </a>
            <?php endif; ?>
            </div>
						<ul class="pdf-list">
							<li class="pdf-item"><a href="<?php echo home_url( '/' ); ?>">＜応募時＞ <br class="d-lg-none">個人情報の利用に関する同意書<img src="<?php bloginfo('template_url'); ?>/assets/img/outline/icon_lightblue_pdf.png" alt="pdfアイコン"></a></li>
						</ul>
						<p class="annotation">※応募時、履歴書と一緒にこちらの同意書の郵送が必要です。</p>
					</div>

					<ul>
            <?php the_content(); ?>
            <!--
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">消防スタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_01.png" alt="消防スタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">空港消防スタッフ</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
														<span class="work-place-item">大阪国際空港</span>
													</div>
												</div>
                        <a href="<?php the_permalink(); ?>" class="hover-ani">
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
                        </a>
											</div>										
									</li>
								</ul>
							</div>
						</li>-->
					</ul>
					
						<!-- 表示内容：ページネーション（例：前へ / 次へ） -->
							<div class="breadcrumb-wrap">
								<?php get_template_part( 'inc/breadcrumb' ); ?>
							  </div>
					
					
						<!-- 条件：投稿が1件もない場合 -->
<!--							<p class="list-none">まだ採用情報がありません。</p>-->
						<!-- 表示内容：投稿が存在しないときのメッセージ -->
				</div>
			</div>
		</div>
<!--リクルート共通パーツ-->
<?php get_template_part( 'parts/bnr_requruit' ); ?>
<!--/リクルート共通パーツ-->
	</div>
	
</main >
<!--/HTMLここまで-->

<?php get_template_part( 'inc/footer' ); ?>
