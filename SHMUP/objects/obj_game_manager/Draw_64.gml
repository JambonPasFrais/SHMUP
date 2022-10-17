/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1BE52E83
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2AEE2F6A
/// @DnDArgument : "color" "$FFFFFF00"
draw_set_colour($FFFFFF00 & $ffffff);
var l2AEE2F6A_0=($FFFFFF00 >> 24);
draw_set_alpha(l2AEE2F6A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 2C321E87
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "30"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(30, 30, string("Score: ") + string(__dnd_score));