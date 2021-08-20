var type = string(ds_map_find_value(async_load, "type" ));
var loaded = ds_map_find_value(async_load, "loaded");  
var ident = ds_map_find_value(async_load, "id" );

if(ident == GoogleMobileAds_ASyncEvent)
{
	if (type == "interstitial_load")
    {
		interstitial_loaded = loaded;
		
        if (loaded) 
		{ 
			show_debug_message("Interstitial loaded");
			
			GoogleMobileAds_ShowInterstitial();
		}
        else 
		{ 
			show_debug_message("Interstitial failed to load!"); 
		}
    }
    else if(type == "interstitial_closed")
    {
        show_debug_message("Interstitial closed");
		
		interstitial_loaded = false;
    }
	else if(type =="consent_status")
	{
		var status = async_load[?"status"];
		
		if(status=="UNKNOWN")
		{
			if(GoogleMobileAds_ConsentIsUserInEEA())
			{
				GoogleMobileAds_ConsentUpdate(global.ads_consent_id,global.ads_privacy_url,true,true,false,true); 
			}
			else
				show_debug_message("User not in EEA so no consent needed");
		}
	}
}