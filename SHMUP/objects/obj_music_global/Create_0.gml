/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 032510EF
/// @DnDArgument : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
var l032510EF_0 = Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_;
if (!audio_is_playing(l032510EF_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 44438EFB
	/// @DnDParent : 032510EF
	/// @DnDArgument : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	audio_play_sound(Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_, 0, 1, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Paused
/// @DnDVersion : 1
/// @DnDHash : 0531A31A
/// @DnDArgument : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
/// @DnDSaveInfo : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
var l0531A31A_0 = Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_;
if (audio_is_paused(l0531A31A_0))
{
	/// @DnDAction : YoYo Games.Audio.Resume_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 780A200B
	/// @DnDParent : 0531A31A
	/// @DnDArgument : "sound" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	/// @DnDSaveInfo : "sound" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	audio_resume_sound(Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_);
}