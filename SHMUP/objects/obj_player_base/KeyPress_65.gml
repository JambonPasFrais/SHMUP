/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 083060D3
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "value" "true"
if(bool_fire_allowed == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05E04C3C
	/// @DnDParent : 083060D3
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDSaveInfo : "objectid" "obj_bullet_player"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B3E026D
	/// @DnDParent : 083060D3
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "bool_fire_allowed"
	bool_fire_allowed = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 336C62D1
	/// @DnDParent : 083060D3
	/// @DnDArgument : "steps" "reload_time"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, reload_time);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 70D4A989
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 572EA68E
	/// @DnDParent : 70D4A989
	/// @DnDArgument : "colour" "$FF00FF43"
	image_blend = $FF00FF43 & $ffffff;
	image_alpha = ($FF00FF43 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 39BE19C1
	/// @DnDParent : 70D4A989
	/// @DnDArgument : "steps" "reload_time"
	alarm_set(0, reload_time);
}