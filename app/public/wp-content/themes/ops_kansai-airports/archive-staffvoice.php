<?php get_template_part( 'inc/header' ); ?>

<main id="main-content" class="archive-staffvoice">
  <h1>先輩の声一覧</h1>
  <?php if ( have_posts() ) : ?>
    <ul class="staffvoice-list">
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
    <p>まだ先輩の声がありません。</p>
  <?php endif; ?>
</main>

<?php get_template_part( 'inc/footer' ); ?>
