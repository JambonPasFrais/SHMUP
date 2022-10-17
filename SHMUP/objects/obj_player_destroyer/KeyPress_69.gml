/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42274572
/// @DnDArgument : "var" "bool_allow_ship_change"
/// @DnDArgument : "value" "true"
if(bool_allow_ship_change == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D1D5A08
	/// @DnDParent : 42274572
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_ship_change"
	/// @DnDSaveInfo : "objectid" "obj_ship_change"
	instance_create_layer(x + 0, y + 0, "Instances", obj_ship_change);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6B6A2ADB
	/// @DnDParent : 42274572
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_protector"
	/// @DnDSaveInfo : "objectid" "obj_player_protector"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_protector);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7699E413
	/// @DnDApplyTo : {obj_shield}
	/// @DnDParent : 42274572
	with(obj_shield) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CF384D0
	/// @DnDParent : 42274572
	instance_destroy();
}