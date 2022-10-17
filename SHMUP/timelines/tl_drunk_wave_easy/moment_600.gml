/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 040E0A53
/// @DnDArgument : "init" "i = -1"
/// @DnDArgument : "cond" "i < 2"
/// @DnDArgument : "expr" "i += 2"
for(i = -1; i < 2; i += 2) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 63E2BD14
	/// @DnDParent : 040E0A53
	/// @DnDArgument : "xpos" "room_width / 2 + 300 * i"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "objectid" "obj_enemy_drunk"
	/// @DnDSaveInfo : "objectid" "obj_enemy_drunk"
	instance_create_layer(room_width / 2 + 300 * i, 50, "Instances", obj_enemy_drunk);
}