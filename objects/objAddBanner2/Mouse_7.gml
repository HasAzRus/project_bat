/// @description Add banner at a specific location

event_inherited();

global.bottomRight = false;

GoogleMobileAds_AddBannerAt(global.bannerId, GoogleMobileAds_MRect, 20, 20);

show_debug_message("Add Banner2");

/*
 You can see the extension has additional constants for other ad types.
 
 GoogleMobileAds_Full_Banner
 GoogleMobileAds_Leaderboard
 GoogleMobileAds_Skyscraper
 
 These will only work on tablets or larger-screen phones - the ad will 
 just silently fail to show (ADB will tell you why) - so be careful when
 you use them.
*/

/* */
/*  */
