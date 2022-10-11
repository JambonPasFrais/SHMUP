/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39875510
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "value" "true"
if(bool_fire_allowed == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BF8501E
	/// @DnDParent : 39875510
	/// @DnDArgument : "xpos" "15"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDSaveInfo : "objectid" "obj_bullet_player"
	instance_create_layer(x + 15, y + 0, "Instances", obj_bullet_player);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A321E64
	/// @DnDParent : 39875510
	/// @DnDArgument : "xpos" "-15"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDSaveInfo : "objectid" "obj_bullet_player"
	instance_create_layer(x + -15, y + 0, "Instances", obj_bullet_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B2A0E16
	/// @DnDParent : 39875510
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "bool_fire_allowed"
	bool_fire_allowed = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 38545DF7
	/// @DnDParent : 39875510
	/// @DnDArgument : "steps" "reload_time"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, reload_time);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6734882D
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1BFF2852
	/// @DnDParent : 6734882D
	/// @DnDArgument : "colour" "$FF00FF43"
	image_blend = $FF00FF43 & $ffffff;
	image_alpha = ($FF00FF43 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3AD21437
	/// @DnDParent : 6734882D
	/// @DnDArgument : "steps" "reload_time"
	alarm_set(0, reload_time);
}