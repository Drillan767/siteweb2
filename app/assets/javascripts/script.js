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


$('span.fa-stack').hover(
    function() {
        $(this).find('.misc-circle').show();
    },
    function() {
        $('.misc-circle').hide();
    }
);


var Expand = (function() {
    var tile = $('.strips__strip');
    var tileLink = $('.strips__strip > .strip__content');
    var tileText = tileLink.find('.strip__inner-text');
    var stripClose = $('.strip__close');

    var expanded  = false;

    var open = function() {

        var tile = $(this).parent();

        if (!expanded) {
            tile.addClass('strips__strip--expanded');
            // add delay to inner text
            tileText.css('transition', 'all .5s .3s cubic-bezier(0.23, 1, 0.32, 1)');
            stripClose.addClass('strip__close--show');
            stripClose.css('transition', 'all .6s 1s cubic-bezier(0.23, 1, 0.32, 1)');
            expanded = true;
        }
    };

    var close = function() {
        if (expanded) {
            tile.removeClass('strips__strip--expanded');
            // remove delay from inner text
            tileText.css('transition', 'all 0.15s 0 cubic-bezier(0.23, 1, 0.32, 1)');
            stripClose.removeClass('strip__close--show');
            stripClose.css('transition', 'all 0.2s 0s cubic-bezier(0.23, 1, 0.32, 1)')
            expanded = false;
        }
    };

    var bindActions = function() {
        tileLink.on('click', open);
        stripClose.on('click', close);
    };

    var init = function() {
        bindActions();
    };

    return {
        init: init
    };

}());

Expand.init();