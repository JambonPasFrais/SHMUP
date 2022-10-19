/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 032510EF
/// @DnDArgument : "soundid" "Game_Music_1"
/// @DnDSaveInfo : "soundid" "Game_Music_1"
var l032510EF_0 = Game_Music_1;
if (audio_is_playing(l032510EF_0))
{
	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 158EB600
	/// @DnDParent : 032510EF
	/// @DnDArgument : "sound" "Game_Music_1"
	/// @DnDSaveInfo : "sound" "Game_Music_1"
	audio_pause_sound(Game_Music_1);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 494CB89D
/// @DnDArgument : "soundid" "Game_Over_Sound_Effect"
/// @DnDSaveInfo : "soundid" "Game_Over_Sound_Effect"
audio_play_sound(Game_Over_Sound_Effect, 0, 0, 1.0, undefined, 1.0);