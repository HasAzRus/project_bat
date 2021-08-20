event_inherited();

show_debug_message("Posting progress to achievement_oneundredandeightyyyyy");

if (os_type = os_android)
{
	// This achievement requires you to score 180 points to unlock
	var percentageCompleted = (100/180) * global.Score;
	
    achievement_post("CgkIvN_kkrwKEAIQAw",percentageCompleted);
	
	global.Score = 0;
}