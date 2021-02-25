/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A1FA3B6
/// @DnDArgument : "code" "$(13_10)//vars that hold the new starting points from $(13_10)//either edge of the screen (takes sprite offset into account)$(13_10)new_bottom = room_height + sprite_yoffset;$(13_10)new_top = 0 - sprite_yoffset;$(13_10)new_right = room_width - sprite_xoffset //provided by Dr. Bahamon$(13_10)new_left = sprite_xoffset //provided by Dr. Bahamon$(13_10)$(13_10)$(13_10)if (y > new_bottom)  $(13_10){$(13_10)	y = new_top; $(13_10)	x = irandom_range(new_left, new_right)$(13_10)}"

//vars that hold the new starting points from 
//either edge of the screen (takes sprite offset into account)
new_bottom = room_height + sprite_yoffset;
new_top = 0 - sprite_yoffset;
new_right = room_width - sprite_xoffset //provided by Dr. Bahamon
new_left = sprite_xoffset //provided by Dr. Bahamon


if (y > new_bottom)  
{
	y = new_top; 
	x = irandom_range(new_left, new_right)
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 335B6E6A
/// @DnDArgument : "expr" "self.canShoot == true"
if(self.canShoot == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1331EE88
	/// @DnDParent : 335B6E6A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "self.shotType"
	/// @DnDSaveInfo : "objectid" "obj_enemybullet1"
	instance_create_layer(x + 0, y + 0, "Instances", self.shotType);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 457AD28D
	/// @DnDParent : 335B6E6A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "self.canShoot"
	self.canShoot = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 74F34668
	/// @DnDParent : 335B6E6A
	/// @DnDArgument : "steps" "shotInterval"
	alarm_set(0, shotInterval);
}