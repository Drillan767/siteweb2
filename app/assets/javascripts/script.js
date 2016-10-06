// ImgZoom
$(document).ready(function () {
    var $container = $('.masonry');

    $container.imagesLoaded(function () {
        $container.masonry({
            itemSelector: '.post-box',
            columnWidth: '.post-box',
            transitionDuration: 0
        });
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

/*
// ImgsLoader
$grid.imagesLoaded().progress( function() {
    $grid.masonry();
});*/
