/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 653B9FDD
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BC098B7
/// @DnDInput : 2
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "expr_1" "30"
/// @DnDArgument : "var" "boss_speed"
/// @DnDArgument : "var_1" "reload_time"
boss_speed = 5;
reload_time = 30;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 106ED517
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 00C181C5
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2A72C159
/// @DnDArgument : "steps" "reload_time"
/// @DnDArgument : "alarm" "1"
alarm_set(1, reload_time);