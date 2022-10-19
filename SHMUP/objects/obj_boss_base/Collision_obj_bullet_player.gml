/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 32C19044
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "score" "30"
/// @DnDArgument : "score_relative" "1"
with(obj_game_manager) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(30);
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7FB54E7E
/// @DnDArgument : "health" "-20"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-20);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C0A935F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6D342DE3
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0582A57E
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 7734905A
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3F4D0C62
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 7734905A
	/// @DnDArgument : "score" "200"
	/// @DnDArgument : "score_relative" "1"
	with(obj_game_manager) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(200);
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E0F2F81
	/// @DnDParent : 7734905A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_destruction"
	/// @DnDSaveInfo : "objectid" "obj_destruction"
	instance_create_layer(x + 0, y + 0, "Instances", obj_destruction);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 102CEAD8
	/// @DnDParent : 7734905A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_explosion_big"
	/// @DnDSaveInfo : "objectid" "obj_music_explosion_big"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion_big);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35FFDF15
	/// @DnDParent : 7734905A
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4A265653
	/// @DnDParent : 7734905A
	/// @DnDArgument : "obj" "obj_boss_base"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_boss_base"
	var l4A265653_0 = false;
	l4A265653_0 = instance_exists(obj_boss_base);
	if(!l4A265653_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 65C9C994
		/// @DnDParent : 4A265653
		/// @DnDArgument : "room" "game_win"
		/// @DnDSaveInfo : "room" "game_win"
		room_goto(game_win);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C7C9026
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FE46B62
	/// @DnDParent : 7C7C9026
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_music_explosion"
	/// @DnDSaveInfo : "objectid" "obj_music_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_music_explosion);
}