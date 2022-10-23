/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4D557F9D
/// @DnDArgument : "var" "number_of_enemy "
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "7"
number_of_enemy  = floor(random_range(1, 7 + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 2DC44E01
/// @DnDArgument : "cond" "i < number_of_enemy"
for(i = 0; i < number_of_enemy; i += 1) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 32B5F118
	/// @DnDParent : 2DC44E01
	/// @DnDArgument : "var" "xpos_meteor"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "room_width - 100"
	xpos_meteor = floor(random_range(100, room_width - 100 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 094F3A16
	/// @DnDParent : 2DC44E01
	/// @DnDArgument : "var" "ypos_meteor"
	/// @DnDArgument : "max" "50"
	ypos_meteor = (random_range(0, 50));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 50B63D20
	/// @DnDParent : 2DC44E01
	/// @DnDArgument : "xpos" "xpos_meteor"
	/// @DnDArgument : "ypos" "ypos_meteor"
	/// @DnDArgument : "objectid" "obj_meteor_big"
	/// @DnDSaveInfo : "objectid" "obj_meteor_big"
	instance_create_layer(xpos_meteor, ypos_meteor, "Instances", obj_meteor_big);
}