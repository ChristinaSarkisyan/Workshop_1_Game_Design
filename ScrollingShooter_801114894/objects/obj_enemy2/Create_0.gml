/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77B30C9A
/// @DnDArgument : "code" "$(13_10)//code provided by Dr.Bahamon$(13_10)event_inherited()$(13_10)vspeed += self.extraSpeed$(13_10)$(13_10)$(13_10)obj_enemy2.canShoot = true"

//code provided by Dr.Bahamon
event_inherited()
vspeed += self.extraSpeed


obj_enemy2.canShoot = true

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 6F7896E1
while(true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FC7748F
	/// @DnDParent : 6F7896E1
	/// @DnDArgument : "expr" "obj_enemy2.canShoot == true & obj_enemy2.y < obj_enemy2.new_bottom"
	if(obj_enemy2.canShoot == true & obj_enemy2.y < obj_enemy2.new_bottom)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5263772A
		/// @DnDParent : 1FC7748F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_enemybullet1"
		/// @DnDSaveInfo : "objectid" "obj_enemybullet1"
		instance_create_layer(x + 0, y + 0, "Instances", obj_enemybullet1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 012ED129
		/// @DnDParent : 1FC7748F
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	}
}