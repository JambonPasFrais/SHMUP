/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28A0F7C6
/// @DnDArgument : "var" "bool_power_used"
/// @DnDArgument : "value" "false"
if(bool_power_used == false)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 011A66E9
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_power_use"
	/// @DnDSaveInfo : "objectid" "obj_power_use"
	instance_create_layer(x + 0, y + 0, "Instances", obj_power_use);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5CAD6B9E
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "colour" "$FF00FFFF"
	image_blend = $FF00FFFF & $ffffff;
	image_alpha = ($FF00FFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6AF8D9EB
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "xscale" "0.5"
	/// @DnDArgument : "yscale" "0.5"
	image_xscale = 0.5;
	image_yscale = 0.5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 541BD93A
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "var" "PSPEED"
	PSPEED = 15;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6829AEC5
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_power_used"
	bool_power_used = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A6B32FC
	/// @DnDApplyTo : {obj_power_usableness}
	/// @DnDParent : 28A0F7C6
	with(obj_power_usableness) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3F58D4AB
	/// @DnDParent : 28A0F7C6
	/// @DnDArgument : "steps" "360"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 360);
}