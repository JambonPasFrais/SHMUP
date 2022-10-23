/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 695003AB
/// @DnDArgument : "expr" " bool_hud_visible"
if( bool_hud_visible)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A02F8C7
	/// @DnDParent : 695003AB
	/// @DnDArgument : "expr" "false "
	/// @DnDArgument : "var" " bool_hud_visible"
	 bool_hud_visible = false ;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1766505E
	/// @DnDApplyTo : {obj_command_ship}
	/// @DnDParent : 695003AB
	with(obj_command_ship) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36369AAB
	/// @DnDApplyTo : {obj_command_test}
	/// @DnDParent : 695003AB
	with(obj_command_test) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4AB8414A
	/// @DnDApplyTo : {obj_life_indicator}
	/// @DnDParent : 695003AB
	with(obj_life_indicator) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0915486F
	/// @DnDApplyTo : {obj_power_indicator}
	/// @DnDParent : 695003AB
	with(obj_power_indicator) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 381A051A
	/// @DnDApplyTo : {obj_tutorial_indicator}
	/// @DnDParent : 695003AB
	with(obj_tutorial_indicator) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 10AFCA2E
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 29892AEE
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "xpos" "960"
	/// @DnDArgument : "ypos" "96"
	/// @DnDArgument : "objectid" "obj_tutorial_indicator"
	/// @DnDSaveInfo : "objectid" "obj_tutorial_indicator"
	instance_create_layer(960, 96, "Instances", obj_tutorial_indicator);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C872467
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "xpos" "96"
	/// @DnDArgument : "ypos" "416"
	/// @DnDArgument : "objectid" "obj_command_ship"
	/// @DnDSaveInfo : "objectid" "obj_command_ship"
	instance_create_layer(96, 416, "Instances", obj_command_ship);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38D63F78
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "xpos" "192"
	/// @DnDArgument : "ypos" "896"
	/// @DnDArgument : "objectid" "obj_life_indicator"
	/// @DnDSaveInfo : "objectid" "obj_life_indicator"
	instance_create_layer(192, 896, "Instances", obj_life_indicator);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2C622876
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "xpos" "1440"
	/// @DnDArgument : "ypos" "960"
	/// @DnDArgument : "objectid" "obj_power_indicator"
	/// @DnDSaveInfo : "objectid" "obj_power_indicator"
	instance_create_layer(1440, 960, "Instances", obj_power_indicator);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19AB046E
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "xpos" "1760"
	/// @DnDArgument : "ypos" "384"
	/// @DnDArgument : "objectid" "obj_command_test"
	/// @DnDSaveInfo : "objectid" "obj_command_test"
	instance_create_layer(1760, 384, "Instances", obj_command_test);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7611E6DC
	/// @DnDParent : 10AFCA2E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" " bool_hud_visible"
	 bool_hud_visible = true;
}