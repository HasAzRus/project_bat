/// @desc Purchase Subscription

event_inherited();

show_debug_message("Subscription test button pressed");

var status = GPBilling_IsStoreConnected();
if (status)
{
	show_debug_message("Calling to purchase " + string(kSubTest1Id));
	GPBilling_PurchaseSubscription(kSubTest1Id);
}

// See oIAPTest's IAP Async event for further info here, as all IAP code is handled in that object's event