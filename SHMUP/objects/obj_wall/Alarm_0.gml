/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3431E106
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "bool_end_wall"
bool_end_wall = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7C0A3FD7
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_music_power_deactivation"
/// @DnDSaveInfo : "objectid" "obj_music_power_deactivation"
instance_create_layer(x + 0, y + 0, "Instances", obj_music_power_deactivation);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 71AD4BBC
/// @DnDArgument : "steps" "100"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 100);