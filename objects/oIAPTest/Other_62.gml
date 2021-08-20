show_debug_message("Async HTTP event recieved. ID = " + string(async_load[? "id"]));

if (async_load[? "id"] == global.httpId && async_load[? "status"] == 0)
{
	var r_str = string(async_load[? "result"]);
	show_debug_message("IAP server response = " + r_str);
		
	// If the IAP purchase worked...
	if (r_str == "success" && global.purchaseToken != "") { GPBilling_AcknowledgePurchase(global.purchaseToken); }
}
