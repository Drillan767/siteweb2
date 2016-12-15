// Ne charger le code que si l'ont est sur la bonne page, sans quoi il y a deux erreurs et 8 alertes
if($('body').is('.portfolio.show') || $('body').is('.portfolio.edit')){
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

if($('body').is('.page.admin')){
    $('img.zoom').zoomify();
}

$(document).ready(function(){
    // parallax d'accueil
    var mouseX, mouseY;
    var traX, traY;
    $(document).mousemove(function(e){
        mouseX = e.pageX;
        mouseY = e.pageY;
        traX = ((4 * mouseX) / 570) + 40;
        traY = ((4 * mouseY) / 570) + 50;
        $(".main-title").css({"background-position": traX + "%" + traY + "%"});
    });

    // balises og:image
    if($('body').is('.portfolio.index')){
        var bg_img = $('.wrapper').css('background-image').replace(/^url\(['"](.+)['"]\)/, '$1').split('/').pop().replace(/\"|\'|\)/g,'');
        $("meta[property='og\\:image']").attr("content", 'josephlevarato.fr/background/'+bg_img);
    }

    // Savoir sur quelle page on est
    var currentURL = document.location.href.split('/');
    $('.nav-link.current').removeClass('current');
    activeLinks = $('.nav-link a').filter(function () {
        return this.href === document.location.origin+'/'+currentURL[3];
    }).closest('.nav-link').addClass('current');



});

// HighlightJS
hljs.initHighlightingOnLoad();

$('span.icon-circle').hover(
    function() {
        $(this).find('.misc-circle').show();
    },
    function() {
        $('.misc-circle').hide();
    }
);

if($('body').is('.page.about')){
    var ctx1 = $("#chart1");
    Chart.defaults.global.defaultFontColor = '#fff';
    var chart1 = new Chart(ctx1, {
        type: 'horizontalBar',
        data: {
            labels: ["HTML / CSS", "JavaScript / jQuery", "PHP / MySQL",  "Ruby / Ruby on Rails"],
            datasets: [{
                data: [9, 8, 7, 7],
                backgroundColor: [
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)'


                ],
                borderColor: [
                    'rgba(255,255,255,1)',
                    'rgba(255,255,255,1)',
                    'rgba(255,255,255,1)',
                    'rgba(255,255,255,1)'

                ],
                borderWidth: 1
            }]
        },
        options: {
            labelFontColor : "#fff",
            scales: {
                yAxes: [{
                    gridLines: {
                        display:false
                    }
                }],
                xAxes: [{
                    ticks: {
                        beginAtZero:true,
                    },
                    gridLines: {
                        display:false
                    }
                }]
            },
            title: {
                display: true,
                text: 'Domaine de compétences (sur 10)',
                fontColor: "#fff"
            },
            legend: {
                display: false,
                font: {
                    color: "white"
                }
            }
        }
    });

    var ctx2 = $("#chart2");
    var chart2 = new Chart(ctx2, {
        type: 'horizontalBar',
        data: {
            labels: ["AngularJS", "ReactJS", "Swift", "Laravel", ".NET"],
            datasets: [{
                data: [60, 10, 0, 0, 0],
                backgroundColor: [
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)',
                    'rgba(255, 255, 255, 0.4)'
                ],
                borderColor: [
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    },
                    gridLines: {
                        display:false
                    },
                    fontColor: '#fff'
                }],
                xAxes: [{
                    ticks: {
                        beginAtZero:true
                    },
                    gridLines: {
                        display:false
                    }
                }]
            },
            title: {
                display: true,
                text: 'Avancement d\'apprentissage d\'un nouveau langage (en %)',
                fontColor: "#fff"
            },
            legend: {
                display: false
            }
        }
    });


    var ctx3 = $("#chart3");
    var chart3 = new Chart(ctx3, {
        type: 'doughnut',
        data: {
            labels: ["Projets web persos", "jeux vidéos", "Regarder des vidéos", "Veilles technologiques", "Cinéma"],
            datasets: [{
                data: [28, 27, 23, 14, 8],
                backgroundColor: [
                    'rgba(176, 42, 53,  0.2)',
                    'rgba(0, 255, 0, 0.2)',
                    'rgba(255, 0, 0, 0.2)',
                    'rgba(25, 25, 112, 0.2)',
                    'rgba(0, 0, 0, 0.2)'
                ],
                borderColor: [
                    'rgba(176, 42, 53, 1)',
                    'rgba(0, 255, 0, 1)',
                    'rgba(255, 0, 0, 1)',
                    'rgba(25, 25, 112, 1)',
                    'rgba(0, 0, 0, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    display: false
                }],
                xAxes: [{
                    display: false
                }]
            },
            title: {
                display: true,
                text: 'Occupations (en %)',
                fontColor: "#fff"
            },
            legend: {
                display: false
            }
        }
    });
}
