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
	author2,
	author_professional,
	author_professional2
}

global.localization = e_localization.english;

ini_open("localization.ini");

//English
ini_write_string("english", e_localized.main_menu, "main menu");
ini_write_string("english", e_localized.level_menu, "levels");
ini_write_string("english", e_localized.author_menu, "author");
ini_write_string("english", e_localized.skins_menu, "skins");
ini_write_string("english", e_localized.version, "version (early access)");
ini_write_string("english", e_localized.author, "ondatra eating my head");
ini_write_string("english", e_localized.author2, "alby");
ini_write_string("english", e_localized.author_professional, "game designer, progammer, artist");
ini_write_string("english", e_localized.author_professional2, "level designer");

//Russian
ini_write_string("russian", e_localized.main_menu, "главное меню");
ini_write_string("russian", e_localized.level_menu, "уровни");
ini_write_string("russian", e_localized.author_menu, "автор");
ini_write_string("russian", e_localized.skins_menu, "скины");
ini_write_string("russian", e_localized.version, "версия (ранний доступ)");
ini_write_string("russian", e_localized.author, "ondatra eating my head");
ini_write_string("russian", e_localized.author2, "alby");
ini_write_string("russian", e_localized.author_professional, "гейм-дизайнер, программист, художник");
ini_write_string("russian", e_localized.author_professional2, "дизайнер уровней");

ini_close();