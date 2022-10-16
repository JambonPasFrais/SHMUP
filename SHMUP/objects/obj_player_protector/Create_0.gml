/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 33B2C583
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 4669ACF6
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EDF38D6
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "PSPEED"
PSPEED = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 379C8B66
/// @DnDArgument : "expr" "45"
/// @DnDArgument : "var" "reload_time"
reload_time = 45;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23008404
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_invulnerability"
bool_invulnerability = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E846F87
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_double_shoot"
bool_double_shoot = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75C6AFF5
/// @DnDInput : 4
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "300"
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "var_1" "bool_power_used"
/// @DnDArgument : "var_2" "bool_allow_ship_change"
/// @DnDArgument : "var_3" "ship_change_delay"
bool_fire_allowed = true;
bool_power_used = false;
bool_allow_ship_change = false;
ship_change_delay = 300;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6C4E38F6
/// @DnDArgument : "obj" "obj_power_usableness"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_power_usableness"
var l6C4E38F6_0 = false;
l6C4E38F6_0 = instance_exists(obj_power_usableness);
if(!l6C4E38F6_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 04C4277C
	/// @DnDParent : 6C4E38F6
	/// @DnDArgument : "xpos" "room_width - spr_power_usableness.sprite_width - 10"
	/// @DnDArgument : "ypos" "room_height - spr_power_usableness.sprite_height - 10"
	/// @DnDArgument : "objectid" "obj_power_usableness"
	/// @DnDSaveInfo : "objectid" "obj_power_usableness"
	instance_create_layer(room_width - spr_power_usableness.sprite_width - 10, room_height - spr_power_usableness.sprite_height - 10, "Instances", obj_power_usableness);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7CEE7CF4
/// @DnDArgument : "obj" "obj_ship_changeableness"
/// @DnDSaveInfo : "obj" "obj_ship_changeableness"
var l7CEE7CF4_0 = false;
l7CEE7CF4_0 = instance_exists(obj_ship_changeableness);
if(l7CEE7CF4_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D3C8F29
	/// @DnDApplyTo : {obj_ship_changeableness}
	/// @DnDParent : 7CEE7CF4
	with(obj_ship_changeableness) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7CF66432
/// @DnDArgument : "steps" "ship_change_delay"
/// @DnDArgument : "alarm" "9"
alarm_set(9, ship_change_delay);