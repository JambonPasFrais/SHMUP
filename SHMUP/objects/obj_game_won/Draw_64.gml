/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5C694FEA
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 028C530E
/// @DnDArgument : "color" "$FF00FF00"
draw_set_colour($FF00FF00 & $ffffff);
var l028C530E_0=($FF00FF00 >> 24);
draw_set_alpha(l028C530E_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 7A491796
/// @DnDArgument : "x" "-45"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "y_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(x + -45, y + 20, string("Score: ") + string(__dnd_score));

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
	/// @DnDArgument : "y" "45"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Press any key to go to menu""
	draw_text(x + -120, y + 45, string("Press any key to go to menu") + "");
}