/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 54D9F76C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "set_position"
function set_position() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 090A5F2A
	/// @DnDParent : 54D9F76C
	/// @DnDArgument : "code" "$(13_10)//vars that hold the new starting points from $(13_10)//either edge of the screen (takes sprite offset into account)$(13_10)new_bottom = room_height + sprite_yoffset;$(13_10)new_top = 0 - sprite_yoffset;$(13_10)new_right = room_width - sprite_xoffset //provided by Dr. Bahamon$(13_10)new_left = sprite_xoffset //provided by Dr. Bahamon$(13_10)$(13_10)$(13_10)if (y > new_bottom)  $(13_10){$(13_10)	y = new_top; $(13_10)	x = irandom_range(new_left, new_right)$(13_10)}"
	
	//vars that hold the new starting points from 
	//either edge of the screen (takes sprite offset into account)
	new_bottom = room_height + sprite_yoffset;
	new_top = 0 - sprite_yoffset;
	new_right = room_width - sprite_xoffset //provided by Dr. Bahamon
	new_left = sprite_xoffset //provided by Dr. Bahamon
	
	
	if (y > new_bottom)  
	{
		y = new_top; 
		x = irandom_range(new_left, new_right)
	}
}