/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 77C918CF
/// @DnDArgument : "xpos" "room_width"
/// @DnDArgument : "ypos" "room_height - 200"
/// @DnDArgument : "objectid" "obj_ally_to_protect"
/// @DnDSaveInfo : "objectid" "obj_ally_to_protect"
instance_create_layer(room_width, room_height - 200, "Instances", obj_ally_to_protect);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5DF3F392
/// @DnDArgument : "xpos" "50"
/// @DnDArgument : "ypos" "50"
/// @DnDArgument : "objectid" "obj_enemy_zigzag"
/// @DnDSaveInfo : "objectid" "obj_enemy_zigzag"
instance_create_layer(50, 50, "Instances", obj_enemy_zigzag);