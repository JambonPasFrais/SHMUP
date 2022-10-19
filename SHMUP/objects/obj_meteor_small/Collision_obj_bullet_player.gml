/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 69E6ECAC
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_destruction"
/// @DnDSaveInfo : "objectid" "obj_destruction"
instance_create_layer(x + 0, y + 0, "Instances", obj_destruction);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 123E08D5
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0C0864DD
/// @DnDArgument : "var" "random_value"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
random_value = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B100B2
/// @DnDArgument : "var" "random_value"
/// @DnDArgument : "value" "5"
if(random_value == 5)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7E3CA3FD
	/// @DnDInput : 2
	/// @DnDParent : 28B100B2
	/// @DnDArgument : "var" "obj_bonus_to_create"
	/// @DnDArgument : "option" "obj_bonus_life"
	/// @DnDArgument : "option_1" "obj_bonus_score"
	obj_bonus_to_create = choose(obj_bonus_life, obj_bonus_score);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A9C0141
	/// @DnDParent : 28B100B2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bonus_to_create"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bonus_to_create);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5266E93E
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 666B54D8
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 458615C3
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "score" "40"
/// @DnDArgument : "score_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(40);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 51852883
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_music_explosion"
/// @DnDSaveInfo : "objectid" "obj_music_explosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion);