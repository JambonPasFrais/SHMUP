/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 14A4AF01
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_classic"
/// @DnDSaveInfo : "objectid" "obj_player_classic"
instance_create_layer(x + 0, y + 0, "Instances", obj_player_classic);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 48689687
instance_destroy();