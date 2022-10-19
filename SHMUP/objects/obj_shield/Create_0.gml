/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12ED08B3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_end_shield"
bool_end_shield = false;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4222B4F9
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_music_power_activation"
/// @DnDSaveInfo : "objectid" "obj_music_power_activation"
instance_create_layer(x + 0, y + 0, "Instances", obj_music_power_activation);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 416ED7BE
/// @DnDArgument : "steps" "360"
alarm_set(0, 360);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 27CE83A2
/// @DnDArgument : "health" "100"

__dnd_health = real(100);