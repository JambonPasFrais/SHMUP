/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3442225A
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 62FF04D9
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "7"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l62FF04D9_0 = __dnd_lives < 7;
}
if(l62FF04D9_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 34CED90F
	/// @DnDParent : 62FF04D9
	/// @DnDArgument : "objectid" "obj_music_powerup"
	/// @DnDSaveInfo : "objectid" "obj_music_powerup"
	instance_create_layer(0, 0, "Instances", obj_music_powerup);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 690B6BBC
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 62FF04D9
	/// @DnDArgument : "lives" "1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(1);
	}
}