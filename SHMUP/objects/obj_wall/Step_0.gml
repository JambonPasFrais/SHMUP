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
}