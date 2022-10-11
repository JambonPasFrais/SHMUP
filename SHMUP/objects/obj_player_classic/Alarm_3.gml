/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5909CD5A
image_xscale = 1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 154C3E26
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "PSPEED"
PSPEED = 8;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 61FFC78F
/// @DnDArgument : "colour" "$FF7FFFFF"
image_blend = $FF7FFFFF & $ffffff;
image_alpha = ($FF7FFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 06E12331
/// @DnDArgument : "steps" "360"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 360);