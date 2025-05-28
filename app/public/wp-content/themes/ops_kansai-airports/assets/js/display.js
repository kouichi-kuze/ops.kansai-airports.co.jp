
document.addEventListener('DOMContentLoaded', () => {
	gsap.registerPlugin(ScrollTrigger);

	gsap.from('.kv-parts-item-01', {
	x: -1000,
		opacity: 0,
		duration: 1,
		delay: 0.4,           // 0.1秒遅延
		ease: "power2.out",
		scrollTrigger: {
			trigger: '.top-mv',
			start: "top 80%",
			toggleActions: "play none none none"
		}
	});

	gsap.from('.kv-parts-item-02', {
	x: -1000,
		opacity: 0,
		duration: 1,
		delay: 0.8,           // 0.4秒遅延
		ease: "power2.out",
		scrollTrigger: {
			trigger: '.top-mv',
			start: "top 80%",
			toggleActions: "play none none none"
		}
	});

	// kv-fade-01：0.1秒遅延でフェードイン（opacity: 0 → 1）
	gsap.from('.kv-fade-01', {
	opacity: 0,
	duration: 0.8,
	delay: 0,
	ease: "power1.out",
	scrollTrigger: {
		trigger: '.kv-fade-01',
		start: "top 80%",
		toggleActions: "play none none none"
	}
	});

	// kv-fade-02：0.3秒遅延で下から上へフェードイン（opacity + y 移動）
	gsap.from('.kv-fade-02', {
	opacity: 0,
	y: 50,          // 下から 50px 手前にスタート
	duration: 1,
	//delay: 0.5,
	delay: 0,
	ease: "power2.out",
	scrollTrigger: {
		trigger: '.kv-fade-02',
		start: "top 80%",
		toggleActions: "play none none none"
	}
	});

	gsap.utils.toArray('.is-view').forEach(function(element) {
		ScrollTrigger.create({
			trigger: element,
			start: 'top bottom-=20%',
			onEnter: function() {
			// 遅延を挟んで、opacity:0→1, y:50→0 させる
			gsap.to(element, {
				opacity: 1,
				y: 0,
				duration: 0.6,
				ease: "cubic-bezier(0.445, 0.05, 0.55, 0.95)",
				delay: 0.3
			});
			},
			markers: true
		});
	});

	gsap.utils.toArray('.is-fade-view').forEach(function(element) {
		ScrollTrigger.create({
			trigger: element,
			start: 'top bottom-=20%',
			onEnter: function() {
			// 遅延を挟んで、opacity:0→1, y:50→0 させる
			gsap.to(element, {
				opacity: 1,
				y: 0,
				duration: 0.6,
				ease: "cubic-bezier(0.445, 0.05, 0.55, 0.95)",
				delay: 0.3
			});
			},
			markers: true
		});
	});
});

