/// @description Draw our status info

// Interstitials
draw_text(objLoadInterstitial.x - 64, objLoadInterstitial.y + 20, string(GoogleMobileAds_InterstitialStatus()));

if (global.interLoading)
{
    if (GoogleMobileAds_InterstitialStatus() == "Ready") { global.interLoading = false; }
    else { draw_text(objLoadInterstitial.x + 70, objLoadInterstitial.y + 20, "Loading");    }
}


// Rewarded video
draw_text(objLoadRewardedVideo.x - 64, objLoadRewardedVideo.y + 20, string(GoogleMobileAds_RewardedVideoStatus()));

draw_text(objShowRewardedVideo.x - 64, objShowRewardedVideo.y + 20, "Coins: " + string(global.coins));


// Banners
draw_text(objAddBanner.x, objAddBanner.y + 30,
"Banner size = " + string(GoogleMobileAds_BannerGetWidth()) + "x" +  string(GoogleMobileAds_BannerGetHeight()));


// Test ads
if (global.useTestAds) { draw_text(objToggleTest.x - 64, objToggleTest.y + 20, "Enabled"); }
else { draw_text(objToggleTest.x - 64, objToggleTest.y + 20, "Disabled"); }