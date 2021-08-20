var locX = room_width-300;

draw_text(locX,20, "Google Play Services Status: " + string(GooglePlayServices_Status()));
draw_text(locX,40, "Username: " + global.OurName);
draw_text(locX,60, "User ID: " + global.OurId);
draw_text(locX,80, "Achievement Status: " + string(achievement_login_status()));



/*
draw_text(locX,130, "Friends list");

var i;
var locY;

for(i=0;i<global.numfriends;i++)
{
	locY = 150 + (i*30);
	
	if (i < 4) // We're only going to draw the first 4 people in this demo - you would likely want to show more...
	{
	    draw_text(locX,locY,global.friendname[i]);
    
	    var xscale = 32/sprite_get_width(global.friendpic[i]);
	    var yscale = 32/sprite_get_height(global.friendpic[i]);
	    draw_sprite_ext(global.friendpic[i],0,locX,locY-16,xscale,yscale,0,c_white,1);
	}
}
*/