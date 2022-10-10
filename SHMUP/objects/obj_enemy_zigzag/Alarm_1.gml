/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C0246E6
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy_bullet"
/// @DnDSaveInfo : "objectid" "obj_enemy_bullet"
instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6AF9421B
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);