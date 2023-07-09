var ident = string(async_load[? "id"]);
var status = string(async_load[? "status"]);
var desc =  string(async_load[? "description"]);
var resstring = string(async_load[? "resultString"]);
var errorstring = string(async_load[? "errorString"]);

show_debug_message("Async cloud event occurred with ident = " + ident
+ " status = " + status
+ " desc = " + desc 
+ " resstring = " + resstring
+ " error = " + errorstring);