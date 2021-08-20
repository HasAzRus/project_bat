event_inherited();

show_debug_message("!! Resetting all achievements to 0 percent completed !!");

// Per the manual:
// This function is provided as a debug function and it is NOT recommended 
// that you permit the end-user to do this in your games.
achievement_reset();