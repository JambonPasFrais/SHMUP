/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D4CE114
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "objectid" "obj_bonus_destroy_all"
/// @DnDSaveInfo : "objectid" "obj_bonus_destroy_all"
instance_create_layer(random(room_width), 0, "Instances", obj_bonus_destroy_all);