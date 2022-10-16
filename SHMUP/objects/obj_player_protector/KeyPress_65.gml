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

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 16E89277
	/// @DnDParent : 28061675
	/// @DnDArgument : "health" "overheating_ratio"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(overheating_ratio);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 43489F91
	/// @DnDParent : 28061675
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health >= 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 748ADE4D
		/// @DnDParent : 43489F91
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "bool_fire_allowed"
		bool_fire_allowed = false;
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6C9F63CF
		/// @DnDParent : 43489F91
		/// @DnDArgument : "colour" "$FF1180FF"
		image_blend = $FF1180FF & $ffffff;
		image_alpha = ($FF1180FF >> 24) / $ff;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3907F405
	/// @DnDParent : 28061675
	/// @DnDArgument : "steps_relative" "1"
	/// @DnDArgument : "alarm" "8"
	alarm_set(8, 30 + alarm_get(8));
}