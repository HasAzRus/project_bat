/// @description Get banner info and reposition it if we wish

show_debug_message("Social async event... "+string(json_encode(async_load)));

var type = string(ds_map_find_value(async_load, "type" ));
var loaded = ds_map_find_value(async_load, "loaded");  
var ident = ds_map_find_value(async_load, "id" );


if(ident == GoogleMobileAds_ASyncEvent) //Additional check to help when working with multiple extensions
{
    if (type == "banner_load")
    {
        if (loaded)
        {
            var bw = ds_map_find_value(async_load, "width");
            var bh = ds_map_find_value(async_load, "height");
            
            show_debug_message("Banner loaded: size=" + string(bw) + "," + string(bh) );
            
            // Centre the ad on the screen (override what's in the AddBanner button code)
            //var px = (display_get_width() - bw)/2;
            //var py = (display_get_height() - bh)/2;
            //GoogleMobileAds_MoveBanner(px, py);
            //show_debug_message("Banner moved via Social event to " + string(px) + "," + string(py) );
            
            /*
             The commented-out lines above are what we would have to do for some other ad providers if
             we wanted to load a banner at a specified location. The code is here for Google also just 
             to demonstrate how you can still use the event to control positioning ads with this provider.
            */
        }
        else { show_debug_message("Banner failed to load!"); }
    }
    else if (type == "interstitial_load")
    {
        global.interLoading = false; 
        
        if (loaded) { show_debug_message("Interstitial loaded"); }
        else { show_debug_message("Interstitial failed to load!"); }
    }
    else if(type == "interstitial_closed")
    {
        show_debug_message("Interstitial closed");
    }
    else if(type == "rewardedvideo_watched")
    {
        show_debug_message("Rewarded Video watched, attempting to give reward");
        var currency = string(ds_map_find_value(async_load, "currency" ));
        var amount = ds_map_find_value(async_load, "amount" );
        
        if(amount != undefined)
        {
            global.coins+= amount;
        }
        else
        {
            show_debug_message("Amount not defined");
        }
        
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
	else if(type =="mobileads_initialization_complete")
	{
		var status = async_load[?"status"];
		
		show_debug_message("mobileads_initialization_complete ");
		
	}
    else
    {
        show_debug_message("Unknown type of Google Mobile Ads Social Async event:"+string(type))
    }
    
}

/* */
/*  */
