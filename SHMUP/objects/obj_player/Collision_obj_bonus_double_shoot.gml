/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59C984E4
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "bool_double_shoot"
bool_double_shoot = true;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2589213F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 41824564
/// @DnDArgument : "steps" "360"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 360);