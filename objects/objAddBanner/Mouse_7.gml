/// @description Add a banner at bottom right of screen

event_inherited();

// Call our ad 
show_debug_message("Add banner");
global.bottomRight = true;
GoogleMobileAds_AddBanner(global.bannerId, GoogleMobileAds_Adaptive_Banner);

// Position it at bottom right of screen
var bw = GoogleMobileAds_BannerGetWidth();
var bh = GoogleMobileAds_BannerGetHeight();

show_debug_message("room_width = " + string(room_width)+ " room_height=" + string(room_height) + " display width:" + string(display_get_width())+ " display height:" + string(display_get_height()));

var px = display_get_width()-bw;
var py = display_get_height()-bh;
GoogleMobileAds_MoveBanner(px, py);
show_debug_message("Moving banner: " + string(px) + "," + string(py));

