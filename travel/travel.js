// $(document).ready(function(){
//     $('.fa-bars').click(function(){
//     $(this).toggleClass('fa-times');
//     $('.navbar').toggleClass('nav-toggle');
//     });
//     $(window).on('load scroll',function(){
//     $('.fa-bars').removeClass('fa-times');
//     $('.navbar').removeClass('nav-toggle');
//     if($(window).scrollTop() > 30){
//     $('header').addClass('header-active');
//     }else{
//     $('header').removeClass('header-active');
//     }
//     $('section').each(function(){
//     var id = $(this).attr('id');
//     var height = $(this).height();
//     var offset = $(this).offset().top - 200;
//     var top = $(window).scrollTop();
//     if(top >= offset && top < offset + height){
//     $('.navbar ul li a').removeClass('active');
//     $('.navbar').find('[data-scroll="' + id +
//    '"]').addClass('active');
//     }
//     });
//     });
//    });
burger = document.querySelector('.burger')
navbar = document.querySelector('.navbar')
navList=document.querySelector('.nav-list')
head=document.querySelector('.head')


burger.addEventListener('click',()=>{
  // navbar.classList.toggle('v-class-resp')
  head.classList.toggle('head-h')
  navList.classList.toggle('v-class-resp')
  // navbar.classList.toggle('h-nav-res')
})

//   logo animation 
// Wrap every letter in a span
var textWrapper = document.querySelector('.ml1 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml1 .letter',
    scale: [0.3,1],
    opacity: [0,1],
    translateZ: 0,
    easing: "easeOutExpo",
    duration: 600,
    delay: (el, i) => 70 * (i+1)
  }).add({
    targets: '.ml1 .line',
    scaleX: [0,1],
    opacity: [0.5,1],
    easing: "easeOutExpo",
    duration: 700,
    offset: '-=875',
    delay: (el, i, l) => 80 * (l - i)
  }).add({
    targets: '.ml1',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });



// animation effects


// Wrap every letter in a span
var textWrapper = document.querySelector('.ml10 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml10 .letter',
    rotateY: [-90, 0],
    duration: 1300,
    delay: (el, i) => 45 * i
  }).add({
    targets: '.ml10',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });