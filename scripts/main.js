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
});
