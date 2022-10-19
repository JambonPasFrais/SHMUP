/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 5837AA98
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "room_height - 54"
/// @DnDArgument : "sprite" "spr_player_protector_life"
/// @DnDSaveInfo : "sprite" "spr_player_protector_life"
with(obj_game_manager) {
var l5837AA98_0 = sprite_get_width(spr_player_protector_life);
var l5837AA98_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l5837AA98_2 = __dnd_lives; l5837AA98_2 > 0; --l5837AA98_2) {
	draw_sprite(spr_player_protector_life, 0, 30 + l5837AA98_1, room_height - 54);
	l5837AA98_1 += l5837AA98_0;
}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 00C1AC79
/// @DnDArgument : "x1" "-45"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "80"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "45"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "90"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00FF33"
/// @DnDArgument : "maxcol" "$FF0000FF"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -45, y + 80, x + 45, y + 90, __dnd_health, $FF000000, $FF00FF33 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));