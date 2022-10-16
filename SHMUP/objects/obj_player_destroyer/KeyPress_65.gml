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

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7409D10C
	/// @DnDParent : 39875510
	/// @DnDArgument : "health" "overheating_ratio"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(overheating_ratio);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 6B24CB4C
	/// @DnDParent : 39875510
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health >= 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 183D9414
		/// @DnDParent : 6B24CB4C
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "bool_fire_allowed"
		bool_fire_allowed = false;
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3B91710A
		/// @DnDParent : 6B24CB4C
		/// @DnDArgument : "colour" "$FF1180FF"
		image_blend = $FF1180FF & $ffffff;
		image_alpha = ($FF1180FF >> 24) / $ff;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0290A478
	/// @DnDParent : 39875510
	/// @DnDArgument : "steps_relative" "1"
	/// @DnDArgument : "alarm" "8"
	alarm_set(8, 30 + alarm_get(8));
}