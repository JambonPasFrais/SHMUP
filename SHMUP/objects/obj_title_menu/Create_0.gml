/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1D0FC803
/// @DnDArgument : "obj" "obj_music_global"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_music_global"
var l1D0FC803_0 = false;
l1D0FC803_0 = instance_exists(obj_music_global);
if(!l1D0FC803_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 12B1BD62
	/// @DnDParent : 1D0FC803
	/// @DnDArgument : "objectid" "obj_music_global"
	/// @DnDSaveInfo : "objectid" "obj_music_global"
	instance_create_layer(0, 0, "Instances", obj_music_global);
}