$(document).ready(function () {
	let contentDropdown = $('.dh-hoidap-list .item .hoidap-item .conten')
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
