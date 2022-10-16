/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0AE1B64A
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "MSPEED"
MSPEED = 5;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 79896ED7
/// @DnDArgument : "direction" "225,270,315"
direction = choose(225,270,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1C2C300B
/// @DnDArgument : "speed" "MSPEED"
speed = MSPEED;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 6EE2D219
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 039E2A9E
/// @DnDInput : 4
/// @DnDArgument : "var" "rotation"
/// @DnDArgument : "option" "4"
/// @DnDArgument : "option_1" "-4"
/// @DnDArgument : "option_2" "6"
/// @DnDArgument : "option_3" "-6"
rotation = choose(4, -4, 6, -6);