// card slider
const swiper = new Swiper('.sample-slider', {
    effect: "cards",
    grabCursor: false,
    pagination: {
        el: '.swiper-pagination',
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
})