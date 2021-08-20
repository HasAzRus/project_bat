event_inherited();

show_debug_message("Posting progress to achievement_double_top");

if (os_type = os_android)
{
	var percentageCompleted = 0;
	
	// This achievement requires you to score 40 points to unlock
	if (global.Score >= 40) { percentageCompleted = 100; }
	else { percentageCompleted = global.Score * 2.5; }
	
    achievement_post("CgkIvN_kkrwKEAIQAg",percentageCompleted);
	
	global.Score = 0;
}