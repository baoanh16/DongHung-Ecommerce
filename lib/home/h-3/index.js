const imageAnimate = ()=>{
    let sec = (app.select('.dh-home-3').offsetTop + 92)
    let scroll = main.scrollTop
    let i =  (scroll - sec) / 5
    if(scroll > (sec - 150)){
        app.select('.dh-home-3 .img').style.transform = 'translateY('+ i + 'px)'
    }
    
}
main.addListener(function(){
    app.avoidNull(imageAnimate)
})