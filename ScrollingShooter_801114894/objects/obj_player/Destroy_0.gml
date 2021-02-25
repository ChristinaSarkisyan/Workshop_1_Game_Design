/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 590D166E
/// @DnDApplyTo : {obj_enemybullet2}
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "obj_enemybullet2.target_exists"
with(obj_enemybullet2) {
obj_enemybullet2.target_exists = false;

}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6B929435
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_playerExplosion"
/// @DnDSaveInfo : "objectid" "obj_playerExplosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_playerExplosion);