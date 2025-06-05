<?php
/*
Template Name:先輩の声
*/
?>
<?php get_template_part( 'inc/header' ); ?>

<div id="archive-recruit-voices" class="page-archive-voices">
  <!--<div class="sub-page-header　 p-side-3-8">-->
  <div class="bg-color-white">
    <div class="sub-page-lightbulule-header bg-color-lightblue-gradation p-side-3-8">
    
      <!-- パンくずリスト -->
      <div class="breadcrumb-wrap">
      <?php get_template_part( 'inc/breadcrumb' ); ?>
      </div>

      <!-- タイトルとサブタイトル -->
      <div class="page-header__title-flex">
        <div class="blue-under-line-ttl">
        <h1 class="page-header__title">先輩の声</h1>
        <p class="page-header__subtitle">Staff Voice</p>
        </div>
        <p class="page-header__subtext">関西エアポートオペレーションサービスで働く先輩社員から、<br class="d-md-none d-xl-block">担当業務や入社動機などをご紹介させて頂きます。</p>
      </div>
    </div>
  </div>
    <div id="archive-voices">
        
    </div>
      <main id="page-recruit-voices-outline">
      <!--<main id="main-content" class="archive-recruit">-->
        <div id="top-recruit-voices-page" class="bg-color-primary">
          <div class="main-ounded-content bg-color-primary">
            <div class="p-side-3-8">
              <div class="max-128">
                <form method="get" id="voices-filter-form">
                  <div class="select-content">
                    <span class="title">職種</span>
                    <label class="selectbox-blue-under">
                      <select name="vc" onchange="document.getElementById('voices-filter-form').submit()">
                        <option value="">すべて</option>
                        <?php
                        // voices_category タクソノミーの全タームを取得
                        $terms_all = get_terms([
                          'taxonomy'   => 'voices_category',
                          'hide_empty' => true,
                        ]);
                        // 現在選択中のスラッグ
                        $current = isset($_GET['vc']) ? $_GET['vc'] : '';
                        foreach( $terms_all as $term ) {
                          printf(
                            '<option value="%1$s"%2$s>%3$s</option>',
                            esc_attr( $term->slug ),
                            selected( $current, $term->slug, false ),
                            esc_html( $term->name )
                          );
                        }
                        ?>
                      </select>
                    </label>
                  </div>
                </form>
                <div class="recruit-voices-list-card">
                  <?php
                    // フィルタ用パラメータ取得
                    $filter_slug = isset( $_GET['vc'] ) ? sanitize_text_field( $_GET['vc'] ) : '';

                    // WP_Query 用引数
                    $args = [
                      'post_type'      => 'voices',
                      'posts_per_page' => 100,
                      'paged'          => get_query_var('paged', 1),
                    ];

                    if ( $filter_slug ) {
                      $args['tax_query'] = [
                        [
                          'taxonomy' => 'voices_category',
                          'field'    => 'slug',
                          'terms'    => $filter_slug,
                        ]
                      ];
                    }

                    $voices = new WP_Query( $args );
                    ?>
                  <?php if ( $voices->have_posts() ) : ?>
                  <ul class="recruit-voices-list">
                    <?php while ( $voices->have_posts() ) : $voices->the_post(); ?>
                      <li class="recruit-voices-item">
                        <a href="<?php the_permalink(); ?>">
                          <div class="flex">

                            <!-- サムネイル画像 -->
                            <div class="img archive">
                              <?php
                                $thumb_id = get_field( 'voices_thumb_img' );
                                if ( $thumb_id ) {
                                  $image = wp_get_attachment_image_src( $thumb_id, 'large' );
                                  echo '<img src="' . esc_url( $image[0] ) . '" alt="">';
                                }
                              ?>

                            </div>

                            <!-- テキスト部分 -->
                            <div class="text archive">

                              <!-- タイトル -->
                              <h3 class="title"><?php the_title(); ?></h3>

                              <!-- カテゴリ（最初のカテゴリ名） -->
                              <?php
                              // voices_category タクソノミーからタームを取得
                              $terms = get_the_terms( get_the_ID(), 'voices_category' );

                              if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
                                  // 先頭のターム名を表示
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

                                  <?php
                                  $affiliation = get_field('voices_affiliation');
                                  $joining = get_field('voices_joining');
                                  ?>

                                  <!-- 所属場所 -->
                                  <?php if ( $affiliation ) : ?>
                                      <span class="place"><?php echo esc_html( $affiliation ); ?></span>
                                  <?php endif; ?>

                                  <?php if ( $affiliation && $joining ) : ?>
                                      <span class="slash-display">/</span>
                                  <?php endif; ?>

                                  <!-- 入社年 -->
                                  <?php if ( $joining ) : ?>
                                      <span class="Joining"><?php echo esc_html( $joining ); ?></span>
                                  <?php endif; ?>
                                </li>
                                <li class="btn"><span></span></li>
                              </ul>

                            </div>
                          </div>
                        </a>
                      </li>
                    <?php endwhile; ?>
                    
                  </ul>
<!--
                  <?php
                      // ページネーション
                      echo paginate_links([
                        'total'   => $voices->max_num_pages,
                        'current' => max( 1, get_query_var('paged') ),
                      ]);
                      wp_reset_postdata();
                    ?>
                  <?php else : ?>
                    <p>該当する先輩の声はありません。</p>
                  <?php endif; ?>
-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </main >
      <!--/HTMLここまで-->
</div>
				
				
				
<?php get_template_part( 'inc/footer' ); ?>
