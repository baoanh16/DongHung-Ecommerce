const navCategory = () =>{
    if(app.checkExist(app.select('.dh-nav .mobileNav'))){
        app.select('.dh-nav .mobileNav').addEventListener('click', ()=>{
            app.toggleClass(app.select('.dh-nav .mobileNav'), 'active')
            app.slideToggle(app.select('.dh-nav ul'), 500)
        })
    }
}
app.ready(()=>{
    app.avoidNull(navCategory)
})