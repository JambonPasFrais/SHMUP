/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 1A89C967
/// @DnDArgument : "soundid" "Taking_Damage_SE"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Taking_Damage_SE"
var l1A89C967_0 = Taking_Damage_SE;
if (!audio_is_playing(l1A89C967_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A494D9C
	/// @DnDParent : 1A89C967
	instance_destroy();
}