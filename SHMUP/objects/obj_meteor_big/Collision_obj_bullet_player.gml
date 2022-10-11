/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C254BC8
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 25032B3D
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 73E42BAE
/// @DnDArgument : "score" "40"
/// @DnDArgument : "score_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(40);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 30B174A4
/// @DnDArgument : "var" "random_bonus"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
random_bonus = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 580AE3CB
/// @DnDArgument : "var" "random_bonus"
/// @DnDArgument : "value" "1"
if(random_bonus == 1)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 29AE3CC5
	/// @DnDParent : 580AE3CB
	/// @DnDArgument : "var" "my_bonus"
	/// @DnDArgument : "option" "obj_bonus_generic"
	my_bonus = choose(obj_bonus_generic);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 41EA7613
	/// @DnDParent : 580AE3CB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "my_bonus"
	instance_create_layer(x + 0, y + 0, "Instances", my_bonus);
}