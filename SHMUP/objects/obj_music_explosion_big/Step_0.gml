/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7D8BB4FC
/// @DnDArgument : "soundid" "Big_Explosion_Sound_Effect"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Big_Explosion_Sound_Effect"
var l7D8BB4FC_0 = Big_Explosion_Sound_Effect;
if (!audio_is_playing(l7D8BB4FC_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 197EFF9A
	/// @DnDParent : 7D8BB4FC
	instance_destroy();
}