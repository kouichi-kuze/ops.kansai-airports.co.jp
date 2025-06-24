<?php
/*
Template Name:クッキーポリシー
*/
?>
<?php get_template_part( 'inc/header' ); ?>


<div class="sub-page-header p-side-3-8">
  <!-- パンくずリスト -->
  <div class="breadcrumb-wrap">
    <?php get_template_part( 'inc/breadcrumb' ); ?>
  </div>
  
  <!-- タイトルとサブタイトル -->
  <div class="page-header__titles">
    <h1 class="page-header__title">クッキーポリシー</h1>
    <p class="page-header__subtitle">Cookie Policy</p>
  </div>
</div>
<main id="page-cookie-policy">
	<div class="sub-page-main">
		<div class="p-side-3-8">
			<div class="max-112">
				<section class="policy-content-box">
					<h3 class="left-pinkline-ttl">はじめに</h3>
					<p>当社は、当サイトにおいて、当サイト上のサービス（以下、「サービス」という。）の分析、改善またはお客様により適したサービスを提供するため、クッキーを使用します。 <br>クッキーとは、お客様がウェブサイトにアクセスした際の情報を、お客様の端末に記憶させる機能です。当社は、クッキーの使用を通じて特定のお客様を識別することはなく、個人情報を取得するものではありません。<br>お客様は、ブラウザの設定により、クッキーの利用を無効化することが可能です。 ただし、当社が使用するクッキーには、当サイトの運営に必要不可欠なものや、当サイトの利用を向上させるものが含まれます。そのため、クッキーの利用が無効化されている場合、当サイトが正常に動作せず、サービスの一部が利用できないことや、当サイトの利便性が低下することがあります。</p>
				</section>
				<section class="policy-content-box">
					<h3 class="left-pinkline-ttl">当社が使用するクッキーの種類</h3>
					<p>当社が使用するクッキーには、以下の種類があります。</p>

					<!-- OneTrust Cookie 設定ボタンの始点 -->
					<button id="ot-sdk-btn" class="ot-sdk-show-settings">Cookie 設定</button>
					<!-- OneTrust Cookie 設定ボタンの終点 -->
					<br><br>
					<!-- OneTrust Cookie リストの始点 -->
					<div id="ot-sdk-cookie-policy"></div>
					<!-- OneTrust Cookie リストの終点 -->
					
					<!--<div class="table-content">
						<h4>クッキーリスト</h4>
						<p>クッキーとは小さなデータファイル (テキストファイル) で、ユーザーがウェブサイトを訪問した際のユーザーの言語設定やログイン情報などを記憶するため、ウェブサイトがブラウザにデバイス上に保存するよう要求するものです。このようなクッキーは弊社が設定するもので、ファーストパーティークッキーと呼ばれます。弊社ではサードパーティクッキーも使用していますが、これは訪問したウェブサイトのドメインとは異なるドメインから来ているクッキーで、弊社の広告とマーケティング活動をサポートするためのものです。より具体的には、弊社では、以下のような利用目的のためにクッキーと他のトラッキング技術を使用しています。</p>
						
						<h5>厳密に必要なクッキー</h5>
						<p class="mb-ss">このクッキーはウェブサイトが正常に機能するために必要なもので、利用者のシステム内でスイッチをオフにすることはできません。これらは通常、プライバシー設定、ログイン、フォームへの入力など、サービスのリクエストに相当するユーザーのアクションに応じてのみ設定されます。このクッキーをブロック/警告するようにブラウザを設定することは可能ですが、サイトの一部が機能しなくなります。このクッキーが個人を特定できる情報を保存することはありません。</p>
						<table class="cookie-table">
							<caption class="ot-scrn-rdr">
							  厳密に必要なクッキー
							  </caption>
							<thead>
								<tr>
								<th scope="col" class="ot-table-header ot-host">クッキーサブグループ</th>
								<th scope="col" class="ot-table-header ot-cookies">クッキー</th>
								<th scope="col" class="ot-table-header ot-cookies-type">使用されているクッキー</th>
							  </tr>
							  </thead>
							<tbody>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span>.www.ops.kansai-airports.co.jp</td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content"> <a href="https://cookiepedia.co.uk/cookies/OptanonAlertBoxClosed" rel="noopener" target="_blank" aria-label="OptanonAlertBoxClosed 新しいタブで開く"> OptanonAlertBoxClosed </a></span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">ファーストパーティ</span></td>
							  </tr>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span>www.ops.kansai-airports.co.jp</td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content"> <a href="https://cookiepedia.co.uk/cookies/OptanonConsent" rel="noopener" target="_blank" aria-label="OptanonConsent 新しいタブで開く"> OptanonConsent </a></span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">ファーストパーティ</span></td>
							  </tr>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span><a href="https://cookiepedia.co.uk/host/job.mynavi.jp" rel="noopener" target="_blank" aria-label="job.mynavi.jp 新しいタブで開く"> job.mynavi.jp </a></td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content">COOKIE200</span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">サードパーティ</span></td>
							  </tr>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span><a href="https://cookiepedia.co.uk/host/kansai-airport.or.jp" rel="noopener" target="_blank" aria-label="kansai-airport.or.jp 新しいタブで開く"> kansai-airport.or.jp </a></td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content">visid_incap_, incap_ses_</span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">サードパーティ</span></td>
							  </tr>
							  </tbody>
					  </table>
						
						<h5>パフォーマンス クッキー</h5>
						<p class="mb-ss">このクッキーにより訪問者数と通信トラフィックソースがカウントできるようになり、弊社サイトのパフォーマンスを判断し改善する際に役立ちます。最も人気があるページ、人気が低いページを確認したり、訪問者がサイト内をどのように移動するかを理解するのに役立ちます。これらのクッキーが収集するすべての情報はひとつにまとめられるので、匿名性が保たれています。このクッキーを受け入れなければ、利用者が弊社サイトを訪問しても、弊社にはわかりません。</p>
                        <table class="cookie-table">
							<caption class="ot-scrn-rdr">
							  パフォーマンス クッキー
							  </caption>
							<thead>
								<tr>
								<th scope="col" class="ot-table-header ot-host">クッキーサブグループ</th>
								<th scope="col" class="ot-table-header ot-cookies">クッキー</th>
								<th scope="col" class="ot-table-header ot-cookies-type">使用されているクッキー</th>
							  </tr>
							  </thead>
							<tbody>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span>kansai-airports.co.jp</td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content"> <a href="https://cookiepedia.co.uk/cookies/_gid" rel="noopener" target="_blank" aria-label="_gid 新しいタブで開く"> _gid </a>, <a href="https://cookiepedia.co.uk/cookies/_gat_UA-nnnnnnn-nn" rel="noopener" target="_blank" aria-label="_gat_UA-nnnnnnn-nn 新しいタブで開く"> _gat_UA-nnnnnnn-nn </a></span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">ファーストパーティ</span></td>
							  </tr>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span>co.jp</td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content"> <a href="https://cookiepedia.co.uk/cookies/_ga_NZ1V1VS7JF" rel="noopener" target="_blank" aria-label="_ga_NZ1V1VS7JF 新しいタブで開く"> _ga_NZ1V1VS7JF </a>, <a href="https://cookiepedia.co.uk/cookies/_ga" rel="noopener" target="_blank" aria-label="_ga 新しいタブで開く"> _ga </a></span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">ファーストパーティ</span></td>
							  </tr>
							  </tbody>
                      </table>
						
						<h5>ターゲティング クッキー</h5>
						<p class="mb-ss">このクッキーは、弊社の広告パートナーにより弊社サイト経由で設定される場合があります。これらの企業は利用者の関心事のプロファイルを作成し、他のサイトでも関連する広告を表示するためなどにこのクッキーを使用します。このクッキーが個人情報を直接保存することはありません。利用者のブラウザとインターネットデバイスを一意的に識別します。このクッキーを受け入れなければ、ターゲットを絞らないより一般的な広告が表示されるようになります。</p>
                        <table class="cookie-table">
							<caption class="ot-scrn-rdr">
							  ターゲティング クッキー
							  </caption>
							<thead>
								<tr>
								<th scope="col" class="ot-table-header ot-host">クッキーサブグループ</th>
								<th scope="col" class="ot-table-header ot-cookies">クッキー</th>
								<th scope="col" class="ot-table-header ot-cookies-type">使用されているクッキー</th>
							  </tr>
							  </thead>
							<tbody>
								<tr>
								<td class="ot-host-td" data-label="クッキーサブグループ"><span class="ot-mobile-border"></span>kansai-airports.co.jp</td>
								<td class="ot-cookies-td" data-label="クッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-td-content"> <a href="https://cookiepedia.co.uk/cookies/_gat_gtag_xxxxxxxxxxxxxxxxxxxxxxxxxxx" rel="noopener" target="_blank" aria-label="_gat_gtag_xxxxxxxxxxxxxxxxxxxxxxxxxxx 新しいタブで開く"> _gat_gtag_xxxxxxxxxxxxxxxxxxxxxxxxxxx </a></span></td>
								<td class="ot-cookies-type" data-label="使用されているクッキー"><span class="ot-mobile-border"></span> <span class="ot-cookies-type-td-content">ファーストパーティ</span></td>
							  </tr>
							  </tbody>
	                      </table>
						
					</div>-->
				</section>
				
				<section class="policy-content-box">
					<div class="dot-ttl">関西エアポートオペレーションサービス株式会社　お問い合わせ窓口</div>
					<div class="contact">
						<p class="mail"><a href="mailto:kikakukanri@ops.kansai-airports.co.jp" target="_blank">kikakukanri@ops.kansai-airports.co.jp</a></p>
					</div>
				</section>
			
			</div>
		</div>
	</div>
</main >
<?php get_template_part( 'inc/footer' ); ?>
