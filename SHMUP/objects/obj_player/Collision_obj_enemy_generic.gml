/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1FF8399F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 150DE671
/// @DnDArgument : "var" "bool_invulnerability"
/// @DnDArgument : "value" "false"
if(bool_invulnerability == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 712568AD
	/// @DnDParent : 150DE671
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 07871715
	/// @DnDParent : 150DE671
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 150B6BAC
	/// @DnDParent : 150DE671
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invulnerability"
	bool_invulnerability = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0BC15B1E
	/// @DnDParent : 150DE671
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 113368BE
	/// @DnDParent : 150DE671
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives < 1)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 039C4BC0
		/// @DnDParent : 113368BE
		/// @DnDArgument : "room" "game_over"
		/// @DnDSaveInfo : "room" "game_over"
		room_goto(game_over);
	}
}