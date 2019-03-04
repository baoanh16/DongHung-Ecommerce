const main = Scrollbar.init(app.select('.scroll-Animate'), {
	damping: 0.11,
	thumbMinSize: 36,
	renderByPixels: false,
	alwaysShowTracks: false,
	continuousScrolling: false
})
if (window.innerWidth < 992) {
	const headerMainNav = Scrollbar.init(app.select('.dh-header .main-nav'), {
		damping: 0.11,
		thumbMinSize: 36,
		renderByPixels: false,
		alwaysShowTracks: false,
		continuousScrolling: false
	})
}
