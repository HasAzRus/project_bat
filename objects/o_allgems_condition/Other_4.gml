allgems_count = instance_number(o_gem);

var allbox_count = instance_number(o_gems_box);

if(allbox_count > 0)
{
	for(var i = 0; i < allbox_count; i++)
	{
		var box = instance_find(o_gems_box, i);
		
		allgems_count += box.purple_gems + box.red_gems;
	}
}
