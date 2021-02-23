/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36B86038
/// @DnDArgument : "code" "$(13_10)//section about keeping player in the room$(13_10)x = clamp(x, sprite_width/2, room_width-sprite_width/2)$(13_10)//above code provided in instructions by Dr. Bahamon$(13_10)y = clamp(y, sprite_height/2, room_height-sprite_height/2)$(13_10)//above code provided in instructions by Dr. Bahamon $(13_10)//(with very slight alterations by Chris s/ -- changed width to height)$(13_10)$(13_10)$(13_10)//section about the bullet firing$(13_10)//if (obj_player.canShoot == true  &&  keyboard_check_pressed(vk_space) == true )$(13_10)//{$(13_10)//	bul = instance_create(obj_player.x, obj_player.y, obj_playerBullet)	$(13_10)//}"

//section about keeping player in the room
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
//above code provided in instructions by Dr. Bahamon
y = clamp(y, sprite_height/2, room_height-sprite_height/2)
//above code provided in instructions by Dr. Bahamon 
//(with very slight alterations by Chris s/ -- changed width to height)


//section about the bullet firing
//if (obj_player.canShoot == true  &&  keyboard_check_pressed(vk_space) == true )
//{
//	bul = instance_create(obj_player.x, obj_player.y, obj_playerBullet)	
//}

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
}