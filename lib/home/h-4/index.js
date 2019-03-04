const productAnimate = () => {
	if (window.innerWidth > 992) {
		let el = app.selectAll('.dh-home-4 .item')
		let sec = app.select('.dh-home-4').offsetTop
		let scroll = main.scrollTop
		let e = (sec - scroll) / -10
		if (sec < (scroll + 100)) {
			for (let i = 0; i < el.length; i++) {
				let speed = el[i].getAttribute('data-speed')
				el[i].style.transform = 'translateY(' + (e / speed) + 'px)'
			}
		}
	}
}
main.addListener(function () {
	app.avoidNull(productAnimate)
})
