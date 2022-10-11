/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20D0BB44
/// @DnDArgument : "expr" "PSPEED"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += PSPEED;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 577A8681
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height - (sprite_height / 2)"
if(y > room_height - (sprite_height / 2))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7269BA4B
	/// @DnDParent : 577A8681
	/// @DnDArgument : "expr" "room_height - (sprite_height / 2)"
	/// @DnDArgument : "var" "y"
	y = room_height - (sprite_height / 2);
}