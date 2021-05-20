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