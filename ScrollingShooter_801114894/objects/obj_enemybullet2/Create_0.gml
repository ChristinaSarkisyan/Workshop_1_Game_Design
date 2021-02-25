/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 1F3314C8
/// @DnDArgument : "var" "obj_player"
if(obj_player == undefined)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39020F30
	/// @DnDParent : 1F3314C8
	/// @DnDArgument : "expr" "270"
	/// @DnDArgument : "var" "self.direction"
	self.direction = 270;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 68FDF1D5
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2569DD35
	/// @DnDParent : 68FDF1D5
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 59DBB9CD
/// @DnDArgument : "speed" "10"
speed = 10;