/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7716DD3B
/// @DnDArgument : "var" "bool_power_used"
/// @DnDArgument : "value" "false"
if(bool_power_used == false)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2DFF1630
	/// @DnDParent : 7716DD3B
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B42B6AE
	/// @DnDParent : 7716DD3B
	/// @DnDArgument : "objectid" "obj_shield"
	/// @DnDSaveInfo : "objectid" "obj_shield"
	instance_create_layer(0, 0, "Instances", obj_shield);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2130DC3A
	/// @DnDParent : 7716DD3B
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_power_used"
	bool_power_used = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3530A901
	/// @DnDParent : 7716DD3B
	/// @DnDArgument : "steps" "360"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 360);
}