// Ne charger le code que si l'ont est sur la bonne page, sans quoi il y a deux erreurs et 8 alertes
if($('body').is('.portfolio.show')){
    $(document).ready(function(){
    var grid = document.querySelector('.grid');

    var msnry = new Masonry( grid, {
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
    });

    imagesLoaded( grid ).on( 'progress', function() {
        // layout Masonry after each image loads
        msnry.layout();
    });

    $('img.zoom').zoomify();
    })
}

$(document).ready(function(){
    var mouseX, mouseY;
    var ww = $( window ).width();
    var wh = $( window ).height();
    var traX, traY;
    $(document).mousemove(function(e){
        mouseX = e.pageX;
        mouseY = e.pageY;
        traX = ((4 * mouseX) / 570) + 40;
        traY = ((4 * mouseY) / 570) + 50;
        $(".title").css({"background-position": traX + "%" + traY + "%"});
    });
});

// Soulignement des liens de la barre de navigation si on est dans le "bon" domaine
var currentURL = document.location.href.split('/');
$('.layout-link.current').removeClass('current');
activeLinks = $('.layout-link').filter(function () {
    return this.href === 'http://localhost:3000/'+currentURL[3];
}).closest('.layout-link').addClass('current');

// HighlightJS
hljs.initHighlightingOnLoad();

// external js: masonry.pkgd.js, imagesloaded.pkgd.js

// init Isotope


$('span.icon-circle').hover(
    function() {
        $(this).find('.misc-circle').show();
    },
    function() {
        $('.misc-circle').hide();
    }
);
