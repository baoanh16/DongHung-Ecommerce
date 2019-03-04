const sliderSync = () =>{
    var swiperTop = new Swiper('.dh-home-2 .swiper-top', {
        // spaceBetween: 10,
        slidesPerView: 5,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        touchRatio: 0,
        speed: 800,
        scrollbar: {
            el: '.dh-home-2 .swiper-scrollbar',
            hide: true,
        },
        breakpoints: {
            768: {
                slidesPerView: 3.5,
                touchRatio: 1,
                freeMode: true
            },
            500: {
                slidesPerView: 2.5,
                touchRatio: 1,
                freeMode: true
            }
        }
    })
    var swiperBottom = new Swiper('.dh-home-2 .swiper-bottom', {
        spaceBetween: 10,
        speed: 800,
        thumbs: {
        swiper: swiperTop
        }})
    }
const progressSlider = () =>{
    let el = app.selectAll('.dh-home-2 .swiper-top .item')
    for (let i = 0;i<el.length;i++){
        el[i].addEventListener('click', function(){
            for (let u = 0; u<el.length; u++){
                app.removeClass(el[u], 'active')
            }
            app.removeClass(el[i], 'active')
            for(let k = 1;k < (i+2);k++){
                app.addClass(app.select('.dh-home-2 .swiper-top .swiper-slide:nth-child('+ k +') .item'), 'active')
            }
            
        })
    }
}
app.ready(function(){
    app.avoidNull(progressSlider)
    app.avoidNull(sliderSync)
})