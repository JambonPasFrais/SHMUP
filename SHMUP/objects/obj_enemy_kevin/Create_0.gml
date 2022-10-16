/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 026D67A9
/// @DnDArgument : "macro" "SPEED_KEVIN_ENEMY"
/// @DnDArgument : "value" "2"
#macro SPEED_KEVIN_ENEMY 2

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 4B8DC4C8
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 2B7CA489
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4EE03436
/// @DnDArgument : "speed" "SPEED_KEVIN_ENEMY"
speed = SPEED_KEVIN_ENEMY;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 148AAF1C
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "40"
/// @DnDArgument : "var" "state_kevin"
/// @DnDArgument : "var_1" "ENEMY_SCORE"
state_kevin = 0;
ENEMY_SCORE = 40;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 63A69680
/// @DnDArgument : "steps" "90"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 90);