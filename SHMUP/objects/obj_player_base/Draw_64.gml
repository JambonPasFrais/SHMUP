/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 4936B785
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "room_height - 54"
/// @DnDArgument : "sprite" "spr_player_classic_life"
/// @DnDSaveInfo : "sprite" "spr_player_classic_life"
with(obj_game_manager) {
var l4936B785_0 = sprite_get_width(spr_player_classic_life);
var l4936B785_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l4936B785_2 = __dnd_lives; l4936B785_2 > 0; --l4936B785_2) {
	draw_sprite(spr_player_classic_life, 0, 30 + l4936B785_1, room_height - 54);
	l4936B785_1 += l4936B785_0;
}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 0413F3A0
/// @DnDArgument : "x1" "-45"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "55"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "45"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "65"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00FF33"
/// @DnDArgument : "maxcol" "$FF0000FF"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -45, y + 55, x + 45, y + 65, __dnd_health, $FF000000, $FF00FF33 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));