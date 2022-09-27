/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 5B863F1F
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1134A634
/// @DnDArgument : "speed" "MSPEED"
speed = MSPEED;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 2234F2D9
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 749551D9
/// @DnDInput : 2
/// @DnDArgument : "var" "rotation_way_ufo"
/// @DnDArgument : "option" "2"
/// @DnDArgument : "option_1" "-2"
rotation_way_ufo = choose(2, -2);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 060B3F50
/// @DnDArgument : "health" "100"

__dnd_health = real(100);