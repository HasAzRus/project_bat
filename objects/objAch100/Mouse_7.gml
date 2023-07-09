event_inherited();

show_debug_message("Posting progress to achievement_done_the_tonne");

if (os_type == os_android)
{
	// This achievement requires you to score 100 points to unlock (so our score IS the percentage...)
	var percentageCompleted = global.Score;
	
    achievement_post("CgkIvN_kkrwKEAIQAQ",percentageCompleted);
	
	global.Score = 0;
}