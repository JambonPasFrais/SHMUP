/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 04C4A78F
/// @DnDArgument : "macro" "SPEED_ZIGZAG_ENEMY"
/// @DnDArgument : "value" "9"
#macro SPEED_ZIGZAG_ENEMY 9

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29B3989F
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "ENEMY_SCORE"
ENEMY_SCORE = 20;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 13E837BB
/// @DnDArgument : "lives" "2"

__dnd_lives = real(2);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 1CECF270
/// @DnDArgument : "path" "Path_Zigzag"
/// @DnDArgument : "speed" "SPEED_DRUNK_ENEMY"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "Path_Zigzag"
path_start(Path_Zigzag, SPEED_DRUNK_ENEMY, path_action_continue, true);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C01ED35
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);