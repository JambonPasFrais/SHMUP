/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6FF34F6F
draw_set_colour($FFFFFFFF & $ffffff);
var l6FF34F6F_0=($FFFFFFFF >> 24);
draw_set_alpha(l6FF34F6F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C968E64
/// @DnDArgument : "x" "-115 "
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Press T to Start Tutorial""
draw_text(x + -115 , y + 50, string("Press T to Start Tutorial") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 066BAD33
/// @DnDArgument : "x" "-130"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Press Enter to Start Level 1""
draw_text(x + -130, y + 75, string("Press Enter to Start Level 1") + "");