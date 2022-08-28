// Maps access token goes here
var key = 'pk.bac3cbaedf6a01fdff654f7b86f1e863';

let map = L.map('map').setView([-34.612918138033976, -58.43811578328029],12.3)
 
L.tileLayer('https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i{z}!2i{x}!3i{y}!4i256!2m3!1e0!2sm!3i349018013!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0',{
            attribution: '&copy; Powered by Google'
}).addTo(map);


// Add geocoder
 L.control.geocoder(key, {
  fullWidth: 650,
  expanded: true,
  markers: true,
  
}).addTo(map);


L.control.locate().addTo(map);

