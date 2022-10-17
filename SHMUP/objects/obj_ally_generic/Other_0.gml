/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 38FB49D9
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "lives" "3"
/// @DnDArgument : "lives_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(3);
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7ADBB6ED
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "score" "1000 "
/// @DnDArgument : "score_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(1000 );
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 164AB7F5
instance_destroy();