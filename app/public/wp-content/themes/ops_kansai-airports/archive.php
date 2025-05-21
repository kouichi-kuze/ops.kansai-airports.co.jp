<?php get_template_part( 'inc/header' ); ?>

<!--
<div id="page">
<div id="information">
  <h1 class="pg_title"><span>NEWS / EVENT</span></h1>
  <?php if (have_posts()) : ?>
-->
<!--
  <?php /* If this is a category archive */ if (is_tag()) { ?>
  <p class="pg_subtitle"><?php printf(__('%s'), single_tag_title('', false) ); ?></p>
  <?php /* If this is a tag archive */ } else { ?>
  <p class="pg_subtitle">ニュース一覧</p>
-->
<!--
  <?php } ?>
  <div class="information_list">
    <div class="information_list__wrap">
      <ul>
        <?php while (have_posts()) : the_post(); ?>
        <li>
          <div class="information_list__card"> <a href="<?php the_permalink() ?>" class="information_list__link"></a>
            <div class="information_list__thumb">
              <?php if( get_field('info_thumb') ) { ?>
              <img src="<?php bloginfo('template_url'); ?>?php the_field('info_thumb'); ?>" width="456" height="456" alt="" alt="<?php the_title(); ?>"/>
              <?php } else { ?>
              <img src="<?php bloginfo('template_url'); ?>?php bloginfo('template_url'); ?>/assets/img/common/noimage.jpg" width="456" height="456" alt=""/>
              <?php } ?>
            </div>
            <div class="index_latest__sp">
              <div class="information_list__caption">
                <p class="information_list__title">
                  <?php the_title(); ?>
                </p>
                <p class="information_list__date">
                  <?php the_time(__('Y.m.d')) ?>
                </p>
              </div>
              <ul class="information_list__tags">
                <?php
                $posttags4 = get_the_tags();
                if ( $posttags4 ) {
                  foreach ( $posttags4 as $tag ) {
                    echo '<li><a href="' . get_tag_link( $tag->term_id ) . '">';
                    echo $tag->name;
                    echo '</a></li>';
                  }
                }
                ?>
              </ul>
            </div>
          </div>
        </li>
        <?php endwhile; ?>
      </ul>
		<div class="navigation">
    <?php
    global $wp_rewrite;
    $paginate_base = get_pagenum_link( 1 );
    if ( strpos( $paginate_base, '?' ) || !$wp_rewrite->using_permalinks() ) {
      $paginate_format = '';
      $paginate_base = add_query_arg( 'paged', '%#%' );
    } else {
      $paginate_format = ( substr( $paginate_base, -1, 1 ) == '/' ? '' : '/' ) .
      user_trailingslashit( 'page/%#%/', 'paged' );;
      $paginate_base .= '%_%';
    }
    echo paginate_links( array(
      'base' => '?paged=%#%',
      'format' => '?paged=%#%',
      'total' => $wp_query->max_num_pages,
      'mid_size' => 4,
      'current' => ( $paged ? $paged : 1 ),
      'prev_text' => 'PREV',
      'next_text' => 'NEXT',
    ) );
    ?>
  </div>
    </div>
  </div>
  
  <?php endif;?>
  <?php get_template_part('bloc/contact_box'); ?>
</div>
</div>
-->






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

<div id="page" class="archive-news">
	<div id="information">
		<div id="top-news-page" class="bg-color-primary">
			<div class="main-ounded-content bg-color-primary">
				<div class="p-side-3-8">
					<div class="max-128">
						
						<!--タブ-->
						<ul class="information_list__tags">
							<li class="active"><p id="#all">ALL</p></li>
							<li><p id="#news">News</p></li>
							<li><p id="#topics">Topics</p></li>
							<li><p id="#tecruit">採用情報</p></li>
							<li><p id="#report">レポート</p></li>
						</ul>
						<!--/タブ-->
						<div class="nformation_list">
							<div id="all" class="information_list__wrap tab-area is-active">
								<ul class="flex-information_list">
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
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_02.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
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
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
							<div id="news" class="information_list__wrap tab-area">
								<ul class="flex-information_list">
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
															<p class="information_list__title">news表示確認泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_02.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
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
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
							<div id="topics" class="information_list__wrap tab-area">
								<ul class="flex-information_list">
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
															<p class="information_list__title">topicsの表示確認泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_02.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
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
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
							<div id="tecruit" class="information_list__wrap tab-area">
								<ul class="flex-information_list">
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
															<p class="information_list__title">tecruitのエリアテスト泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_02.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
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
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									<li>
										<div class="information_list__item">
											 <div class="information_list__card">
												<a href="<?php echo home_url( '/' ); ?>">
													<div class="flex-container">
														<div class="information_list__thumb"><img src="<?php bloginfo('template_url'); ?>/assets/img/news/img_news_03.png" alt=""></div>
														<div class="information_list__caption">
															<span class="information_list__date">2025.03.31</span>
															<ul class="information_list__tags-name">
																<li>Topics</li>
															</ul>
															<p class="information_list__title">泉佐野消防局と合同防災訓練を行いました。</p>
														</div>
													</div>
												 </a>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
							<div id="report" class="information_list__wrap tab-area">
								<ul class="flex-information_list">
									<li>
										<p class="list-none">No date</p>
									</li>
								</ul>
							</div>
						</div>
							<!-- 表示内容：ページネーション（例：前へ / 次へ） -->
						
							<div class="breadcrumb-wrap">
								<?php get_template_part( 'inc/breadcrumb' ); ?>
							  </div>
					</div>
				</div>
			</div>
		</div>
	</div>	
</div >

<!--／HTMLここまで-->













<?php get_template_part( 'inc/footer' ); ?>
