// ImgZoom
$(document).ready(function () {
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


$('span.fa-stack').hover(
    function() {
        $(this).find('.misc-circle').show();
    },
    function() {
        $('.misc-circle').hide();
    }
);