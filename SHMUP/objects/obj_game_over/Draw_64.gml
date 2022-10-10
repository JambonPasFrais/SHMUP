/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6C6B79DF
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5C694FEA
/// @DnDArgument : "font" "ft_score"
/// @DnDSaveInfo : "font" "ft_score"
draw_set_font(ft_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 7A491796
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height / 2 + 100"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(room_width / 2, room_height / 2 + 100, string("Score: ") + string(__dnd_score));