/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 73794A42
/// @DnDArgument : "function" "set_position"
set_position();

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 092EB027
/// @DnDArgument : "speed" "layer_get_vspeed(layer_get_id("Background"))"
/// @DnDArgument : "type" "2"
vspeed = layer_get_vspeed(layer_get_id("Background"));