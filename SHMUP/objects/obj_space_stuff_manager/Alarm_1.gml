/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 32B9B576
/// @DnDArgument : "var" "xpos_ufo"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "room_width - 50"
xpos_ufo = floor(random_range(50, room_width - 50 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BBC4CD9
/// @DnDArgument : "xpos" "xpos_ufo"
/// @DnDArgument : "objectid" "obj_ufo"
/// @DnDSaveInfo : "objectid" "obj_ufo"
instance_create_layer(xpos_ufo, 0, "Instances", obj_ufo);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 27E07E3A
/// @DnDArgument : "steps" "240"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 240);