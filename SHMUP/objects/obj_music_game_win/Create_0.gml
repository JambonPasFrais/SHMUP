/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 42379F5B
/// @DnDArgument : "soundid" "Game_Music_1"
/// @DnDSaveInfo : "soundid" "Game_Music_1"
var l42379F5B_0 = Game_Music_1;
if (audio_is_playing(l42379F5B_0))
{
	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5AF6B23E
	/// @DnDParent : 42379F5B
	/// @DnDArgument : "sound" "Game_Music_1"
	/// @DnDSaveInfo : "sound" "Game_Music_1"
	audio_pause_sound(Game_Music_1);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 494CB89D
/// @DnDArgument : "soundid" "Sound_effect___Win"
/// @DnDSaveInfo : "soundid" "Sound_effect___Win"
audio_play_sound(Sound_effect___Win, 0, 0, 1.0, undefined, 1.0);