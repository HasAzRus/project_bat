/// @desc Setup

event_inherited();

global.purchaseList = ds_list_create();
iap_activate(global.purchaseList);

var gpinitRes = GPBilling_ConnectToStore();
show_debug_message("GPBilling Store Connection Init: " + string(gpinitRes));

global.purchaseToken = "";