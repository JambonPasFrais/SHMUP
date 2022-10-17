/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5C694FEA
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 532915C5
draw_set_colour($FFFFFFFF & $ffffff);
var l532915C5_0=($FFFFFFFF >> 24);
draw_set_alpha(l532915C5_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 7A491796
/// @DnDArgument : "x" "-45"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(x + -45, y + 25, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D709EDB
/// @DnDArgument : "var" "bool_goto_menu"
/// @DnDArgument : "value" "true"
if(bool_goto_menu == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3DCD9F6A
	/// @DnDParent : 0D709EDB
	/// @DnDArgument : "x" "-120"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Press any key to go to menu""
	draw_text(x + -120, y + 50, string("Press any key to go to menu") + "");
}