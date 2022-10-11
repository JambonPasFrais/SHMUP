/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 294FBB32
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_destroyer"
/// @DnDSaveInfo : "objectid" "obj_player_destroyer"
instance_create_layer(x + 0, y + 0, "Instances", obj_player_destroyer);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 24F28FEA
instance_destroy();