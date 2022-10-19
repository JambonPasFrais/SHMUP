/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1393C86D
/// @DnDArgument : "xpos" "30"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy_bullet"
/// @DnDSaveInfo : "objectid" "obj_enemy_bullet"
instance_create_layer(x + 30, y + 0, "Instances", obj_enemy_bullet);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5BBE8ACF
/// @DnDArgument : "xpos" "-30"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy_bullet"
/// @DnDSaveInfo : "objectid" "obj_enemy_bullet"
instance_create_layer(x + -30, y + 0, "Instances", obj_enemy_bullet);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 68C0FAE7
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_music_laser_double"
/// @DnDSaveInfo : "objectid" "obj_music_laser_double"
instance_create_layer(x + 0, y + 0, "Instances", obj_music_laser_double);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2705441E
/// @DnDArgument : "steps" "reload_time"
/// @DnDArgument : "alarm" "1"
alarm_set(1, reload_time);