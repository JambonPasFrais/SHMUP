/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28061675
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "value" "true"
if(bool_fire_allowed == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69D52EC2
	/// @DnDParent : 28061675
	/// @DnDArgument : "xpos" "-30"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDSaveInfo : "objectid" "obj_bullet_player"
	instance_create_layer(x + -30, y + 0, "Instances", obj_bullet_player);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E997922
	/// @DnDParent : 28061675
	/// @DnDArgument : "xpos" "30"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDSaveInfo : "objectid" "obj_bullet_player"
	instance_create_layer(x + 30, y + 0, "Instances", obj_bullet_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40BFCD0E
	/// @DnDParent : 28061675
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "bool_fire_allowed"
	bool_fire_allowed = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6D1FBB67
	/// @DnDParent : 28061675
	/// @DnDArgument : "steps" "reload_time"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, reload_time);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3767CBD1
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3FDE0DB9
	/// @DnDParent : 3767CBD1
	/// @DnDArgument : "colour" "$FF00FF43"
	image_blend = $FF00FF43 & $ffffff;
	image_alpha = ($FF00FF43 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 43D85781
	/// @DnDParent : 3767CBD1
	/// @DnDArgument : "steps" "reload_time"
	alarm_set(0, reload_time);
}