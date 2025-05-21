<?php get_template_part( 'inc/header' ); ?>
<!--
<main id="main-content" class="archive-recruit">
  <h1>採用情報一覧</h1>
  <?php if ( have_posts() ) : ?>
    <ul class="recruit-list">
      <?php while ( have_posts() ) : the_post(); ?>
        <li>
          <a href="<?php the_permalink(); ?>">
            <?php the_post_thumbnail( 'thumbnail' ); ?>
            <h2><?php the_title(); ?></h2>
            <p><?php the_excerpt(); ?></p>
          </a>
        </li>
      <?php endwhile; ?>
    </ul>
    <?php the_posts_pagination(); ?>
  <?php else : ?>
    <p>まだ採用情報がありません。</p>
  <?php endif; ?>
</main>
-->



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
						<div class="new-recruit-link"><a href="<?php echo home_url( '/' ); ?>">2026年新卒採用</a></div>
						<ul class="pdf-list">
							<li class="pdf-item"><a href="<?php echo home_url( '/' ); ?>">＜応募時＞ <br class="d-lg-none">個人情報の利用に関する同意書<img src="<?php bloginfo('template_url'); ?>/assets/img/outline/icon_lightblue_pdf.png" alt="pdfアイコン"></a></li>
						</ul>
						<p class="annotation">※応募時、履歴書と一緒にこちらの同意書の郵送が必要です。</p>
					</div>
					<ul>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">消防スタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
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
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">空港インフォメーションスタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_02.png" alt="空港インフォメーションスタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">空港インフォメーション業務</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">駐車場運営スタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_03.png" alt="駐車場運営スタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">空港インフォメーション業務</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">空港警備スタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_04.png" alt="警備スタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">警備スタッフ</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
														<span class="work-place-item">大阪国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">防災センタースタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_05.png" alt="防災センタースタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">防災センタースタッフ</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
						<li class="recruit-list">
							<div class="recruit-item"> 
								<h2 class="left-pinkline-ttl">展望ホール　バスガイドスタッフ</h2>
								<ul class="text-contentouter">
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="recruit-icat">
												<img src="<?php bloginfo('template_url'); ?>/assets/img/recruit/img_archive-recruit_06.png" alt="展望ホール バスガイドスタッフ" >
											</div>
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">契約社員</span>
													<p class="business-content">展望ホール バスガイドスタッフ</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
									<li class="">
										<a href="<?php the_permalink(); ?>" class="hover-ani">
											<div class="text-content">
												<div class="text-item">
													<span class="work-style">パート・アルバイト</span>
													<p class="business-content">展望ホール バスガイドスタッフ</p>
													<div class="work-place-list">
														<span class="work-place">勤務地： </span>
														<span class="work-place-item">関西国際空港</span>
													</div>
												</div>
												<div class="btn-bace-round">
													<div class="btn-setting">募集要項を見る</div>
												</div>
											</div>
										</a> 
									</li>
								</ul>
							</div>
						</li>
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
