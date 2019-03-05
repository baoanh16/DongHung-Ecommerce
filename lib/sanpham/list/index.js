// const showProduct = () => {
// 	if (app.checkExist(app.select('.dh-sanpham'))) {
// 		let num = 9
// 		let el = app.selectAll('.dh-sanpham .package')
// 		for (let i = 0; i < num; i++) {
// 			app.slideDown(el[i], 900)
// 		}
// 		app.select('.dh-sanpham .viewAll a').addEventListener('click', () => {
// 			app.toggleClass(app.select('.dh-sanpham .list-item'), 'active')
// 			app.toggleClass(app.select('.dh-sanpham .viewAll'), 'active')
// 			if (app.select('.dh-sanpham .list-item').classList.contains('active'))
// 				for (let k = num; k < el.length; k++) {
// 					app.slideDown(el[k], 500)
// 				}
// 			else {
// 				for (let k = num; k < el.length; k++) {
// 					app.slideUp(el[k], 500)
// 				}
// 				// scroll to button
// 				let off = app.select('.dh-filter').offsetTop
// 				main.scrollTo(0, off, 600)
// 			}
// 		})
// 	}
// }
// app.ready(() => {
// 	app.avoidNull(showProduct)
// })
