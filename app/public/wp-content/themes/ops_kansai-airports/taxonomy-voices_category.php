<?php
/*
Template Name:先輩の声
*/
?>
<?php get_template_part( 'inc/header' ); ?>


<!--<div class="sub-page-header　 p-side-3-8">-->
<main id="archive-voices">
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
  <div id="page-recruit-voices-outline">
    <div id="top-recruit-voices-page" class="bg-color-primary">
      <div class="main-ounded-content bg-color-primary">
        <div class="p-side-15-8">
          <div class="max-128">
                      <?php
          // 現在選択中のスラッグを取得
          if ( is_tax( 'voices_category' ) ) {
              // タクソノミーページのタームオブジェクトからスラッグを取得
              $queried_term = get_queried_object();
              $current = $queried_term->slug;
          } else {
              // GET パラメータがあればそちらを優先、なければ空文字
              $current = isset( $_GET['vc'] ) ? sanitize_text_field( $_GET['vc'] ) : '';
          }
          ?>
          <form method="get" id="voices-filter-form">
          <div class="select-content">
              <span class="title">職種</span>
              <label class="selectbox-blue-under">
              <select name="vc" onchange="document.getElementById('voices-filter-form').submit()">
                  <option value="" <?php selected( $current, '', true ); ?>>すべて</option>
                  <?php
                  $terms_all = get_terms([
                  'taxonomy'   => 'voices_category',
                  'hide_empty' => false,
                  ]);
                  foreach ( $terms_all as $term ) {
                      printf(
                          '<option value="%1$s" %2$s>%3$s</option>',
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
                // クエリ用パラメータ設定
                if ( is_tax('voices_category') ) {
                // タクソノミーページの場合、現在表示中のタームのスラッグを使う
                $queried_term = get_queried_object();
                $filter_slug  = $queried_term->slug;
                } else {
                // GETパラメータがあればそちらを優先
                $filter_slug = isset( $_GET['vc'] ) ? sanitize_text_field( $_GET['vc'] ) : '';
                }

                // WP_Query 用引数
                $args = [
                'post_type'      => 'voices',
                'posts_per_page' => 10,
                'paged'          => get_query_var('paged', 1),
                ];

                // 絞り込み条件をセット
                if ( $filter_slug ) {
                $args['tax_query'] = [[
                    'taxonomy' => 'voices_category',
                    'field'    => 'slug',
                    'terms'    => $filter_slug,
                ]];
                }

                // 並び順を変えたいならここに追加
                // 例：日付降順
                $args['orderby'] = 'date';
                $args['order']   = 'DESC';

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
                            if ( has_post_thumbnail() ) {
                              the_post_thumbnail( 'large' );
                            } elseif ( $thumb_id = get_field( 'voices_thumb_img' ) ) {
                              // ACF Image フィールド（ID 返却設定）の場合
                              echo wp_get_attachment_image( $thumb_id, 'large' );
                            } else {
                              // デフォルト画像
                              echo '<img src="' . esc_url( get_template_directory_uri() . '/assets/img/voice/img_page-recruit-voices_01.png' ) . '" alt="">';
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
                        </div>
                      </a>
                    </li>
                  <?php endwhile; ?>
                  <!--<li class="recruit-voices-item">
                    <a href="<?php the_permalink(); ?>">
                      <div class="flex">
                        <div class="img"><img src="<?php bloginfo('template_url'); ?>/assets/img/voice/img_page-recruit-voices_01.png" alt=""></div>
                        <div class="text">
                          <h3 class="title">新しい出会いと発見、世界と繋がるおもしろさを感じます。</h3>
                          <span class="work">空港インフォメーション業務</span>
                          <ul class="button-area">
                            <li class="text">
                              <span class="name">M.N</span>
                              <span class="place">関西国際空港 / </span>
                              <span class="Joining">●年目（●●●●年入社）</span>
                            </li>
                            <li class="btn"><span></span></li>
                          </ul>
                        </div>
                      </div>
                    </a>
                  </li>-->
                </ul>
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
              </div>
            </div>
          </div>
        </div>
    </div>
  </div >
</main>
<!--/HTMLここまで-->
				
				
				
<?php get_template_part( 'inc/footer' ); ?>
