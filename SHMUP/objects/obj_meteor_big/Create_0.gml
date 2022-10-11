/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 030044D9
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "MSPEED"
MSPEED = 3;

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
/// @DnDHash : 050AF1E8
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 6E3107DC
/// @DnDInput : 4
/// @DnDArgument : "var" "sens_rotation"
/// @DnDArgument : "option" "2"
/// @DnDArgument : "option_1" "-2"
/// @DnDArgument : "option_2" "4"
/// @DnDArgument : "option_3" "-4"
sens_rotation = choose(2, -2, 4, -4);