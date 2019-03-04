const lastNavFMapping = new MappingListener({
    selector: '.dh-footer .last-nav',
    mobileWrapper: '.dh-footer .top-nav',
    mobileMethod: 'prependTo',
    desktopWrapper: '.dh-footer .top-nav',
    desktopMethod: 'appendTo',
    breakpoint: 992,
}).watch()

const footerButtonCircle = ()=>{
    let el = app.select('.dh-footer .button .button-circle')
    let offset = app.select('.dh-footer .button .button-main').offsetHeight
    el.style.width = offset + 'px'
    el.style.height = offset + 'px'
}
app.ready(function(){
    app.avoidNull(footerButtonCircle)
})
app.resize(function(){
    app.avoidNull(footerButtonCircle)
})