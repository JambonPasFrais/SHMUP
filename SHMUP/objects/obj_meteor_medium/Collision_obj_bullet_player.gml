/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 130D2A73
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "40"
/// @DnDArgument : "score_relative" "1"
with(obj_player_base) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(40);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3D5761E4
/// @DnDArgument : "var" "random_debris_generated"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
random_debris_generated = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 72A77FEE
/// @DnDArgument : "cond" "i <= random_debris_generated"
for(i = 0; i <= random_debris_generated; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2ABC617B
	/// @DnDParent : 72A77FEE
	/// @DnDArgument : "xpos" "random_range(-100, 100)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "random_range(-50, 50)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_meteor_small"
	/// @DnDSaveInfo : "objectid" "obj_meteor_small"
	instance_create_layer(x + random_range(-100, 100), y + random_range(-50, 50), "Instances", obj_meteor_small);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5220218C
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 781E4E93
/// @DnDApplyTo : other
with(other) instance_destroy();