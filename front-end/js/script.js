//-------------SWIPER-----------------------
const swiper = new Swiper('.mySwiper', {
  // Optional parameters
  slidesPerView: 3,
  freeMode: true,
  loop: true,
  // If we need autoplay
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  breakpoints: {
    0:{
      slidesPerView: 1,
    },
    520:{
      slidesPerView: 2,
    },
    930:{
      slidesPerView: 3,
    },
    1250:{
      slidesPerView: 4,
    },
    1500:{
      slidesPerView: 5,
    },
    1650:{
      slidesPerView: 6,
    }
    
  },
  // And if we need scrollbar
  // scrollbar: {
  //   el: '.swiper-scrollbar',
  // },
});

var swiper2 = new Swiper(".mySwiper2", {
  pagination: {
    el: ".swiper-pagination",
    type: "progressbar",
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

