function initialize() {
    var map = new GMap2(document.getElementById("map"));
    map.setCenter(new GLatLng(52.0276445,4.3555377), 16);
    map.setMapType(G_PHYSICAL_MAP);

    var point = new GLatLng(52.0276445,4.3555377);
    map.addOverlay(new GMarker(point));
}