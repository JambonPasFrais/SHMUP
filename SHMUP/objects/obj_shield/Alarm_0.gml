/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05696673
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "bool_end_shield"
bool_end_shield = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 39F68DAD
/// @DnDArgument : "objectid" "obj_music_power_deactivation"
/// @DnDSaveInfo : "objectid" "obj_music_power_deactivation"
instance_create_layer(0, 0, "Instances", obj_music_power_deactivation);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0CA32F0F
/// @DnDArgument : "steps" "100"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 100);