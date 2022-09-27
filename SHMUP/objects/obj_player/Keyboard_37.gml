/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 439B0E25
/// @DnDArgument : "expr" "-PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += -PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34499913
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "sprite_width / 2"
if(x < sprite_width / 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BF5B34C
	/// @DnDParent : 34499913
	/// @DnDArgument : "expr" "sprite_width / 2"
	/// @DnDArgument : "var" "x"
	x = sprite_width / 2;
}