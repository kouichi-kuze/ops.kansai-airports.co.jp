<?php get_template_part( 'inc/header' ); ?>
<h1>先輩の声 一覧</h1>

<?php if (have_posts()) : ?>
  <ul>
    <?php while (have_posts()) : the_post(); ?>
      <li>
        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
      </li>
    <?php endwhile; ?>
  </ul>
  <?php the_posts_pagination(); ?>
<?php else : ?>
  <p>投稿がありません。</p>
<?php endif; ?>


<?php get_template_part( 'inc/footer' ); ?>
