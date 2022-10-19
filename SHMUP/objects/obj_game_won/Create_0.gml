/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 635A4C45
/// @DnDArgument : "expr" "false "
/// @DnDArgument : "var" "bool_goto_menu"
bool_goto_menu = false ;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E913588
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_music_game_win"
/// @DnDSaveInfo : "objectid" "obj_music_game_win"
instance_create_layer(x + 0, y + 0, "Instances", obj_music_game_win);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6CB79E20
/// @DnDArgument : "steps" "180"
alarm_set(0, 180);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 052A4B60

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CC41A11
/// @DnDArgument : "var" "variable_global_exists("player_score") "
/// @DnDArgument : "value" "1"
if(variable_global_exists("player_score")  == 1)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 23738E3D
	/// @DnDParent : 4CC41A11
	/// @DnDArgument : "score" "global.player_score     "
	
	__dnd_score = real(global.player_score     );
}