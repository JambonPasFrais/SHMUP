/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 648C88B0
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0DE39657
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "100"
/// @DnDArgument : "score_relative" "1"
with(obj_player_base) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(100);
}