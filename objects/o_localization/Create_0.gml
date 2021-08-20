enum e_localization
{
	english,
	russian
}

enum e_localized
{
	main_menu,
	level_menu,
	author_menu,
	skins_menu,
	version,
	author,
	author2
}

global.localization = e_localization.english;

ini_open("localization.ini");

//English
ini_write_string("english", e_localized.main_menu, "main menu");
ini_write_string("english", e_localized.level_menu, "levels");
ini_write_string("english", e_localized.author_menu, "author");
ini_write_string("english", e_localized.skins_menu, "skins");
ini_write_string("english", e_localized.version, "version");
ini_write_string("english", e_localized.author, "game design, programmer, artist: ondatra eating my head");
ini_write_string("english", e_localized.author2, "level design: alby");

//Russian
ini_write_string("russian", e_localized.main_menu, "главное меню");
ini_write_string("russian", e_localized.level_menu, "уровни");
ini_write_string("russian", e_localized.author_menu, "автор");
ini_write_string("russian", e_localized.skins_menu, "скины");
ini_write_string("russian", e_localized.version, "версия");
ini_write_string("russian", e_localized.author, "гейм-дизайн, программист, художник: ondatra eating my head");
ini_write_string("russian", e_localized.author2, "дизайн уровней: alby");

ini_close();