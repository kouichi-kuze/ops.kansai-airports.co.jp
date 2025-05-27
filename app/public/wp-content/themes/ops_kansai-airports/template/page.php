<?php get_header(); ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<?php remove_filter('the_content', 'wpautop'); ?>
<section id="page">
	<div class="Breadcrumb">
		<ul id="crumbs">
			<li><a href="<?php echo get_option('home'); ?>">Home</a></li>
			<li><?php the_title(); ?></li>
		</ul>
	</div>
<?php the_content(); ?>

</section>
<?php endwhile; endif; ?>
<?php get_footer(); ?>
