global.ad_controller = self;

if(os_type == os_android)
{
	GoogleMobileAds_Init("ca-app-pub-6235059282095236/8591432855", "ca-app-pub-6235059282095236~4765165651");
}

global.ads_consent_id = "pub-6235059282095236";
global.ads_privacy_url = "https://www.yoyogames.com/legal/privacy";

GoogleMobileAds_ConsentUpdate(global.ads_consent_id,global.ads_privacy_url,true,true,false,false);

var deviceId = "00C11F07D8222A804FBA591F8766E28";
GoogleMobileAds_UseTestAds(true, deviceId);

GoogleMobileAds_LoadInterstitial();
interstitial_loaded = false;