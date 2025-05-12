<?php
/**
 * @package WordPress
 * @subpackage Default_Theme
 */
 
remove_action( 'wp_head', 'feed_links', 2 );
remove_action( 'wp_head', 'feed_links_extra', 3 );
remove_action( 'wp_head', 'rsd_link' );
remove_action( 'wp_head', 'wlwmanifest_link' );
remove_action( 'wp_head', 'index_rel_link' );
remove_action( 'wp_head', 'wp_generator' );
remove_action( 'wp_head', 'rel_canonical' );
remove_action( 'wp_head', 'wp_shortlink_wp_head');
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');
remove_action( 'wp_head', 'locale_stylesheet' );
remove_action( 'wp_head', 'print_emoji_detection_script',     7    );
remove_action( 'wp_print_styles','print_emoji_styles' );
remove_action('template_redirect', 'rest_output_link_header', 11 );
remove_action('wp_head','rest_output_link_wp_head');
remove_action('wp_head','wp_oembed_add_discovery_links');
remove_action('wp_head','wp_oembed_add_host_js');
remove_action('wp_head','wp_resource_hints',2);
/* インラインスタイル削除 */
function remove_recent_comments_style() {
	global $wp_widget_factory;
	remove_action( 'wp_head', array( $wp_widget_factory->widgets['WP_Widget_Recent_Comments'], 'recent_comments_style' ) );
}
add_action( 'widgets_init', 'remove_recent_comments_style' );

$content_width = 450;

add_theme_support( 'automatic-feed-links' );

if ( function_exists('register_sidebar') ) {
	register_sidebar(array(
		'id' => 'sidebar-1',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h2 class="widgettitle">',
		'after_title' => '</h2>',
	));
}

function remove_my_global_styles() {
	wp_dequeue_style( 'global-styles' );
	wp_dequeue_style( 'global-styles-inline-css' );
}
add_action( 'wp_enqueue_scripts', 'remove_my_global_styles' );

function dequeue_plugins_style() {
    wp_dequeue_style('wp-block-library');
}
add_action( 'wp_enqueue_scripts', 'dequeue_plugins_style');

function remove_classic_theme_style() {
	wp_dequeue_style( 'classic-theme-styles' );
}
add_action( 'wp_enqueue_scripts', 'remove_classic_theme_style' );

//大きい画像の自動リサイズ解除
add_filter( 'big_image_size_threshold', '__return_false' );

//PREV NEXTに任意のclass付与
function add_prev_post_link_class($output) {
  return str_replace('<a href=', '<a class="prev" href=', $output);
}
add_filter( 'previous_post_link', 'add_prev_post_link_class' );

function add_next_post_link_class($output) {
  return str_replace('<a href=', '<a class="next" href=', $output);
}
add_filter( 'next_post_link', 'add_next_post_link_class' );


//固定ページのみクラシックエディタに変更
/*
add_filter( 'use_block_editor_for_post_type', 'hide_block_editor', 10, 10 );
function hide_block_editor( $use_block_editor, $post_type ) {
  if ( $post_type === 'page' ) return false;
  return $use_block_editor;
}
*/

/*
// common.JS追加
function theme_enqueue_scripts() {
	wp_enqueue_script(
	  'theme-common',
	  get_template_directory_uri() . '/assets/js/common.js',
	  [], 
	  filemtime( get_template_directory() . '/assets/js/common.js' ),
	  true  // footer
	);
  }
  add_action( 'wp_enqueue_scripts', 'theme_enqueue_scripts' );
*/

/**
 * パンくずリストを出力する関数
 */
function mytheme_breadcrumb() {
    // トップへのリンク
    $home = '<a href="' . home_url() . '">HOME</a>';
    // 現在のページタイトル取得
    if ( is_singular() ) {
        $title = get_the_title();
        $breadcrumb = $home . ' &raquo; ' . $title;
    }
    elseif ( is_category() ) {
        $cat    = get_queried_object();
        $breadcrumb = $home . ' &raquo; ' . esc_html( $cat->name );
    }
    // ほか archive, search, 404 など必要に応じて分岐を追加
    else {
        $breadcrumb = $home;
    }

    echo '<nav class="breadcrumb">' . $breadcrumb . '</nav>';
}

