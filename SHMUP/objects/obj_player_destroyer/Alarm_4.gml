/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29B9339E
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_power_used"
bool_power_used = false;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 33D2709C
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0386D7B9
/// @DnDArgument : "xpos" "room_width - spr_power_usableness.sprite_width - 10"
/// @DnDArgument : "ypos" "room_height - spr_power_usableness.sprite_height - 10"
/// @DnDArgument : "objectid" "obj_power_usableness"
/// @DnDSaveInfo : "objectid" "obj_power_usableness"
instance_create_layer(room_width - spr_power_usableness.sprite_width - 10, room_height - spr_power_usableness.sprite_height - 10, "Instances", obj_power_usableness);