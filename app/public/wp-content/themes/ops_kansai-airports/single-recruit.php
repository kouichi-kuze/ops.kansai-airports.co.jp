<?php get_template_part( 'inc/header' ); ?>

<div id="main-content" class="single-recruit">
<div id="page">	
<div id="post">
	
<!--HTMLここから-->
<div class="sub-page-header p-side-3-8">
  <!-- パンくずリスト -->
  <div class="breadcrumb-wrap">
    <?php get_template_part( 'inc/breadcrumb' ); ?>
  </div>
  

  <!-- タイトルとサブタイトル -->
  <div class="page-header__titles">
    <h1 class="page-header__title">採用情報</h1>
    <p class="page-header__subtitle">Recruit</p>
  </div>
</div>
	
	
<!--	<div id="top-recruit-page" class="bg-color-primary">-->
	<div id="single-recruit-page" class="bg-color-primary">
		<div class="main-ounded-content bg-color-primary">
			<div class="p-side-15-8">
				<div class="max-128">
					<h2 class="bottom-border-bulue-ttl">募集要項</h2>
	
<div class="post_detail">
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<div class="post_detail-head">
		<?php the_tags('<ul class="tags"><li>','</li><li>','</li></ul>'); ?>
		<h1 class="title">
		<?php the_title(); ?>
		</h1>
	</div>

<!--
<div class="date">
    <?php the_time(__('Y.m.d', 'kubrick')) ?>
</div>
-->
<div class="entry">
	<div class="recruit-info-table-outer">
		<dl class="recruit-info-table">
			<dt class="title">シフト/勤務時間</dt>
			<dd class="text">3週間を平均して週40時間勤務<br>
							（1）10時00分　～　翌朝10時00分（8時間　休憩及び仮眠時間）<br>
							（2）10時00分　～　19時00分（1時間休憩）<br>
							（3）17時00分　～　翌朝10時00分（1時間休憩）</dd>
		</dl>
		<dl class="recruit-info-table">
			<dt class="title">タイトルタイトル</dt>
			<dd class="text">テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト</dd>
		</dl>
		<dl class="recruit-info-table">
			<dt class="title">応募方法</dt>
			<dd class="text">電話連絡の上、『履歴書(JIS規格）』（写真貼付）をご郵送下さい。<br>
							※応募書類は返却いたしませんので予めご了承ください。<br>
							※書類選考の後、試験日、時間、試験会場など、詳細を通知します。<br>
							※応募時には「<a href="" class="border-bt-link"><span class="underline">個人情報の利用に関する同意書</span><span class="pdf">pdf</span></a>」を同封してください。</dd>
		</dl>
		<dl class="recruit-info-table">
			<dt class="title">問い合わせ</dt>
			<dd class="text">関西エアポートオペレーションサービス株式会社　 管理部　総務人事グループ<br>
						Tel.<a href="tel:092-455-4980" class="tel border-bt-link"><span class="underline">092-455-4980</span></a>	（平日9:00～17:00）</dd>
		</dl>
		
	</div>
<?php the_content(); ?>
	
</div>
<!--
<div class="navigation">

  <?php previous_post_link( '%link', 'PREV', TRUE ) ?>

  <a href="<?php echo get_option('home'); ?>/category/news/" class="back">BACK TO INDEX</a>

  <?php next_post_link( '%link', 'NEXT', TRUE ) ?>

</div>
-->
<?php endwhile; else: ?>
<?php endif; ?>
  
</div>
	
						<!-- 表示内容：ページネーション（例：前へ / 次へ） -->
						<!-- 条件：投稿が1件もない場合 -->
<!--							<p class="list-none">まだ採用情報がありません。</p>-->
						<!-- 表示内容：投稿が存在しないときのメッセージ -->
				</div>
			</div>
		</div>
<!--リクルート共通パーツ-->
<?php get_template_part( 'parts/bnr_requruit' ); ?>
<!--/リクルート共通パーツ-->
	</div>
<!--/HTMLここまで-->
					
					
</div>
<?php get_template_part('bloc/contact_box'); ?>
</div>
</div>
	
<?php get_template_part( 'inc/footer' ); ?>

<?php get_template_part( 'inc/header' ); ?>
<div class="breadcrumb-wrap">
    <?php get_template_part( 'inc/breadcrumb' ); ?>
</div>
<?php get_template_part( 'inc/footer' ); ?>