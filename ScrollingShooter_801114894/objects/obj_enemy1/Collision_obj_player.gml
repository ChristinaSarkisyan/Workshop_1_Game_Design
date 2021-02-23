/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57BBD8A6
/// @DnDArgument : "code" "obj_player.hp -= 30$(13_10)$(13_10)if (obj_player.hp <= 0) then instance_destroy(obj_player)"
obj_player.hp -= 30

if (obj_player.hp <= 0) then instance_destroy(obj_player)

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 069E0822
instance_destroy();