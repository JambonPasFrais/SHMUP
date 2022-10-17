/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29B9339E
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_power_used"
bool_power_used = false;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5B94F6B1
/// @DnDArgument : "xpos" "room_width - 30"
/// @DnDArgument : "ypos" "room_height -30"
/// @DnDArgument : "objectid" "obj_power_usableness"
/// @DnDSaveInfo : "objectid" "obj_power_usableness"
instance_create_layer(room_width - 30, room_height -30, "Instances", obj_power_usableness);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 33D2709C
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;