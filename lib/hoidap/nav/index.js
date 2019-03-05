const navCateGory = () =>{
    if(app.checkExist(app.select('.dh-hoidapnav .mobileNav'))){
        app.select('.dh-hoidapnav .mobileNav').addEventListener('click', ()=>{
            app.toggleClass(app.select('.dh-hoidapnav .mobileNav'), 'active')
            app.slideToggle(app.select('.dh-hoidapnav ul'), 500)
        })
    }
}
app.ready(()=>{
    app.avoidNull(navCateGory)
})
