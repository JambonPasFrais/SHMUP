/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 638C1136
/// @DnDArgument : "var" "meteor_speed"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "2"
/// @DnDArgument : "max" "8"
meteor_speed = floor(random_range(2, 8 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 030044D9
/// @DnDArgument : "expr" "meteor_speed / 2"
/// @DnDArgument : "var" "MSPEED"
MSPEED = meteor_speed / 2;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 64F1D20A
/// @DnDArgument : "direction" "270"
direction = choose(270);

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
/// @DnDInput : 6
/// @DnDArgument : "var" "rotation"
/// @DnDArgument : "option" "2"
/// @DnDArgument : "option_1" "-2"
/// @DnDArgument : "option_2" "4"
/// @DnDArgument : "option_3" "-4"
/// @DnDArgument : "option_4" "6"
/// @DnDArgument : "option_5" "-6"
rotation = choose(2, -2, 4, -4, 6, -6);