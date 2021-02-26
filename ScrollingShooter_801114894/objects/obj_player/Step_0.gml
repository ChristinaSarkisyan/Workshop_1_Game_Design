/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36B86038
/// @DnDArgument : "code" "$(13_10)//section about keeping player in the room$(13_10)x = clamp(x, sprite_width/2, room_width-sprite_width/2)$(13_10)//above code provided in instructions by Dr. Bahamon$(13_10)y = clamp(y, sprite_height/2, room_height-sprite_height/2)$(13_10)//above code provided in instructions by Dr. Bahamon $(13_10)//(with very slight alterations by Chris s/ -- changed width to height)$(13_10)$(13_10)$(13_10)"

//section about keeping player in the room
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
//above code provided in instructions by Dr. Bahamon
y = clamp(y, sprite_height/2, room_height-sprite_height/2)
//above code provided in instructions by Dr. Bahamon 
//(with very slight alterations by Chris s/ -- changed width to height)

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 489F30C4
/// @DnDArgument : "expr" "obj_player.canShoot == true  &&  keyboard_check_pressed(vk_space) == true"
if(obj_player.canShoot == true  &&  keyboard_check_pressed(vk_space) == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D640F36
	/// @DnDParent : 489F30C4
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_playerBullet"
	/// @DnDSaveInfo : "objectid" "obj_playerBullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_playerBullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C79BB6D
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 489F30C4
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_player.canShoot"
	with(obj_player) {
	obj_player.canShoot = false;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 38916615
	/// @DnDParent : 489F30C4
	/// @DnDArgument : "steps" "room_speed / 2"
	alarm_set(0, room_speed / 2);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2F010EF3
/// @DnDArgument : "key" "vk_up"
/// @DnDArgument : "not" "1"
var l2F010EF3_0;
l2F010EF3_0 = keyboard_check(vk_up);
if (!l2F010EF3_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 42BABEB7
	/// @DnDParent : 2F010EF3
	/// @DnDArgument : "key" "vk_down"
	/// @DnDArgument : "not" "1"
	var l42BABEB7_0;
	l42BABEB7_0 = keyboard_check(vk_down);
	if (!l42BABEB7_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4228E63F
		/// @DnDParent : 42BABEB7
		/// @DnDArgument : "speed" "-sign(vspeed)"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += -sign(vspeed);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 60721A9E
/// @DnDArgument : "expr" "obj_player.hp <= 0"
if(obj_player.hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27793D8A
	/// @DnDApplyTo : {obj_enemybullet2}
	/// @DnDParent : 60721A9E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_enemybullet2.target_exists"
	with(obj_enemybullet2) {
	obj_enemybullet2.target_exists = false;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 198A0835
	/// @DnDParent : 60721A9E
	instance_destroy();
}