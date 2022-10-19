/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 032510EF
/// @DnDArgument : "soundid" "Game_Music_1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Game_Music_1"
var l032510EF_0 = Game_Music_1;
if (!audio_is_playing(l032510EF_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 44438EFB
	/// @DnDParent : 032510EF
	/// @DnDArgument : "soundid" "Game_Music_1"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "Game_Music_1"
	audio_play_sound(Game_Music_1, 0, 1, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Paused
/// @DnDVersion : 1
/// @DnDHash : 0531A31A
/// @DnDArgument : "soundid" "Game_Music_1"
/// @DnDSaveInfo : "soundid" "Game_Music_1"
var l0531A31A_0 = Game_Music_1;
if (audio_is_paused(l0531A31A_0))
{
	/// @DnDAction : YoYo Games.Audio.Resume_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 780A200B
	/// @DnDParent : 0531A31A
	/// @DnDArgument : "sound" "Game_Music_1"
	/// @DnDSaveInfo : "sound" "Game_Music_1"
	audio_resume_sound(Game_Music_1);
}