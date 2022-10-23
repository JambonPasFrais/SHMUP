/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 648C88B0
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0DE39657
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "score" "100"
/// @DnDArgument : "score_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(100);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BDEB8F6
/// @DnDArgument : "objectid" "obj_music_powerup"
/// @DnDSaveInfo : "objectid" "obj_music_powerup"
instance_create_layer(0, 0, "Instances", obj_music_powerup);