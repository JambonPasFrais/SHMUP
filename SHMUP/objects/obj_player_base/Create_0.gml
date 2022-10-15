/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 191006DA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 261F0E09
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65024AEA
/// @DnDInput : 7
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "15"
/// @DnDArgument : "expr_4" "8"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_6" "300"
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "var_1" "bool_power_used"
/// @DnDArgument : "var_2" "bool_invulnerability"
/// @DnDArgument : "var_3" "reload_time"
/// @DnDArgument : "var_4" "PSPEED"
/// @DnDArgument : "var_5" "bool_allow_ship_change"
/// @DnDArgument : "var_6" "ship_change_delay"
bool_fire_allowed = true;
bool_power_used = false;
bool_invulnerability = false;
reload_time = 15;
PSPEED = 8;
bool_allow_ship_change = false;
ship_change_delay = 300;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1C731914
/// @DnDArgument : "obj" "obj_power_usableness"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_power_usableness"
var l1C731914_0 = false;
l1C731914_0 = instance_exists(obj_power_usableness);
if(!l1C731914_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B261FB6
	/// @DnDParent : 1C731914
	/// @DnDArgument : "xpos" "room_width - spr_power_usableness.sprite_width - 10"
	/// @DnDArgument : "ypos" "room_height - spr_power_usableness.sprite_height - 10"
	/// @DnDArgument : "objectid" "obj_power_usableness"
	/// @DnDSaveInfo : "objectid" "obj_power_usableness"
	instance_create_layer(room_width - spr_power_usableness.sprite_width - 10, room_height - spr_power_usableness.sprite_height - 10, "Instances", obj_power_usableness);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 41139073
/// @DnDArgument : "obj" "obj_ship_changeableness"
/// @DnDSaveInfo : "obj" "obj_ship_changeableness"
var l41139073_0 = false;
l41139073_0 = instance_exists(obj_ship_changeableness);
if(l41139073_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 046781D2
	/// @DnDApplyTo : {obj_ship_changeableness}
	/// @DnDParent : 41139073
	with(obj_ship_changeableness) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2CF7E700
/// @DnDArgument : "steps" "ship_change_delay"
/// @DnDArgument : "alarm" "9"
alarm_set(9, ship_change_delay);