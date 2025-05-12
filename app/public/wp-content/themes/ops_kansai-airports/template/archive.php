<?php get_template_part( 'inc/header' ); ?>
<div id="page">
<div id="information">
  <h1 class="pg_title"><span>NEWS / EVENT</span></h1>
  <?php if (have_posts()) : ?>
  <?php /* If this is a category archive */ if (is_tag()) { ?>
  <p class="pg_subtitle"><?php printf(__('%s'), single_tag_title('', false) ); ?></p>
  <?php /* If this is a tag archive */ } else { ?>
  <p class="pg_subtitle">ニュース一覧</p>
  <?php } ?>
  <div class="information_list">
    <div class="information_list__wrap">
      <ul>
        <?php while (have_posts()) : the_post(); ?>
        <li>
          <div class="information_list__card"> <a href="<?php the_permalink() ?>" class="information_list__link"></a>
            <div class="information_list__thumb">
              <?php if( get_field('info_thumb') ) { ?>
              <img src="<?php the_field('info_thumb'); ?>" width="456" height="456" alt="" alt="<?php the_title(); ?>"/>
              <?php } else { ?>
              <img src="<?php bloginfo('template_url'); ?>/assets/img/common/noimage.jpg" width="456" height="456" alt=""/>
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
<?php get_template_part( 'inc/footer' ); ?>
