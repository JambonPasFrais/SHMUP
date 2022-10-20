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

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61C710F6
	/// @DnDParent : 23609D85
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_taking_damage"
	/// @DnDSaveInfo : "objectid" "obj_music_taking_damage"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_taking_damage);

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
	/// @DnDHash : 59391236
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 23609D85
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l59391236_0 = __dnd_lives < 1;
	}
	if(l59391236_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 52D9A2BD
		/// @DnDParent : 59391236
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_music_explosion_big"
		/// @DnDSaveInfo : "objectid" "obj_music_explosion_big"
		instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion_big);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2D102584
		/// @DnDParent : 59391236
		/// @DnDArgument : "room" "game_over"
		/// @DnDSaveInfo : "room" "game_over"
		room_goto(game_over);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 451159D7
	/// @DnDParent : 23609D85
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 53A8852E
		/// @DnDParent : 451159D7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_music_taking_damage"
		/// @DnDSaveInfo : "objectid" "obj_music_taking_damage"
		instance_create_layer(x + 0, y + 0, "Instances", obj_music_taking_damage);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 465F46F6
/// @DnDApplyTo : other
with(other) instance_destroy();