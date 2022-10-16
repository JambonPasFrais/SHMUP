/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7ADBB6ED
/// @DnDApplyTo : {obj_player_base}
/// @DnDArgument : "score" "50"
with(obj_player_base) {

__dnd_score = real(50);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 164AB7F5
instance_destroy();