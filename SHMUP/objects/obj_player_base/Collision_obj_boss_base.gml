/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 4E97C48B
/// @DnDApplyTo : {obj_game_manager}
with(obj_game_manager) {

__dnd_lives = real(0);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C3EEE1E
/// @DnDArgument : "objectid" "obj_music_explosion_big"
/// @DnDSaveInfo : "objectid" "obj_music_explosion_big"
instance_create_layer(0, 0, "Instances", obj_music_explosion_big);

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