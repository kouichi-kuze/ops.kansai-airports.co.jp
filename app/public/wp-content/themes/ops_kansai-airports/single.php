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


<div id="page" class="archive-news">
	<div id="information">
		<div id="top-news-page" class="bg-color-primary">
			<div class="main-ounded-content bg-color-primary">
				<div class="p-side-3-8">
					<div class="max-128">
						
						
	
<!--<div id="post">-->
<div class="post_detail">
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<?php the_tags('<ul class="tags"><li>','</li><li>','</li></ul>'); ?>
  <h1 class="title">
    <?php the_title(); ?>
  </h1>
	<div class="date-cat-content">
		  <span class="date">
			<?php the_time(__('Y.m.d', 'kubrick')) ?>
		  </span>
		<ul class="categry"><li><?php
		$category_links = array();
		$categories = get_the_category();
		if ( $categories ) {
		  foreach ( $categories as $category ) {
			$category_links[] = '<a href="' . esc_url( get_category_link( $category->term_id ) ) . '">' . esc_html( $category->name ) . '</a>';
		  }
		  echo implode( '</li><li>', $category_links );
		}
		?></li></ul>
	</div>
	
	
	
	
  <div class="entry">
    <?php the_content(); ?>
  </div>
  <div class="navigation">
   
      <?php previous_post_link( '%link', 'PREV', TRUE ) ?>
    
	  <a href="<?php echo get_option('home'); ?>/category/news/" class="back">BACK TO INDEX</a>
  
      <?php next_post_link( '%link', 'NEXT', TRUE ) ?>
    
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
