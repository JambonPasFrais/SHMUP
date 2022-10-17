/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 4BF8C105
/// @DnDArgument : "init" "i = -1"
/// @DnDArgument : "cond" "i < 2"
/// @DnDArgument : "expr" "i += 2 "
for(i = -1; i < 2; i += 2 ) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0308D1A5
	/// @DnDParent : 4BF8C105
	/// @DnDArgument : "xpos" "room_width / 2 + 200 * i"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "objectid" "obj_enemy_kevin"
	/// @DnDSaveInfo : "objectid" "obj_enemy_kevin"
	instance_create_layer(room_width / 2 + 200 * i, 50, "Instances", obj_enemy_kevin);
}