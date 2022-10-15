/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61931AE2
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "bool_allow_ship_change"
bool_allow_ship_change = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0AB33A9C
/// @DnDArgument : "xpos" "room_width - spr_ship_changeableness.sprite_width - spr_power_usableness.sprite_width -15"
/// @DnDArgument : "ypos" "room_height - spr_ship_changeableness.sprite_height - 10"
/// @DnDArgument : "objectid" "obj_ship_changeableness"
/// @DnDSaveInfo : "objectid" "obj_ship_changeableness"
instance_create_layer(room_width - spr_ship_changeableness.sprite_width - spr_power_usableness.sprite_width -15, room_height - spr_ship_changeableness.sprite_height - 10, "Instances", obj_ship_changeableness);