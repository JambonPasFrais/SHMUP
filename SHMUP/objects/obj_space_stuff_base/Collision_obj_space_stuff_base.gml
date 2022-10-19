/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 7166B7EA
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 168DE9D6
/// @DnDArgument : "var" "random_value"
random_value = (random_range(0, 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1097F6A8
/// @DnDArgument : "var" "random_value"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "0.90"
if(random_value <= 0.90)
{
	/// @DnDAction : YoYo Games.Movement.Reverse
	/// @DnDVersion : 1
	/// @DnDHash : 25C1F93A
	/// @DnDParent : 1097F6A8
	/// @DnDArgument : "dir" "2"
	vspeed = -vspeed;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 603721DC
	/// @DnDParent : 1097F6A8
	/// @DnDArgument : "speed" "-0.1"
	/// @DnDArgument : "speed_relative" "1"
	speed += -0.1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6DC2F95A
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07BF17C9
	/// @DnDParent : 6DC2F95A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_destruction_meteor_self"
	/// @DnDSaveInfo : "objectid" "obj_destruction_meteor_self"
	instance_create_layer(x + 0, y + 0, "Instances", obj_destruction_meteor_self);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CAC1029
	/// @DnDParent : 6DC2F95A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_explosion"
	/// @DnDSaveInfo : "objectid" "obj_music_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A20E697
	/// @DnDParent : 6DC2F95A
	instance_destroy();
}