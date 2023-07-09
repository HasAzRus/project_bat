/// @description README

/* 
 If you have build errors about missing Google Play Services libraries, please make sure Android Studio
 is up-to-date and you have actually installed the API version you're targetting in Game Options.


 This project will allow you to test the ad provider, calling and dismissing some test ads. Please note that this demo 
 is unlikely to have exposed all of the functionality the ad provider offers as part of their SDK. If you wish to add 
 more functionality, please see the code files which comprise the extension.

 Once you are happy with how to use the extension functions, export the extension as a .gmez and then import this .gmez
 into your own game. Remember if you have existing ad-calling functions in your project the function names will need to
 be changed to what is now used in the extension here (or you need to make the required changes in the extension code yourself).

 How to Use

  1) The app will say "Not Loaded" at first for your intersitial
  2) Tap the button to load the interstitial and it will add a "Loading" message off to the left
  3) After a few seconds it should change to "Ready" and "Loading" will go
  4) Now tap the button to show the interstitial
  5) There might be a slight delay, but then your interstitial will be shown
  6) Close the interstitial vix the X in the top-left corner
  7) Tap "Add Banner" (banner type 1 is a typical short-and-wide, banner 2 is more square)
  8) After a short delay (on Google Mobile Ads this can often be several seconds) the banner should appear in the bottom-right corner of the screen
  9) Tap "Move Banner" and it will toggle between positions around the screen
  10) "Remove Banner" when you're ready
  11) Assuming you have filled-in your device ID in objToggleTest, tap to toggle test ads on or off. There may be a delay before this takes effect.
  
 You will notice that the banners fire Social events in this object. There you can capture the banner on loading and position it so it loads 
 at the location you want. With Google Mobile Ads you are able to position the add directly on load (objAddBanner2 does this), as you must pass
 the ad size to the load function, but some others require the Social system, so we ensured that Google can use this system also.

 If you wish to test your own ad id(s), change the IDs used in the next action. Be aware that if you have an existing AdMob account
 you may need to perform an account upgrade in order to get the new-style ad IDs you require. This may cause older published apps to
 stop getting ads until you release a new version with the updated ad system.
 
 Note that you do not need to add your device ID to the list, despite what the ADB log message from the SDK says. This is simply
 if you want only test ads and no real ads. If you do want this, see step 11 above.
*/


// Initialise everything
if (os_type == os_ios) 
{ 
    GoogleMobileAds_Init("ca-app-pub-3940256099942544/4411468910","ca-app-pub-3940256099942544~1458002511"); 
    global.bannerId = "ca-app-pub-3940256099942544/2934735716";
}
else 
{ 
    GoogleMobileAds_Init("ca-app-pub-6235059282095236/8591432855","ca-app-pub-6235059282095236~4765165651");
    global.bannerId = "ca-app-pub-3940256099942544/6300978111";
}

// Note that the Consent Form won't work with these details as Google don't provide a publisher id that will match this template application id, so
// you will need to replace this with your own ID
global.ads_consent_id = "pub-6235059282095236";
global.ads_privacy_url = "https://www.yoyogames.com/legal/privacy";

GoogleMobileAds_ConsentUpdate(global.ads_consent_id,global.ads_privacy_url,true,true,false,false); //False as the last parameter means that we won't display the dialog automatically

global.useTestAds = false;      // Note that before using the button for this you must have added your device ID into objToggleTest
global.bottomRight = false;
global.interLoading = false;
global.coins=0;
