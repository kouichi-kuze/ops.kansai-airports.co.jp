<?php get_template_part( 'inc/header' ); ?>

<mai id="single-voices">
    <div class="bg-color-staffvoicebg header-bg-half-color">
        <div class="sub-page-lightbulule-header bg-color-lightblue-gradation">
        
        <!-- パンくずリスト -->
        <div class="breadcrumb-wrap p-side-15-8">
            <?php get_template_part( 'inc/breadcrumb' ); ?>
        </div>

        <!-- タイトルとサブタイトル -->
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

            <div class="hero-voices">
                <div class="blue-under-line-ttl p-side-15-8">
                    <h1 class="page-header__title">先輩の声</h1>
                    <p class="page-header__subtitle">Staff Voice</p>
                </div>

<!--
                <?php
                // サムネイル画像 (voices_thumb_img)
                $thumb_id = get_field('voices_thumb_img');
                if ( $thumb_id ) :
                    echo '<div class="head-senior-img">';
                    echo wp_get_attachment_image( $thumb_id, 'large', false, [
                    'alt' => get_the_title(),
                    ] );
                    echo '</div>';
                endif;
                ?>
-->

                <?php
                // 投稿にアイキャッチ画像 (voices_thumb_img)があるかチェック
                if ( has_post_thumbnail() ) :
                    echo '<div class="head-senior-img">';
                    the_post_thumbnail( 'large', [
                        'alt' => get_the_title(),
                    ] );
                    echo '</div>';
                endif;
                ?>                
                
                
                <div class="head-senior-text p-side-15-8">

                <!-- タイトル：投稿タイトル -->
                <h2 class="title"><?php the_title(); ?></h2>

                <!-- 業務内容：最初のカテゴリ名 -->
                <?php
                // voices_category タクソノミーからタームを取得
                $terms = get_the_terms( get_the_ID(), 'voices_category' );

                if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
                // 先頭のターム名を表示
                echo '<span class="work">' . esc_html( $terms[0]->name ) . '</span>';
                }
                ?>

                <!-- 名前イニシャル -->
                <?php if ( $val = get_field('voices_initial') ) :
                    echo '<span class="name">' . esc_html( $val ) . '</span>';
                endif; ?>

                <!-- 部署名情報 -->
                <?php if ( $val = get_field('voices_department-name') ) :
                    echo '<span class="department">' . esc_html( $val ) . '</span>';
                endif; ?>

                <!-- 所属場所 -->
                <?php if ( $val = get_field('voices_affiliation') ) :
                    echo '<span class="place">' . esc_html( $val ) . ' /</span>';
                endif; ?>

                <!-- 入社年 -->
                <?php if ( $val = get_field('voices_joining') ) :
                    echo '<span class="Joining">' . esc_html( $val ) . '</span>';
                endif; ?>

                </div>
                
            </div>
            <?php endwhile; endif; ?>
            
        </div>
    </div>

    <div id="page-recruit-voices-outline">
        <div id="single-recruit-voices-page">
            <div class="main-ounded-content bg-color-primary">
                <?php
                    if ( have_posts() ) :
                    while ( have_posts() ) : the_post();
                                the_content();
                    endwhile;
                    endif;
                ?>
                
                <?php
                // ACF フィールドを取得
                $display = get_field( 'recruit_link_display' );               // 真偽フィールド
                $url     = get_field( 'voice_recruit_btn_detail_link' );     // URL フィールド

                if ( $display ) :  // 表示する場合だけ出力
                ?>
                <div class="btn-wrap center recruit-detail">
                    <a class="hover-ani" href="<?php echo esc_url( $url ); ?>">
                    <div class="btn-bace-round">
                        <div class="btn-setting pink btnico-link btn-md">
                        この業種の採用情報はこちら
                        </div>
                    </div>
                    </a>
                </div>
                <?php
                endif;
                ?>
                
                
            <div class="requruit-btn">
                <a class="btn-voice" href="<?php echo get_option('home'); ?>/voices/" class="back">この業種の採用情報はこちら</a>
            </div>
                
                
            </div>
            
            
            
        </div>
        
        
        
        
        
    </div>

		<div class="senior-other-voice-content">
			<div class="senior-other-voice-inner">
                <div class="slider-content">
                    <div class="senior-other-voice-slider">
                        <div class="recruit-voices-list-card">
                            <div class="senior-other-voice-head">
                                <h2 class="senior-other-voice-head-title">他の先輩の声を見る</h2>
                                <div class="recruit-voices-slide-arrow"><!--矢印--></div>
                            </div>
                            <?php
                            // --- シングル記事本体 here ... ---

                            // ここから「他の先輩の声」スライダー用クエリを用意
                            $args = [
                            'post_type'      => 'voices',
                            'posts_per_page' => 10,
                            'post__not_in'   => [ get_the_ID() ], // 今見ている記事は除外
                            'orderby'        => 'date',
                            'order'          => 'DESC',
                            ];
                            $voices = new WP_Query( $args );
                            ?>
                            <?php if ( $voices->have_posts() ) : ?>
                            
                            <ul class="recruit-voices-page-contents-list">
                                <?php while ( $voices->have_posts() ) : $voices->the_post(); ?>
                                <li class="recruit-voices-page-contents-list-item">
                                    <a href="<?php the_permalink(); ?>">
                                    <!-- サムネイル画像 -->
                                        <div class="voices-img">
                                            <?php
                                            if ( has_post_thumbnail() ) {
                                                the_post_thumbnail( 'large' );
                                            } elseif ( $thumb_id = get_field( 'voices_thumb_img' ) ) {
                                                echo wp_get_attachment_image( $thumb_id, 'large' );
                                            } else {
                                                echo '<img clss="img-voice-slide" src="' . esc_url( get_template_directory_uri() . '/assets/img/voice/img_page-recruit-voices_01.png' ) . '" alt="' . esc_attr( get_the_title() ) . '">';
                                            }
                                            ?>
                                        </div>

                                        <!-- テキスト部分 -->
                                        <div class="text-voice-slide">
                                            <!-- 先輩の声専用カテゴリ -->
                                            <?php
                                            $terms = get_the_terms( get_the_ID(), 'voices_category' );
                                            if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
                                                echo '<span class="work">' . esc_html( $terms[0]->name ) . '</span>';
                                            }
                                            ?>

                                            <!-- ボタンエリア -->
                                            <ul class="voices-desc-area">
                                                <li class="voices-button-area-text">
                                                    <!-- 名前イニシャル -->
                                                    <?php if ( $val = get_field( 'voices_initial' ) ) : ?>
                                                        <span class="name"><?php echo esc_html( $val ); ?></span>
                                                    <?php endif; ?>

                                                    <div class="voices-button-area-text-bottom">
                                                        <!-- 所属場所 -->
                                                        <?php if ( $val = get_field( 'voices_affiliation' ) ) : ?>
                                                            <span class="place"><?php echo esc_html( $val ); ?></span>
                                                        <?php endif; ?>

                                                        <!-- 入社年 -->
                                                        <?php if ( $val = get_field( 'voices_joining' ) ) : ?>
                                                            <span class="Joining"><?php echo esc_html( $val ); ?></span>
                                                        <?php endif; ?>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="voices-button-area-btn"><span></span></div>
                                            
                                            
                                            
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
			</div>
            <div class="slider-head-btn">
                <a class="btn-voice" href="<?php echo get_option('home'); ?>/voices/" class="back">先輩の声一覧</a>
            </div>
		</div>
    <!--/HTMLここまで-->
</main>
<?php get_template_part( 'inc/footer' ); ?>