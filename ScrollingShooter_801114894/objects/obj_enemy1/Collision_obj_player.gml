/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5B4E4E17
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "health" "-30"
/// @DnDArgument : "health_relative" "1"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-30);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 09D67A1F
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "op" "3"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l09D67A1F_0 = __dnd_health <= 0;
}
if(l09D67A1F_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7DF0D436
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 09D67A1F
	with(obj_player) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 069E0822
instance_destroy();