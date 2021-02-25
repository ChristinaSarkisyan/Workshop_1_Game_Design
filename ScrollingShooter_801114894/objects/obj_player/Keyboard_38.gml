/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 00142CD3
/// @DnDArgument : "speed" "-1"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0410A848
/// @DnDArgument : "expr" "clamp(vspeed, -15,  med_speed)"
/// @DnDArgument : "var" "vspeed"
vspeed = clamp(vspeed, -15,  med_speed);