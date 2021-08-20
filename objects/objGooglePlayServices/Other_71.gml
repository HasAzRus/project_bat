var type = string(async_load[? "type"]);
var status = string(async_load[? "status"]);
var debugString = "Push notification received. Type = " + type + ", status = " + status + ", ";

if (status == 0) // There was an error of some kind
{
    debugString += "error details = " + string(async_load[? "error"]);
}
else if (type == "register")
{
    debugString += "registration ID = " + string(async_load[? "reg_id"]);

    // You should now post the reg_id to your server
}   
else // We recieved a notification with data we should show the user
{
   debugString += "payload data = " + string(async_load[? "data"]);
}

show_debug_message(debugString);