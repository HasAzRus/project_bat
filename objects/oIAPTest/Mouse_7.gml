/// @desc Purchase Product

event_inherited();

if (GPBilling_IsStoreConnected())
{
	show_debug_message("Calling to purchase " + kIapTest1Id);
	GPBilling_PurchaseProduct(kIapTest1Id);
}
else { show_debug_message("Not connected to the store, can't attempt purchase of " + kIapTest1Id); }