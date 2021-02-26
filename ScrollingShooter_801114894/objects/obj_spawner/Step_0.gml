/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0561CB2E
/// @DnDArgument : "var" "self.canSpawn"
/// @DnDArgument : "value" "true"
if(self.canSpawn == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 79FEFF41
	/// @DnDParent : 0561CB2E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "self.objectType"
	instance_create_layer(x + 0, y + 0, "Instances", self.objectType);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58655CCB
	/// @DnDParent : 0561CB2E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "self.canSpawn"
	self.canSpawn = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 250D5C29
	/// @DnDParent : 0561CB2E
	/// @DnDArgument : "steps" "self.spawnInterval"
	alarm_set(0, self.spawnInterval);
}