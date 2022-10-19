/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16B3F23F
/// @DnDArgument : "var" "bool_allow_ship_change"
/// @DnDArgument : "value" "true"
if(bool_allow_ship_change == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1203DFFF
	/// @DnDParent : 16B3F23F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_ship_change"
	/// @DnDSaveInfo : "objectid" "obj_ship_change"
	instance_create_layer(x + 0, y + 0, "Instances", obj_ship_change);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6756B7EC
	/// @DnDParent : 16B3F23F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_ship_change"
	/// @DnDSaveInfo : "objectid" "obj_music_ship_change"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_ship_change);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 294FBB32
	/// @DnDParent : 16B3F23F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_destroyer"
	/// @DnDSaveInfo : "objectid" "obj_player_destroyer"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_destroyer);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24F28FEA
	/// @DnDParent : 16B3F23F
	instance_destroy();
}