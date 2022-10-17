/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7778B64D
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_player_base) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 22EA7CE4
/// @DnDArgument : "var" "random_debris_generated"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
random_debris_generated = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 7C93A027
/// @DnDArgument : "cond" "i <= random_debris_generated"
for(i = 0; i <= random_debris_generated; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 104D70A0
	/// @DnDParent : 7C93A027
	/// @DnDArgument : "xpos" "random_range(-100, 100)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "random_range(-50, 50)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_meteor_medium"
	/// @DnDSaveInfo : "objectid" "obj_meteor_medium"
	instance_create_layer(x + random_range(-100, 100), y + random_range(-50, 50), "Instances", obj_meteor_medium);
}