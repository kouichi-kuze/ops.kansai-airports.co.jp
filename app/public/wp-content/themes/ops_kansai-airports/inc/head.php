<?php
// -----------------------
// 投稿・固定ページ・その他共通
$post_id = get_queried_object_id();

// 1) カスタムフィールドからタイトル・ディスクリプション取得
$meta_title       = get_post_meta( $post_id, 'meta_title', true );
$meta_description = get_post_meta( $post_id, 'meta_description', true );

// 2) フォールバック用タイトル・ディスクリプション
if ( is_singular('voices') ) {
  $initial     = get_post_meta( $post_id, 'voices_initial', true );
  $affiliation = get_post_meta( $post_id, 'voices_affiliation', true );

  // initial と affiliation の両方がある場合
  if ( $initial && $affiliation ) {
    $name_part = "{$initial} - {$affiliation}";
  }
  // initial のみある場合
  elseif ( $initial ) {
    $name_part = $initial;
  }
  // affiliation のみある場合
  elseif ( $affiliation ) {
    $name_part = $affiliation;
  }
  // どちらもない場合は空文字
  else {
    $name_part = '';
  }

  // 「｜先輩の声｜会社名」は必ず付与
  $default_title = trim( "{$name_part}｜先輩の声｜関西エアポートオペレーションサービス株式会社", "｜-" );

  // 本文そのまま(description)に使う
  $raw_content = get_post_field( 'post_content', $post_id );
  // 必要なら the_content フィルタを通して整形、タグを落として先頭100語に絞る例
  $default_description = wp_strip_all_tags(
    wp_trim_words(
      apply_filters( 'the_content', $raw_content ),
      100
    )
  );
}
elseif ( is_post_type_archive('voices') ) {
  $default_title = '先輩の声｜関西エアポートオペレーションサービス株式会社';
  $default_description = '関西エアポートオペレーションサービス(株)で働く先輩方の声をご紹介します。';

} elseif ( is_post_type_archive('recruit') ) {
  $default_title = '採用情報｜関西エアポートオペレーションサービス株式会社';
  $default_description = '関西エアポートオペレーションサービス株式会社の新卒/その他採用の募集要項や、先輩社員の声などを掲載しています。';

} elseif ( is_category() || ( is_archive() && get_query_var('cat') ) || ( isset($_GET['cat']) ) ) {
  if ( is_category() ) {
    $category = get_queried_object();
  } elseif ( get_query_var('cat') ) {
    $cat_id = get_query_var('cat');
    $category = get_category( $cat_id );
  } elseif ( isset($_GET['cat']) ) {
    $cat_slug = sanitize_text_field( $_GET['cat'] );
    $category = get_category_by_slug( $cat_slug );
  }

  if ( isset($category->name) ) {
    $default_title = $category->name . '｜お知らせ｜関西エアポートオペレーションサービス株式会社';
    $default_description = '関西エアポートオペレーションサービス株式会社の「' . $category->name . '」に関するお知らせ一覧です。';
  } else {
    $default_title = 'お知らせ｜関西エアポートオペレーションサービス株式会社';
    $default_description = '関西エアポートオペレーションサービス株式会社からの「お知らせ」一覧です。';
  }

} elseif ( is_singular('post') ) {
  global $post;
  $default_title = get_the_title( $post_id ) . '｜お知らせ｜関西エアポートオペレーションサービス株式会社';

  // 本文を取得して整形し、タグ除去＋先頭100語へ
  $raw_content = apply_filters( 'the_content', $post->post_content );
  $default_description = wp_strip_all_tags( wp_trim_words( $raw_content, 100 ) );
  
} elseif ( is_archive() ) {
  $default_title = 'お知らせ｜関西エアポートオペレーションサービス株式会社';
  $default_description = '関西エアポートオペレーションサービス株式会社からの「お知らせ」一覧です。';

} else {
  $default_title = is_front_page()
    ? get_bloginfo( 'name' )
    : get_the_title( $post_id ) . '｜関西エアポートオペレーションサービス株式会社';
  $default_description = is_singular()
    ? wp_strip_all_tags( get_the_excerpt( $post_id ) )
    : get_bloginfo( 'description' );
}

// 3) OGP画像の取得
$ogp_id = get_post_meta( $post_id, 'img_ogp', true );
if ( $ogp_id ) {
  $ogp_url = wp_get_attachment_image_url( $ogp_id, 'full' );
} else {
  $ogp_url = get_template_directory_uri() . '/assets/img/common/ogp.png';
}

// 4) 現在のページ URL を取得
if ( is_front_page() || is_home() ) {
  $current_url = home_url( '/' );
} elseif ( is_singular() ) {
  $current_url = get_permalink();
} elseif ( is_post_type_archive() ) {
  $current_url = get_post_type_archive_link( get_post_type() );
} elseif ( is_category() ) {
  $current_url = get_category_link( get_queried_object_id() );
} else {
  $current_url = home_url( add_query_arg( null, null ) );
}
$current_url = esc_url( $current_url );

// 最終的に使うタイトル／ディスクリプション
$output_title       = esc_html( $meta_title ?: $default_title );
$output_description = esc_attr( $meta_description ?: $default_description );
?>
<title><?php echo esc_html( $meta_title ?: $default_title ); ?></title>
<meta name="description" content="<?php echo esc_attr( $meta_description ?: $default_description ); ?>">
<link rel="canonical" href="<?php echo $current_url; ?>">
<!-- Open Graph（SNSシェア用） -->
<meta property="og:site_name" content="関西エアポートオペレーションサービス株式会社">
<meta property="og:type" content="article">
<meta property="og:title" content="<?php echo esc_html( $meta_title ?: $default_title ); ?>">
<meta property="og:description" content="<?php echo esc_attr( $meta_description ?: $default_description ); ?>">
<meta property="og:url" content="<?php echo $current_url; ?>">
<meta property="og:image" content="<?php echo esc_url( $ogp_url ); ?>">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<!--<meta name="twitter:site" content="@xxxxx">-->
<meta name="twitter:title" content="<?php echo esc_html( $meta_title ?: $default_title ); ?>">
<meta name="twitter:description" content="<?php echo esc_attr( $meta_description ?: $default_description ); ?>">
<meta name="twitter:image" content="<?php echo esc_url( $ogp_url ); ?>">

<!--icons-->
<!--<link rel="icon" href="<?php bloginfo('template_url'); ?>/assets/img/common/favicon.ico">-->
<link rel="apple-touch-icon" sizes="180x180" href="<?php bloginfo('template_url'); ?>/assets/img/common/apple-touch-icon.png">
<link rel="icon" type="image/png" href="<?php bloginfo('template_url'); ?>/assets/img/common/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="<?php bloginfo('template_url'); ?>/assets/img/common/favicon-16x16.png" sizes="16x16">
