/*
  If signing-in keeps failing, make sure you have added yourself as a Tester for Google Play Services for your app, 
  as Google don't reuse your app's testers mailing list for also saying who can sign-in.
  
  Open your app's page on Google Play Console, then see the Google Play Services section in the sidebar, expand that,
  expand "Settings and Management" also, then select Testers. Then add all your required tester emails in here also.
  
  (You don't need to send off a new version after making this change, btw. You should find that you can pretty immediately sign-in.)
*/

event_inherited();
show_debug_message("Signing-in to Google Play Services");

// Try to connect once...
if (GooglePlayServices_Status() != GooglePlayServices_SUCCESS) { GooglePlayServices_Init(); }

// ...And then confirm all is okay or handle a fail
if (GooglePlayServices_Status() == GooglePlayServices_SUCCESS) { achievement_login(); }
else { show_message("Error initialising Google Play Services, status code = " + string(GooglePlayServices_Status())); }
