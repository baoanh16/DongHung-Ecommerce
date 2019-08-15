$(document).ready(function () {
	$('body').on('click', '.quantity .btn-des', function () {
		var quantityVal = $('.quantity input').val()
		if (quantityVal <= 0) {
			$('.quantity input').val(0)
		} else {
			$('.quantity input').val(+quantityVal - 1)
		}
	})
	$('body').on('click', '.quantity .btn-inc', function () {
		var quantityVal = $('.quantity input').val()
		$('.quantity input').val(+quantityVal + 1)

	})
	////////////////////
	$('body').on('click', '.product-quantity .btn-des', function () {
		var quantityVal = $(this).next().val()
		if (quantityVal <= 0) {
			$(this).next().val(0)
		} else {
			$(this).next().val(+quantityVal - 1)
		}
		$(this).next().trigger('change');
	})
	$('body').on('click', '.product-quantity .btn-inc', function () {
		var quantityVal = $(this).prev().val()
		$(this).prev().val(+quantityVal + 1)
		$(this).prev().trigger('change');
	})

	var smallThumbnailSwiper = new Swiper('.thumbnail-small-wrapper .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 20,
		freeMode: true,
		breakpoints: {
			1200: {
				slidesPerView: 3
			},
			400: {
				slidesPerView: 2.5
			}
		}
	});

	var bigThumbnailSwiper = new Swiper('.thumbnail-big-wrapper .swiper-container', {
		speed: 800,
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
		zoom: {
			maxRatio: 2
		},
		thumbs: {
			swiper: smallThumbnailSwiper
		}
	});


	var bigSwiperSlide = $('.thumbnail-big-wrapper .swiper-slide')
	$(bigSwiperSlide).each(function () {
		bigSwiperSlide.on('click', function (e) {
			bigThumbnailSwiper.zoom.in();
		})
		bigSwiperSlide.on('mouseout', function (e) {
			bigThumbnailSwiper.zoom.out();
		})
	})

	var relatedSliderSwiper = new Swiper('.related-product-slider .swiper-container', {
		speed: 800,
		slidesPerView: 3,
		loop: true,
		loopAdditionalSlides: 2,
		navigation: {
			nextEl: '.related-product .swiper-next',
			prevEl: '.related-product .swiper-prev',
		},
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			480: {
				slidesPerView: 1.5,
				centeredSlides: true
			}
		}
	});

	$('.dh-thethanhvien-nav a').click(function () {
		main.scrollTo(0, $($(this).attr('href')).offset().top, 1500)
		$(this).parent().addClass('active')
		$(this).parent().siblings().removeClass('active')
	});

	$('body').on('click', '.cart-toggle', function () {
		$('.cartpanel').toggleClass('open')
	})

	$('body').on('click', '.btn-closecart', function () {
		$('.cartpanel').removeClass('open')
		$('.cartpanel').css({
			'top': 100 + '%',
			'right': 0,
			'left': 'auto'
		})
	})

	$('.user-form').slideUp(800)
	$('.bill-export-wrapper').slideUp(800)
	$('input#other-address').change(function () {
		if ($(this).prop('checked')) {
			$('.user-form').slideDown(800)
		}
	})
	$('input#same-address').change(function () {
		if ($(this).prop('checked')) {
			$('.user-form').slideUp(800)
		}
	})
	$('input#bill-export').change(function () {
		if ($(this).prop('checked')) {
			$('.bill-export-wrapper').slideDown(800)
		} else {
			$('.bill-export-wrapper').slideUp(800)
		}
	})
	$("body").on("click", "a.ajaxpagerlink", function (e) {
		e.preventDefault();
		let obj = $(this);
		let pageurl = $(this).attr('href');

		$.ajax({
			url: pageurl,
			data: {
				isajax: true
			},
			success: function (data) {
				console.log(data)
				$('.ajaxresponse .ajaxresponsewrap').append($(data).find('.ajaxresponsewrap').html());
				obj.parent().remove();
			}
		});

		if (pageurl != window.location) {
			window.history.pushState({
				path: pageurl
			}, '', pageurl);
		}
		return true;
	});


	main.addListener(({
		offset
	}) => {
		$('.cartpanel.open').css({
			'top': offset.y + 200 + 'px',
			'left': offset.x - 200 + 'px'

		})
	});
});
