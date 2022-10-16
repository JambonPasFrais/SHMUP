/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4052B882
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_player_base) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 365405B2
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5BA0B324
/// @DnDArgument : "var" "random_value"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
random_value = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3473D62A
/// @DnDArgument : "var" "random_value"
/// @DnDArgument : "value" "5"
if(random_value == 5)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5C5A0FD8
	/// @DnDInput : 2
	/// @DnDParent : 3473D62A
	/// @DnDArgument : "var" "obj_bonus_to_create"
	/// @DnDArgument : "option" "obj_bonus_life"
	/// @DnDArgument : "option_1" "obj_bonus_score"
	obj_bonus_to_create = choose(obj_bonus_life, obj_bonus_score);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05EF7812
	/// @DnDParent : 3473D62A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bonus_to_create"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bonus_to_create);
}