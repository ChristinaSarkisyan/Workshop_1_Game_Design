/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 137AA093
/// @DnDArgument : "speed" "1"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E7532B2
/// @DnDArgument : "expr" "clamp(vspeed, med_speed, 15)"
/// @DnDArgument : "var" "vspeed"
vspeed = clamp(vspeed, med_speed, 15);