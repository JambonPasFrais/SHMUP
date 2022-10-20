/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 414BD933
/// @DnDArgument : "soundid" "Overheat_Sound"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Overheat_Sound"
var l414BD933_0 = Overheat_Sound;
if (!audio_is_playing(l414BD933_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0A273E89
	/// @DnDParent : 414BD933
	instance_destroy();
}