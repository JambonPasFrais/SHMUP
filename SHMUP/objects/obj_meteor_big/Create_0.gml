/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 2730E031
/// @DnDArgument : "macro" "MSPEED"
/// @DnDArgument : "value" "3"
#macro MSPEED 3

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 616D3C70
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 440BE4B5
/// @DnDArgument : "speed" "MSPEED"
speed = MSPEED;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 02B68670
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1834A307
/// @DnDInput : 2
/// @DnDArgument : "var" "sens_rotation"
/// @DnDArgument : "option" "-2"
/// @DnDArgument : "option_1" "2"
sens_rotation = choose(-2, 2);