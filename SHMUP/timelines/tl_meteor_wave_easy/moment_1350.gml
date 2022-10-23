/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6043BFA1
/// @DnDArgument : "var" "number_of_enemy "
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "7"
number_of_enemy  = floor(random_range(1, 7 + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 36C7801A
/// @DnDArgument : "cond" "i < number_of_enemy"
for(i = 0; i < number_of_enemy; i += 1) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3308504C
	/// @DnDParent : 36C7801A
	/// @DnDArgument : "var" "xpos_meteor"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "room_width - 100"
	xpos_meteor = floor(random_range(100, room_width - 100 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0EED74F4
	/// @DnDParent : 36C7801A
	/// @DnDArgument : "var" "ypos_meteor"
	/// @DnDArgument : "max" "50"
	ypos_meteor = (random_range(0, 50));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 708DD9B4
	/// @DnDParent : 36C7801A
	/// @DnDArgument : "xpos" "xpos_meteor"
	/// @DnDArgument : "ypos" "ypos_meteor"
	/// @DnDArgument : "objectid" "obj_meteor_big"
	/// @DnDSaveInfo : "objectid" "obj_meteor_big"
	instance_create_layer(xpos_meteor, ypos_meteor, "Instances", obj_meteor_big);
}