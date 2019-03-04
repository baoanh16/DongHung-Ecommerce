const otherNewsSlide = () =>{
    var slider = new Swiper ('.dh-tinkhac .swiper-container',{
        slidesPerView: 2,
        breakpoints: {
            992: {
                slidesPerView: 1
            }
        },
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.dh-tinkhac .swiper-next',
            prevEl: '.dh-tinkhac .swiper-prev'
        }
    })
}
app.ready(()=>{
    app.avoidNull(otherNewsSlide)
})