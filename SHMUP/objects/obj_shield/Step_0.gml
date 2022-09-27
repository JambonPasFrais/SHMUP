/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38431E0E
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.x"
/// @DnDArgument : "expr_1" "obj_player.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = obj_player.x;
y = obj_player.y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01C9C260
/// @DnDArgument : "var" "bool_end_shield"
/// @DnDArgument : "value" "true"
if(bool_end_shield == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 2A4F859E
	/// @DnDParent : 01C9C260
	/// @DnDArgument : "xscale" "-0.01"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.01"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.01;
	image_yscale += -0.01;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 68D6168A
	/// @DnDParent : 01C9C260
	/// @DnDArgument : "alpha" "-0.01"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -0.01;
}