var currentURL = document.location.href;
$('div.header-link.current').removeClass('current');
activeLinks = $('div.header-link a').filter(function () {
    return this.href === currentURL;
}).closest('div.header-link').addClass('current');

//Effet de passage de la souris sur un lien
$(".header-link").not(".current").mouseenter(function(){
    $(this).addClass("hover");
    //$(this).parent().css("margin-top", "-3px")
}).mouseleave(function(){
    $(this).removeClass("hover");
    //$(this).parent().css("margin-top", "")
});