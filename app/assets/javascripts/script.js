var currentURL = document.location.href;
$('.layout-link.current').removeClass('current');
activeLinks = $('.layout-link').filter(function () {
    return this.href === currentURL;
}).closest('.layout-link').addClass('current');

// HighlightJS
hljs.initHighlightingOnLoad();