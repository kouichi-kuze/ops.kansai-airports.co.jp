<?php
/*
Template Name:トップページ
*/
?>
<?php get_template_part( 'inc/header' ); ?>
<main id="page-top">

<div id="page-recruit-voices-outline">
    <div class="senior-other-voice-content">
		<!--slide-->
		<div class="slider-head p-side-3-12">
			<p class="title">他の先輩の声を見る</p>
			<div class="arrow_box"><!--矢印--></div>
		</div>
		<div class="p-left-3-12">
			<div class="senior-other-voice-slider">
				<div class="recruit-voices-list-card">
                    <?php
                    // --- シングル記事本体 here ... ---

                    // ここから「他の先輩の声」スライダー用クエリを用意
                    $args = [
                    'post_type'      => 'voices',
                    'posts_per_page' => 5,
                    'post__not_in'   => [ get_the_ID() ], // 今見ている記事は除外
                    'orderby'        => 'date',
                    'order'          => 'DESC',
                    ];
                    $voices = new WP_Query( $args );
                    ?>
					<?php if ( $voices->have_posts() ) : ?>
                    <ul class="recruit-voices-list recruit-voices-slider">
                        <?php while ( $voices->have_posts() ) : $voices->the_post(); ?>
                        <li class="recruit-voices-item">
                            <a href="<?php the_permalink(); ?>">
                            <!-- サムネイル画像 -->
                                <div class="img">
                                <?php
                                if ( has_post_thumbnail() ) {
                                    the_post_thumbnail( 'large' );
                                } elseif ( $thumb_id = get_field( 'voices_thumb_img' ) ) {
                                    echo wp_get_attachment_image( $thumb_id, 'large' );
                                } else {
                                    echo '<img src="' . esc_url( get_template_directory_uri() . '/assets/img/voice/img_page-recruit-voices_01.png' ) . '" alt="' . esc_attr( get_the_title() ) . '">';
                                }
                                ?>
                                </div>

                                <!-- テキスト部分 -->
                                <div class="text">

                                    <!-- 先輩の声専用カテゴリ -->
                                    <?php
                                    $terms = get_the_terms( get_the_ID(), 'voices_category' );
                                    if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
                                        echo '<span class="work">' . esc_html( $terms[0]->name ) . '</span>';
                                    }
                                    ?>

                                    <!-- ボタンエリア -->
                                    <ul class="button-area">
                                        <li class="text">
                                        <!-- 名前イニシャル -->
                                        <?php if ( $val = get_field( 'voices_initial' ) ) : ?>
                                            <span class="name"><?php echo esc_html( $val ); ?></span>
                                        <?php endif; ?>

                                        <!-- 所属場所 -->
                                        <?php if ( $val = get_field( 'voices_affiliation' ) ) : ?>
                                            <span class="place"><?php echo esc_html( $val ); ?> /</span>
                                        <?php endif; ?>

                                        <!-- 入社年 -->
                                        <?php if ( $val = get_field( 'voices_joining' ) ) : ?>
                                            <span class="Joining"><?php echo esc_html( $val ); ?></span>
                                        <?php endif; ?>
                                        </li>
                                        <li class="btn"><span></span></li>
                                    </ul>
                                </div>
                            </a>
                        </li>
                        <?php endwhile; ?>
                    </ul>

                    <?php
                        // ループ後は必ずリセット
                        wp_reset_postdata();
                    ?>

                    <?php else : ?>
                    <p>該当する投稿がありません。</p>
                    <?php endif; ?>
				</div>
			</div>
		</div>
        <div class="btn-bace-round">
            <div class="btn-setting">
                <a href="<?php echo get_option('home'); ?>/recruit/voices/" class="back">先輩の声一覧</a>
            </div>
    </div>
</div>
</main >
<?php get_template_part( 'inc/footer' ); ?>
