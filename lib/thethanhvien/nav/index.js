const navTheThanhVien = () =>{
    if(app.checkExist(app.select('.dh-thethanhvien-nav .mobileNav'))){
        app.select('.dh-thethanhvien-nav .mobileNav').addEventListener('click', ()=>{
            app.toggleClass(app.select('.dh-thethanhvien-nav .mobileNav'), 'active')
            app.slideToggle(app.select('.dh-thethanhvien-nav ul'), 500)
        })
    }
}
app.ready(()=>{
    app.avoidNull(navTheThanhVien)
})
