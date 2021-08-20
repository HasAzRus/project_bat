/// @description Ensure the banner is oriented correctly

var dw = display_get_width();

if (dw != dispWidth) // If we've rotated the device...
{
    var dh = display_get_height();
    show_debug_message("w,h= " + string(dw) +"," + string(dh));
    
    dispWidth = dw; // Update our "previous" value ready for the next step
    
    if (global.bottomRight)
    {
        var bw = GoogleMobileAds_BannerGetWidth();
        var bh = GoogleMobileAds_BannerGetHeight();
        GoogleMobileAds_MoveBanner(dw - bw, dh - bh);
    }
}

