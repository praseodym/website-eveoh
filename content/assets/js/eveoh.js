// Initialize the Google Map
function initialize() {
    var eveoh = new google.maps.LatLng(52.0276445, 4.3555377);

    var mapOptions = {
        center: eveoh,
        zoom: 7,
        disableDefaultUI: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("map"),
        mapOptions);

    var marker = new google.maps.Marker({
        animation: google.maps.Animation.DROP,
        position: eveoh,
        title: "Eveoh"
    });

    marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

// Callback for blog request
var loadPosts = function (data) {
    var baseurl = 'http://blog.eveoh.nl';
    var header = '<h1><a href="http://blog.eveoh.nl">Recent blog posts</a></h1>';
    var content = '<ul>';

    for (var i = 0; i < data.length; i++) {
        content += '<li><a class="title" href="' + baseurl + data[i].url + '">' + data[i].title + '</a></li>';
    }

    content += '</ul>';

    document.getElementById('blog').innerHTML = header + content;
    document.getElementById('blog-mobile').innerHTML = content;
}

window.onload = function () {
    document.getElementById('mark').addEventListener('click', function() {
        goGoGadgetNyanCat();
    });
};

function goGoGadgetNyanCat() {
    if (typeof jQuery != 'undefined') {
        $('<img src="/assets/img/nyancat.gif" id="nyancat" />').appendTo('body');

        $('#nyancat').animate({
            left: '5000px'
        }, {
            duration: 5000,
            complete: function () {
                $('#nyancat').remove();
            }
        });
    }
}