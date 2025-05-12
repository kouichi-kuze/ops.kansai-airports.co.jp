<?php get_header();?>
<div id="page">	
<div id="post">
<div class="post_detail">
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<?php the_tags('<ul class="tags"><li>','</li><li>','</li></ul>'); ?>
  <h1 class="title">
    <?php the_title(); ?>
  </h1>
  <div class="date">
    <?php the_time(__('Y.m.d', 'kubrick')) ?>
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
</div>
<?php get_template_part('bloc/contact_box'); ?>
</div>
<?php get_footer(); ?>
