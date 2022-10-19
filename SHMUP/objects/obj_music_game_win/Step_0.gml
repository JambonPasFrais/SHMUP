/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7D8BB4FC
/// @DnDArgument : "soundid" "Sound_effect___Win"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Sound_effect___Win"
var l7D8BB4FC_0 = Sound_effect___Win;
if (!audio_is_playing(l7D8BB4FC_0))
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Paused
	/// @DnDVersion : 1
	/// @DnDHash : 519CF7AA
	/// @DnDParent : 7D8BB4FC
	/// @DnDArgument : "soundid" "Game_Music_1"
	/// @DnDSaveInfo : "soundid" "Game_Music_1"
	var l519CF7AA_0 = Game_Music_1;
	if (audio_is_paused(l519CF7AA_0))
	{
		/// @DnDAction : YoYo Games.Audio.Resume_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1B2C3358
		/// @DnDParent : 519CF7AA
		/// @DnDArgument : "sound" "Game_Music_1"
		/// @DnDSaveInfo : "sound" "Game_Music_1"
		audio_resume_sound(Game_Music_1);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 197EFF9A
	/// @DnDParent : 7D8BB4FC
	instance_destroy();
}