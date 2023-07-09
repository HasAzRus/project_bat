if(os_type == os_android)
{ 
    GoogleMobileAds_Init("ca-app-pub-6235059282095236/8591432855","ca-app-pub-6235059282095236~4765165651");
    global.bannerId = "ca-app-pub-3940256099942544/6300978111";
}

global.ads_consent_id = "pub-6235059282095236";
global.ads_privacy_url = "https://www.yoyogames.com/legal/privacy";

GoogleMobileAds_ConsentUpdate(global.ads_consent_id,global.ads_privacy_url,true,true,false,false); //False as the last parameter means that we won't display the dialog automatically

global.useTestAds = true;
global.bottomRight = false;
global.interLoading = false;
global.coins=0;

var deviceId = "00C11F07D8222A804FBA591F8766E282";

GoogleMobileAds_UseTestAds(global.useTestAds, deviceId);

GoogleMobileAds_LoadInterstitial();