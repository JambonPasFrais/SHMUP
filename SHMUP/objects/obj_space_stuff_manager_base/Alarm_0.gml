/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 13EB9DE3
/// @DnDArgument : "var" "number_of_enemy "
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "spawn_amout_max"
number_of_enemy  = floor(random_range(0, spawn_amout_max + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1BA54C7B
/// @DnDArgument : "cond" "i < number_of_enemy"
for(i = 0; i < number_of_enemy; i += 1) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0ECCA097
	/// @DnDParent : 1BA54C7B
	/// @DnDArgument : "var" "xpos_meteor"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "room_width - 100"
	xpos_meteor = floor(random_range(100, room_width - 100 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 072587D0
	/// @DnDParent : 1BA54C7B
	/// @DnDArgument : "var" "ypos_meteor"
	/// @DnDArgument : "max" "50"
	ypos_meteor = (random_range(0, 50));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5BD79BBE
	/// @DnDParent : 1BA54C7B
	/// @DnDArgument : "xpos" "xpos_meteor"
	/// @DnDArgument : "ypos" "ypos_meteor"
	/// @DnDArgument : "objectid" "obj_meteor_big"
	/// @DnDSaveInfo : "objectid" "obj_meteor_big"
	instance_create_layer(xpos_meteor, ypos_meteor, "Instances", obj_meteor_big);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 73BC981E
/// @DnDArgument : "steps" "spawning_delay "
alarm_set(0, spawning_delay );