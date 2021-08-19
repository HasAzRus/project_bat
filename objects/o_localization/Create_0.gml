enum e_localization
{
	english,
	russian
}

enum e_localized
{
	main_menu,
	level_menu,
	author_menu
}

global.localization = e_localization.english;

ini_open("localization.ini");

//English
ini_write_string("english", e_localized.main_menu, "main menu");
ini_write_string("english", e_localized.level_menu, "levels");
ini_write_string("english", e_localized.author_menu, "author");

//Russian
ini_write_string("russian", e_localized.main_menu, "главное меню");
ini_write_string("russian", e_localized.level_menu, "уровни");
ini_write_string("russian", e_localized.author_menu, "автор");

ini_close();