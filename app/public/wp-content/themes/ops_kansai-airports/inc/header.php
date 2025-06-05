<!DOCTYPE html>
<html lang="ja">
<head>
<?php get_template_part( 'inc/g_tag_head' ); ?>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">
<?php get_template_part( 'inc/head' ); ?>
<?php wp_head(); ?>
<?php get_template_part( 'inc/css' ); ?>
</head>
<body>
<?php get_template_part( 'inc/g_tag_body' ); ?>
<!-- wrapper -->
<div id="wrapper">
<header class="site-header">
<!-- <img src="<?php bloginfo('template_url'); ?>/assets/img/common/logo.svg" alt="関西エアポートオペレーションサービス株式会社"> -->

	<!--pc　headerー-->
	<div  id="header-md">
		<div class="header-bg">
			<h1 class="s-header-logo"> <a href="<?php echo home_url( '/' ); ?>"><img src="<?php bloginfo('template_url'); ?>/assets/img/common/logo.svg" alt="関西エアポートエアポートオペレーションサービス株式会社"></a> </h1>

			<nav class="nav-pc-menu">
			<ul class="nav-list">
			  <li class="nav-item"> 
				  <a class="nav-iink" href="">企業情報 <span>Company</span></a>
				  <div class="secondmenu_outline">
					<ul class="secondmenu">
					  <li class="secondmenu-top_item"> <a class="" href="<?php echo home_url( '/' ); ?>" >企業情報トップ</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>company/">代表メッセージ</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>outline/">会社概要</a> </li>
					</ul>
				  </div>
			  </li>
			  <li class="nav-item"> 
				  <a class="nav-iink" href="<?php echo home_url( '/' ); ?>information">お知らせ <span>Information</span></a>
				  <!--<div class="secondmenu_outline">
					<ul class="secondmenu">
					  <li class="secondmenu-top_item one-link"> <a class="" href="<?php echo home_url( '/' ); ?>information">お知らせトップ</a> </li>
					</ul>
				  </div>-->
			  </li>
			  <li class="nav-item"> 
				  <a class="nav-iink" href="">事業紹介 <span>Service</span></a>
				  <div class="secondmenu_outline">
					<ul class="secondmenu">
					  <li class="secondmenu-top_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/">事業紹介トップ</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>sservices/management/">オペレーションマネジメント事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/security/">警備事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/fire/">消防事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/terminal/">ターミナルマネジメント事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/cart-cleaning/">清掃・カート事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/parking/">駐車場運営事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/cargo/">カーゴエリアオペレーション事業</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>services/fueling/">給油運用事業</a> </li>
					</ul>
				  </div>
			  </li>
			  <li class="nav-item"> 
				  <a class="nav-iink" href="">採用情報 <span>Recruit</span></a>
				  <div class="secondmenu_outline">
					<ul class="secondmenu">
					  <li class="secondmenu-top_item"> <a class="" href="<?php echo home_url( '/' ); ?>recruit/">採用情報トップ</a> </li>
					  <li class="secondmenu_item"> <a class="" href="<?php echo home_url( '/' ); ?>voices/">先輩の声</a> </li>
					</ul>
				  </div>
			  </li>
			  <li class="nav-item"> 
				  <a class="nav-iink" href="<?php echo home_url( '/' ); ?>inquiry/">お問い合わせ <span>Contact</span></a>
				  <!--<div class="secondmenu_outline righa-adj">
					<ul class="secondmenu">
					  <li class="secondmenu-top_item one-link"> <a class="" href="<?php echo home_url( '/' ); ?>inquiry/">お問い合わせトップ</a> </li>
					</ul>
				  </div>-->
			  </li>
			</ul>
		  </nav>

		</div>
	</div>
	<!--sp　header-->
	<div id="header-sm" class="d-xd-none">
	  <div class="header-flex">
		<h1 class="s-header-logo"> <a href="<?php echo home_url( '/' ); ?>"><img src="<?php bloginfo('template_url'); ?>/assets/img/common/logo.svg" alt="関西エアポートエアポートオペレーションサービス株式会社"></a> </h1>
		<div class="menu-trigger menu-bg" href="">
		  <div class="menu-position"> <span></span> <span></span> <span></span> </div>
		</div>
	  </div>
	  <nav class="nav-sp-menu">
		<ul>
		  <li class=""> <a class="menu__item__link" href="<?php echo home_url( '/' ); ?>">トップページ</a> </li>
		  <li class="menu-close"> <a class="menu__item__link js-menu__item__link" href="">企業情報 <span>Company</span></a>
			<ul class="submenu">
			  <li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>company/">代表メッセージ</a> </li>
			  <li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>outline/">会社概要</a> </li>
			</ul>
		  </li>
		  <li class=""> <a class="menu__item__link" href="<?php echo home_url( '/' ); ?>information">お知らせ <span>Information</span></a>
		  </li>
		  <li class="menu-close"> <a class="menu__item__link js-menu__item__link" href="">事業紹介 <span>Service</span></a>
			<ul class="submenu">
				<li class="submenu__item-top">
					<a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/">事業紹介トップ</a>
				</li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/management/">オペレーションマネジメント事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/security/">警備事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/fire/">消防事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/terminal/">ターミナルマネジメント事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/cart-cleaning/">清掃・カート事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/parking/">駐車場運営事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/cargo/">カーゴエリアオペレーション事業</a> </li>
				<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>services/fueling/">給油運用事業</a> </li>
			</ul>
		  </li>
		  <li class="menu-close"> <a class="menu__item__link js-menu__item__link" href="">採用情報 <span>Recruit</span></a>
			<ul class="submenu">
			  	<li class="submenu__item-top">
					<a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>recruit/">採用情報トップ</a>
				</li>
			  	<li class="submenu__item"> <a class="nav-close-menu" href="<?php echo home_url( '/' ); ?>voices/">先輩の声</a> </li>
			</ul>
		  </li>
		  <li class="">
			<a class="menu__item__link" href="<?php echo home_url( '/' ); ?>inquiry/">お問い合わせ <span>Contact</span></a>
		  </li>
		</ul>
	  </nav>
	</div>






</header>