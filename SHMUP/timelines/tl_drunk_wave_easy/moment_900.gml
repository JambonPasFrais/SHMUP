/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 59326577
/// @DnDArgument : "init" "i = -1"
/// @DnDArgument : "cond" "i < 2"
/// @DnDArgument : "expr" "i += 2"
for(i = -1; i < 2; i += 2) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22993CD8
	/// @DnDParent : 59326577
	/// @DnDArgument : "xpos" "room_width / 2 + 400 * i"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "objectid" "obj_enemy_drunk"
	/// @DnDSaveInfo : "objectid" "obj_enemy_drunk"
	instance_create_layer(room_width / 2 + 400 * i, 50, "Instances", obj_enemy_drunk);
}