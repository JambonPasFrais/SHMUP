/// @DnDAction : YoYo Games.Timelines.Set_Timeline_State
/// @DnDVersion : 1
/// @DnDHash : 5E9DBEE4
/// @DnDArgument : "state" "3"
timeline_running = false;
timeline_position = 0;

/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 1B179335
/// @DnDArgument : "timeline" "tl_kevin_wave_easy"
/// @DnDSaveInfo : "timeline" "tl_kevin_wave_easy"
timeline_index = tl_kevin_wave_easy;
timeline_loop = 0;
timeline_running = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3828339E
/// @DnDArgument : "steps" "1000"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1000);