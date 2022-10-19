/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2980CD39
/// @DnDArgument : "soundid" "Laser_SE_Simple"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Laser_SE_Simple"
var l2980CD39_0 = Laser_SE_Simple;
if (!audio_is_playing(l2980CD39_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 048B3147
	/// @DnDParent : 2980CD39
	instance_destroy();
}