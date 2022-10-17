/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23609D85
/// @DnDArgument : "var" "bool_invulnerability"
/// @DnDArgument : "value" "false"
if(bool_invulnerability == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 44B415FB
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 23609D85
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2D87C937
	/// @DnDParent : 23609D85
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EE2E343
	/// @DnDParent : 23609D85
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invulnerability"
	bool_invulnerability = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 440D3A90
	/// @DnDParent : 23609D85
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 14464BC8
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 23609D85
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l14464BC8_0 = __dnd_lives < 1;
	}
	if(l14464BC8_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3690ECA4
		/// @DnDParent : 14464BC8
		/// @DnDArgument : "room" "game_over"
		/// @DnDSaveInfo : "room" "game_over"
		room_goto(game_over);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 465F46F6
/// @DnDApplyTo : other
with(other) instance_destroy();