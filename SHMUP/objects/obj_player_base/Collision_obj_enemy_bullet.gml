/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B103991
/// @DnDArgument : "var" "bool_invulnerability"
/// @DnDArgument : "value" "false"
if(bool_invulnerability == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 501D496B
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 7B103991
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05F0A3B1
	/// @DnDParent : 7B103991
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09A875D1
	/// @DnDParent : 7B103991
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invulnerability"
	bool_invulnerability = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6571941B
	/// @DnDParent : 7B103991
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 26BEDEA2
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 7B103991
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l26BEDEA2_0 = __dnd_lives < 1;
	}
	if(l26BEDEA2_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2BB4B04C
		/// @DnDParent : 26BEDEA2
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_music_explosion_big"
		/// @DnDSaveInfo : "objectid" "obj_music_explosion_big"
		instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion_big);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 690DFCC7
		/// @DnDParent : 26BEDEA2
		/// @DnDArgument : "room" "game_over"
		/// @DnDSaveInfo : "room" "game_over"
		room_goto(game_over);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 26DCEA39
	/// @DnDParent : 7B103991
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B4B46E0
		/// @DnDParent : 26DCEA39
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_music_taking_damage"
		/// @DnDSaveInfo : "objectid" "obj_music_taking_damage"
		instance_create_layer(x + 0, y + 0, "Instances", obj_music_taking_damage);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 368B6D84
/// @DnDApplyTo : other
with(other) instance_destroy();