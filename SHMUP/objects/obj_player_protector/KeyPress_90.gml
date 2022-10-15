/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22866497
/// @DnDArgument : "var" "bool_power_used"
/// @DnDArgument : "value" "false"
if(bool_power_used == false)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 72CBDD3F
	/// @DnDParent : 22866497
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07F70E05
	/// @DnDParent : 22866497
	/// @DnDArgument : "objectid" "obj_wall"
	/// @DnDSaveInfo : "objectid" "obj_wall"
	instance_create_layer(0, 0, "Instances", obj_wall);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 428D9CFE
	/// @DnDParent : 22866497
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_power_used"
	bool_power_used = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 341DA97E
	/// @DnDApplyTo : {obj_power_usableness}
	/// @DnDParent : 22866497
	with(obj_power_usableness) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4B998BAD
	/// @DnDParent : 22866497
	/// @DnDArgument : "steps" "360"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 360);
}