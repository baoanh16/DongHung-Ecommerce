$(document).ready(function () {
	let contentDropdown = $('.dh-hoidap-list .main .hoidap-item .question')
	contentDropdown.on('click', function () {
		if ($(this).next().is(':hidden') === true) {
			$(this).next().slideDown('slow')
			$(this).addClass('active')
		} else {
			$(this).next().slideUp('slow')
			$(this).removeClass('active')
		}
	});
});
