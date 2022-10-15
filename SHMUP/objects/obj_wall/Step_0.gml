/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41F32E1C
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player_protector.x"
/// @DnDArgument : "expr_1" "obj_player_protector.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = obj_player_protector.x;
y = obj_player_protector.y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DB71061
/// @DnDArgument : "var" "bool_end_wall"
/// @DnDArgument : "value" "true"
if(bool_end_wall == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0FE3C793
	/// @DnDParent : 2DB71061
	/// @DnDArgument : "alpha" "-0.01"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -0.01;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 37AF026A
	/// @DnDParent : 2DB71061
	/// @DnDArgument : "xscale" "-0.05"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.05"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.05;
	image_yscale += -0.05;
}