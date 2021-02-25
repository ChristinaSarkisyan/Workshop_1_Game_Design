/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 25645CC1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "inflict_damage"
/// @DnDArgument : "arg" "damage"
function inflict_damage(damage) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54D40D52
	/// @DnDParent : 25645CC1
	/// @DnDArgument : "expr" "damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.hp"
	obj_player.hp += damage;
}