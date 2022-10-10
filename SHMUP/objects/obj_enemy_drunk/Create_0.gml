/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 12259153
/// @DnDArgument : "macro" "SPEED_DRUNK_ENEMY"
/// @DnDArgument : "value" "6"
#macro SPEED_DRUNK_ENEMY 6

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5197C7A9
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "ENEMY_SCORE"
ENEMY_SCORE = 50;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6C4B842B
/// @DnDArgument : "lives" "2"

__dnd_lives = real(2);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 4EC7EBFE
/// @DnDArgument : "path" "Path_Drunk"
/// @DnDArgument : "speed" "SPEED_DRUNK_ENEMY"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDSaveInfo : "path" "Path_Drunk"
path_start(Path_Drunk, SPEED_DRUNK_ENEMY, path_action_reverse, false);