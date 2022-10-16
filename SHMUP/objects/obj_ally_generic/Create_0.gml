/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 79A241F3
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35686C72
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "SPEED_ALLY"
SPEED_ALLY = 5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 351A005B
/// @DnDArgument : "speed" "SPEED_ALLY"
speed = SPEED_ALLY;

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 355440C5
/// @DnDArgument : "path" "Path_Ally"
/// @DnDArgument : "speed" "SPEED_ALLY"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDSaveInfo : "path" "Path_Ally"
path_start(Path_Ally, SPEED_ALLY, path_action_continue, false);