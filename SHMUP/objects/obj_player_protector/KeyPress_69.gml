/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A7C3826
/// @DnDArgument : "var" "bool_allow_ship_change"
/// @DnDArgument : "value" "true"
if(bool_allow_ship_change == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DEA8CE7
	/// @DnDParent : 3A7C3826
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_ship_change"
	/// @DnDSaveInfo : "objectid" "obj_ship_change"
	instance_create_layer(x + 0, y + 0, "Instances", obj_ship_change);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 645B1CC2
	/// @DnDParent : 3A7C3826
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_ship_change"
	/// @DnDSaveInfo : "objectid" "obj_music_ship_change"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_ship_change);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 14A4AF01
	/// @DnDParent : 3A7C3826
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_classic"
	/// @DnDSaveInfo : "objectid" "obj_player_classic"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_classic);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0BCD2B6F
	/// @DnDApplyTo : {obj_wall}
	/// @DnDParent : 3A7C3826
	with(obj_wall) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48689687
	/// @DnDParent : 3A7C3826
	instance_destroy();
}