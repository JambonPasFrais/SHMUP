/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 37FCD586
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < 100)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 02632866
	/// @DnDParent : 37FCD586
	/// @DnDArgument : "x1" "-45"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "55"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "45"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "65"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF33"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(x + -45, y + 55, x + 45, y + 65, __dnd_health, $FF000000, $FF0000FF & $FFFFFF, $FF00FF33 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));
}