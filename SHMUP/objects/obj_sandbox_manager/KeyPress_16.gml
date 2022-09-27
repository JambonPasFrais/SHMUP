/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0B3959D4
/// @DnDArgument : "var" "xpos_ufo"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "room_width - 50"
xpos_ufo = floor(random_range(50, room_width - 50 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 063AB1B8
/// @DnDArgument : "xpos" "xpos_ufo"
/// @DnDArgument : "objectid" "obj_ufo"
/// @DnDSaveInfo : "objectid" "obj_ufo"
instance_create_layer(xpos_ufo, 0, "Instances", obj_ufo);