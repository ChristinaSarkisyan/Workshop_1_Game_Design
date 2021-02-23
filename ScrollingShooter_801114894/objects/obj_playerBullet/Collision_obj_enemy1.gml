/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10FB812E
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78FEBBDB
/// @DnDArgument : "expr" "other.scoreValue"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.points"
obj_scoreboard.points += other.scoreValue;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7023C5CC
instance_destroy();