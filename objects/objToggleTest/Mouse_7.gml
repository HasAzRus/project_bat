event_inherited();

global.useTestAds = !global.useTestAds;

var deviceId = "00C11F07D8222A804FBA591F8766E282"; // Add DEVICE ID here!

// You should find the device ID in your phone's system settings, but you can always run the demo
// and then wait a second or two until the next ad request is made and you'll get an ADB entry like:
// "Use AdRequest.Builder.addTestDevice("610A542CCA030C46E5F179EDC185E729") to get test ads on this device."
// or a Console line like:
// <Google> To get test ads on this device, call: request.testDevices = @[ @"e1ec0ed9ac0339bcdbf2857d941fc372" ];
// It's that value there you need to write for the variable above.

// Note that if you have not put in the correct device ID you will continue to get live ads, but no test ads.


GoogleMobileAds_UseTestAds(global.useTestAds, deviceId);    
