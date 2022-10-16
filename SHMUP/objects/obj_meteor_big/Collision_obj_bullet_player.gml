/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4CBE8FE8
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "40"
/// @DnDArgument : "score_relative" "1"
with(obj_player_base) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(40);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 44C2CC0C
/// @DnDArgument : "var" "random_debris_generated"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
random_debris_generated = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1B876915
/// @DnDArgument : "cond" "i <= random_debris_generated"
for(i = 0; i <= random_debris_generated; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5649A540
	/// @DnDParent : 1B876915
	/// @DnDArgument : "xpos" "random_range(-100, 100)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "random_range(-50, 50)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_meteor_medium"
	/// @DnDSaveInfo : "objectid" "obj_meteor_medium"
	instance_create_layer(x + random_range(-100, 100), y + random_range(-50, 50), "Instances", obj_meteor_medium);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 12908455
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 370BE581
/// @DnDApplyTo : other
with(other) instance_destroy();