/**
 * 投稿のスラッグを自動生成：news＋タイムスタンプ
 * 手動でスラッグを設定した場合は上書きしません。
 */
add_filter( 'wp_insert_post_data', 'auto_news_slug', 99, 2 );
function auto_news_slug( $data, $postarr ) {
    // 投稿(post)のみ対象
    if ( $data['post_type'] !== 'post' ) {
        return $data;
    }

    // 管理画面で手動入力がない場合にのみ自動生成
    if ( empty( $postarr['post_name'] ) ) {
        // 数字部分は「年月日時分秒」などユニークになるものを使うのがおすすめ
        $number = date( 'YmdHis' );
        $slug   = 'news' . $number;

        // 英数字のみのスラッグに整形
        $data['post_name'] = sanitize_title( $slug );
    }

    return $data;
}


//投稿を追加
// 1) カスタム投稿タイプ登録 + カテゴリ／タグ紐付け
add_action( 'init', 'register_custom_post_types' );
function register_custom_post_types() {
  // 採用情報
  register_post_type( 'recruit', [
    'label'           => '採用情報',
    'labels'          => [
      'name'          => '採用情報',
      'singular_name' => '採用情報',
      'add_new_item'  => '採用情報を追加',
      'edit_item'     => '採用情報を編集',
      'all_items'     => '採用情報一覧',
    ],
    'public'          => true,
    'has_archive'     => true,
    'rewrite'         => [ 'slug' => 'recruit' ],
    'menu_position'   => 5,
    'supports'        => [ 'title', 'editor', 'thumbnail', 'excerpt' ],
    // ここでカテゴリとタグを紐付け
    'taxonomies'      => [ 'category', 'post_tag' ],
    'show_in_rest'    => true,
  ] );

  // 先輩の声
  register_post_type( 'staffvoice', [
    'label'           => '先輩の声',
    'labels'          => [
      'name'          => '先輩の声',
      'singular_name' => '先輩の声',
      'add_new_item'  => '先輩の声を追加',
      'edit_item'     => '先輩の声を編集',
      'all_items'     => '先輩の声一覧',
    ],
    'public'          => true,
    'has_archive'     => true,
    'rewrite'         => [ 'slug' => 'voices' ],
    'menu_position'   => 6,
    'supports'        => [ 'title', 'editor', 'thumbnail' ],
    // ここでカテゴリとタグを紐付け
    'taxonomies'      => [ 'category', 'post_tag' ],
    'show_in_rest'    => true,
  ] );

  // カテゴリ・タグをカスタム投稿にも有効化
  register_taxonomy_for_object_type( 'category', 'recruit' );
  register_taxonomy_for_object_type( 'post_tag', 'recruit' );
  register_taxonomy_for_object_type( 'category', 'staffvoice' );
  register_taxonomy_for_object_type( 'post_tag', 'staffvoice' );
}

// 管理画面メニューの「投稿」→「お知らせ」に変更
add_action( 'admin_menu', 'rename_post_menu_items' );
function rename_post_menu_items() {
    global $menu, $submenu;
    // メインメニュー
    $menu[5][0] = 'お知らせ';
    // サブメニュー
    $submenu['edit.php'][5][0]  = 'お知らせ一覧';   // 投稿一覧
    $submenu['edit.php'][10][0] = '新規お知らせを追加'; // 新規追加
}

// 投稿オブジェクトのラベル全般を変更
add_action( 'init', 'rename_post_object_labels' );
function rename_post_object_labels() {
    $obj = get_post_type_object( 'post' );
    $labels = &$obj->labels;

    $labels->name               = 'お知らせ';
    $labels->singular_name      = 'お知らせ';
    $labels->add_new            = '新規追加';
    $labels->add_new_item       = 'お知らせを追加';
    $labels->edit_item          = 'お知らせを編集';
    $labels->new_item           = '新規お知らせ';
    $labels->view_item          = 'お知らせを表示';
    $labels->search_items       = 'お知らせを検索';
    $labels->not_found          = 'お知らせは見つかりませんでした';
    $labels->not_found_in_trash = 'ゴミ箱にお知らせはありません';
    $labels->all_items          = 'お知らせ一覧';
    $labels->menu_name          = 'お知らせ';
    $labels->name_admin_bar     = 'お知らせ';
}

?>