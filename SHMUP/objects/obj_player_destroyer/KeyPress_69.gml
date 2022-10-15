/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6B6A2ADB
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_protector"
/// @DnDSaveInfo : "objectid" "obj_player_protector"
instance_create_layer(x + 0, y + 0, "Instances", obj_player_protector);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7699E413
/// @DnDApplyTo : {obj_shield}
with(obj_shield) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CF384D0
instance_destroy();