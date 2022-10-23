/// @DnDAction : YoYo Games.Timelines.Set_Timeline_State
/// @DnDVersion : 1
/// @DnDHash : 65C9783A
/// @DnDArgument : "state" "3"
timeline_running = false;
timeline_position = 0;

/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 2230836B
/// @DnDArgument : "timeline" "tl_meteor_wave_easy"
/// @DnDSaveInfo : "timeline" "tl_meteor_wave_easy"
timeline_index = tl_meteor_wave_easy;
timeline_loop = 0;
timeline_running = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3613C752
/// @DnDArgument : "steps" "2000"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 2000);