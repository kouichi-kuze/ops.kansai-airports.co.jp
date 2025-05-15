
document.addEventListener('DOMContentLoaded', () => {
// sp nav
	$(function(){
		$(".menu-trigger").on("click", function(){
			if ($("#header-sm").hasClass("open")) {
			$("#header-sm").removeClass("open");
			} else {
			$("#header-sm").addClass("open");
			}
		});
	});

	//sp nav アコーディオン
	$(".menu-close").each(function () {
		$(this).on("click", function () {
			$(this).toggleClass("open");
			$(this).find(".submenu").slideToggle();
			return false;
		});
	});
	
	
	
	
});








