/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39809C41
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_end_wall"
bool_end_wall = false;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 48B28490
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 3105C475
image_alpha = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 77535AF8
/// @DnDArgument : "xscale" "5"
/// @DnDArgument : "yscale" "5"
image_xscale = 5;
image_yscale = 5;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4301095B
/// @DnDArgument : "objectid" "obj_music_power_activation"
/// @DnDSaveInfo : "objectid" "obj_music_power_activation"
instance_create_layer(0, 0, "Instances", obj_music_power_activation);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 26F8E5FD
/// @DnDArgument : "steps" "360"
alarm_set(0, 360);