const collectionSlider = ()=>{
    var slider = new Swiper('.dh-home-5 .swiper-container', {
        speed: 400,
        initialSlide: 0,
        autoHeight: false,
        direction: 'horizontal',
        loop: true,
        autoplay: 5000,
        autoplayStopOnLast: false,
        effect: 'slide',
        spaceBetween: 270,
        slidesPerView: 1.5,
        centeredSlides: true,
        slidesOffsetBefore: 0,
        grabCursor: true,
        breakpoints: {
            992: {
                spaceBetween: 30,
                slidesPerView: 1
            }
        }
    })
}
const slideCircle = () => {
    let wid = app.select('.dh-home-5 .dh-circle').offsetWidth
    app.select('.dh-home-5 .dh-circle').style.height = wid + 'px'
}
app.ready(function(){
    app.avoidNull(slideCircle)
    app.avoidNull(collectionSlider)
})
app.resize(function(){
    app.avoidNull(slideCircle)
})