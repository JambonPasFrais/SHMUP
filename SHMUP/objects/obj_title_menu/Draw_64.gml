/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6FF34F6F
draw_set_colour($FFFFFFFF & $ffffff);
var l6FF34F6F_0=($FFFFFFFF >> 24);
draw_set_alpha(l6FF34F6F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C968E64
/// @DnDArgument : "x" "-75"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Press Enter to Start""
draw_text(x + -75, y + 50, string("Press Enter to Start") + "");