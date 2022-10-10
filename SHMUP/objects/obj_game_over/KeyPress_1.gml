/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30BF60B2
/// @DnDArgument : "var" "bool_goto_menu"
/// @DnDArgument : "value" "true"
if(bool_goto_menu == true)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 14E4B682
	/// @DnDParent : 30BF60B2
	/// @DnDArgument : "room" "menu"
	/// @DnDSaveInfo : "room" "menu"
	room_goto(menu);
}