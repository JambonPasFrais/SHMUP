/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D842453
/// @DnDArgument : "expr" "7"
/// @DnDArgument : "var" "MSPEED"
MSPEED = 7;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 542F191A
/// @DnDArgument : "direction" "225,270,315"
direction = choose(225,270,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 50686FA6
/// @DnDArgument : "speed" "MSPEED"
speed = MSPEED;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 5D5A7825
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0E95427B
/// @DnDInput : 6
/// @DnDArgument : "var" "rotation"
/// @DnDArgument : "option" "6"
/// @DnDArgument : "option_1" "-6"
/// @DnDArgument : "option_2" "8"
/// @DnDArgument : "option_3" "-8"
/// @DnDArgument : "option_4" "10"
/// @DnDArgument : "option_5" "-10"
rotation = choose(6, -6, 8, -8, 10, -10);