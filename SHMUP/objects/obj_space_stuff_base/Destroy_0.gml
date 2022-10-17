/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 5255A0ED
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "score" "1"
/// @DnDArgument : "score_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(1);
}