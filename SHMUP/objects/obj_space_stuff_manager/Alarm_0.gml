/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0ECCA097
/// @DnDArgument : "var" "xpos_meteor"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "room_width - 50"
xpos_meteor = floor(random_range(50, room_width - 50 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5BD79BBE
/// @DnDArgument : "xpos" "xpos_meteor"
/// @DnDArgument : "objectid" "obj_meteor_big"
/// @DnDSaveInfo : "objectid" "obj_meteor_big"
instance_create_layer(xpos_meteor, 0, "Instances", obj_meteor_big);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 73BC981E
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);