/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0ABDD2FC
/// @DnDArgument : "colour" "$FF7FFFFF"
image_blend = $FF7FFFFF & $ffffff;
image_alpha = ($FF7FFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 130A5E7B
/// @DnDArgument : "steps" "1500"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 1500);