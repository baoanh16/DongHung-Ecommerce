const toggleHeaderButton = () => {
    app.select('.dh-header .toggle-button').addEventListener('click', function() {
        app.toggleClass(this,'active')
    })
}
const headerInPage = () =>{
    main.addListener(function(){
        let scroll = main.scrollTop
        let header = app.select('.main-wrapper').offsetHeight
        let hei = window.innerHeight - header
        if (app.checkExist(app.select('.homepage'))){
            if(scroll > hei){
                app.addClass(app.select('.dh-header'), 'inPage')
            }
            else{
                app.removeClass(app.select('.dh-header'), 'inPage')
            }
        }
    })
}
const headerOnScroll = () =>{
    main.addListener(function(){
        let scroll = main.scrollTop
        if(scroll > 0){
            app.addClass(app.select('.dh-header'), 'onScroll')
            app.addClass(app.select('.grid'), 'onScroll')
        }
        else{
            app.removeClass(app.select('.dh-header'), 'onScroll')
            app.removeClass(app.select('.grid'), 'onScroll')
        }
    })
}
const toggleHeaderWrapper = () =>{
    app.select('.dh-header .toggle-button').addEventListener('click', function() {
        app.toggleClass(app.select('.dh-header'),'active')
        app.toggleClass(app.select('.grid'),'active')
        app.toggleClass(app.select('.scroll-Animate'),'active')
        // animate
        if(app.select('.dh-header').classList.contains('active') == true){
            let navListActive = app.selectAll('.dh-header .nav-list-active ul li')
            let mainNavActive = app.selectAll('.dh-header .main-nav-active ul li')
            let delay = 0.3
            for (let i = 0; i < navListActive.length; i++){
                navListActive[i].style.transitionDelay = delay + (0.05 * i) + 's'}
            for (let k = 0; k < mainNavActive.length; k++){
                mainNavActive[k].style.transitionDelay = delay + (0.05 * k) + 's'}
            }
        else{
            let navListActive = app.selectAll('.dh-header .nav-list-active ul li')
            let mainNavActive = app.selectAll('.dh-header .main-nav-active ul li')
            for (let i = 0; i < navListActive.length; i++){
            navListActive[i].style.transitionDelay = '0s'
            }
            for (let k = 0; k < mainNavActive.length; k++){
                mainNavActive[k].style.transitionDelay = '0s'
            }
        }
    })
}
const cloneHeaderElemnt = () =>{
    let lastNav = app.select('.dh-header .last-nav').innerHTML
    app.select('.dh-header .nav-list').innerHTML += lastNav
    let mainNav = app.select('.dh-header .nav ul')
    let clone = mainNav.cloneNode(true)
    app.select('.dh-header .main-nav .main-nav-active').appendChild(clone)
}
const navListMapping = new MappingListener({
    selector: '.dh-header .nav-list',
    mobileWrapper: '.dh-header .main-nav .scroll-content',
    mobileMethod: 'prependTo',
    desktopWrapper: '.dh-header .top-nav',
    desktopMethod: 'appendTo',
    breakpoint: 992,
}).watch()
app.ready(function(){
    app.avoidNull(toggleHeaderButton)
    app.avoidNull(headerInPage)
    app.avoidNull(headerOnScroll)
    app.avoidNull(toggleHeaderWrapper)
    app.avoidNull(cloneHeaderElemnt)
})