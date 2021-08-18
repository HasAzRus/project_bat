for(var i = 0; i < instance_number(o_receiver); i++)
{
	var r = instance_find(o_receiver, i);
	
	if(r.receiver_id == receiver_id)
	{
		receiver = r;
		
		break;
	}
}