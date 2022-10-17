/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 032510EF
/// @DnDArgument : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
/// @DnDSaveInfo : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
var l032510EF_0 = Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_;
if (audio_is_playing(l032510EF_0))
{
	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 158EB600
	/// @DnDParent : 032510EF
	/// @DnDArgument : "sound" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	/// @DnDSaveInfo : "sound" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
	audio_pause_sound(Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 494CB89D
/// @DnDArgument : "soundid" "Game_Over_Sound_Effect"
/// @DnDSaveInfo : "soundid" "Game_Over_Sound_Effect"
audio_play_sound(Game_Over_Sound_Effect, 0, 0, 1.0, undefined, 1.0);