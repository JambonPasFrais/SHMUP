/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7D8BB4FC
/// @DnDArgument : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_"
var l7D8BB4FC_0 = Thunder_Cross_2_UST__10_Dog_Fight_III__Stage_4_;
if (!audio_is_playing(l7D8BB4FC_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 197EFF9A
	/// @DnDParent : 7D8BB4FC
	instance_destroy();
}