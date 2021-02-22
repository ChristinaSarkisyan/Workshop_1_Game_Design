/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 052FBDD4
/// @DnDArgument : "code" "$(13_10)new_bottom = room_height + sprite_yoffset;$(13_10)new_top = 0 - sprite_yoffset;$(13_10)$(13_10)if (y > new_bottom) then y = new_top;  //provided by Dr. Bahamon with some channges by chris$(13_10)$(13_10)"

new_bottom = room_height + sprite_yoffset;
new_top = 0 - sprite_yoffset;

if (y > new_bottom) then y = new_top;  //provided by Dr. Bahamon with some channges by chris