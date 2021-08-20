/// @description Move the banner

event_inherited();

global.bottomRight = !global.bottomRight;
show_debug_message("Move Banner " + string(global.bottomRight));

var px=0;
var py=0;

if (global.bottomRight)
{
    var bw = GoogleMobileAds_BannerGetWidth();
    var bh = GoogleMobileAds_BannerGetHeight();

    // Bottom right of the screen
    px = display_get_width() - bw;
    py = display_get_height() - bh;    
}

GoogleMobileAds_MoveBanner(px, py);

