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

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 4936B785
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "room_height - 54"
/// @DnDArgument : "sprite" "spr_player_life"
/// @DnDSaveInfo : "sprite" "spr_player_life"
var l4936B785_0 = sprite_get_width(spr_player_life);
var l4936B785_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l4936B785_2 = __dnd_lives; l4936B785_2 > 0; --l4936B785_2) {
	draw_sprite(spr_player_life, 0, 30 + l4936B785_1, room_height - 54);
	l4936B785_1 += l4936B785_0;
}