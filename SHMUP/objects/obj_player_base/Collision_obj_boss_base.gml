/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 4E97C48B
/// @DnDApplyTo : {obj_game_manager}
with(obj_game_manager) {

__dnd_lives = real(0);
}

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 0A007368
/// @DnDArgument : "room" "game_over"
/// @DnDSaveInfo : "room" "game_over"
room_goto(game_over);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 49A13870
instance_destroy();