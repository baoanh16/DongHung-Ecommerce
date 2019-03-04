const fixedElement = () =>{
    main.addListener(function(){
        let scroll = main.scrollTop
        app.select('.grid .lineY').style.transform = 'translateY(' + scroll +'px)'
        app.select('.grid .lineX').style.transform = 'translateY(' + scroll +'px)'
        app.select('.find-shop').style.transform = 'translateY(' + scroll +'px)'
        app.select('.dh-header .main-wrapper').style.transform = 'translateY(' + scroll +'px)'
        app.select('.dh-header .header-wrapper').style.transform = 'translateY(' + scroll +'px)'
    })
}
const inPage = () =>{
    main.addListener(function(){
        let scroll = main.scrollTop
        if (scroll > 368.5){
            app.addClass(app.select('.find-shop'), 'inPage')
        }
        else{
            app.removeClass(app.select('.find-shop'), 'inPage')
        }
    })
}
app.ready(function(){
    fixedElement()
    inPage()
})