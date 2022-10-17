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

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 6405942C

__dnd_health = real(0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75C6AFF5
/// @DnDInput : 9
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "300"
/// @DnDArgument : "expr_4" "10"
/// @DnDArgument : "expr_5" "6"
/// @DnDArgument : "expr_6" "45"
/// @DnDArgument : "expr_7" "false"
/// @DnDArgument : "expr_8" "false"
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "var_1" "bool_power_used"
/// @DnDArgument : "var_2" "bool_allow_ship_change"
/// @DnDArgument : "var_3" "ship_change_delay"
/// @DnDArgument : "var_4" "overheating_ratio"
/// @DnDArgument : "var_5" "PSPEED"
/// @DnDArgument : "var_6" "reload_time"
/// @DnDArgument : "var_7" "bool_invulnerability"
/// @DnDArgument : "var_8" "bool_double_shoot"
bool_fire_allowed = true;
bool_power_used = false;
bool_allow_ship_change = false;
ship_change_delay = 300;
overheating_ratio = 10;
PSPEED = 6;
reload_time = 45;
bool_invulnerability = false;
bool_double_shoot = false;

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
	/// @DnDArgument : "xpos" "room_width - 30"
	/// @DnDArgument : "ypos" "room_height - 30"
	/// @DnDArgument : "objectid" "obj_power_usableness"
	/// @DnDSaveInfo : "objectid" "obj_power_usableness"
	instance_create_layer(room_width - 30, room_height - 30, "Instances", obj_power_usableness);
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