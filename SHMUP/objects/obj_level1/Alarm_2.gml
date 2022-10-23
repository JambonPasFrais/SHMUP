/// @DnDAction : YoYo Games.Timelines.Set_Timeline_State
/// @DnDVersion : 1
/// @DnDHash : 65C9783A
/// @DnDArgument : "state" "3"
timeline_running = false;
timeline_position = 0;

/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 2230836B
/// @DnDArgument : "timeline" "tl_protect_wave_easy"
/// @DnDSaveInfo : "timeline" "tl_protect_wave_easy"
timeline_index = tl_protect_wave_easy;
timeline_loop = 0;
timeline_running = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4C3F54D6
/// @DnDArgument : "steps" "1500"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 1500);