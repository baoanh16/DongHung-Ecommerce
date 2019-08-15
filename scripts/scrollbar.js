const main = Scrollbar.init(document.body, {
	damping: 0.11,
	thumbMinSize: 36,
	renderByPixels: false,
	alwaysShowTracks: false,
	continuousScrolling: false,
	syncCallbacks: true
})
if (window.innerWidth < 992) {
	const headerMainNav = Scrollbar.init(document.querySelector('.dh-header .main-nav'), {
		damping: 0.11,
		thumbMinSize: 36,
		renderByPixels: false,
		alwaysShowTracks: false,
		continuousScrolling: false
	})
}
