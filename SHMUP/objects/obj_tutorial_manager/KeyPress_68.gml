/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 10176842
/// @DnDArgument : "xpos" "random(room_width - spr_enemy_drunk ) + spr_enemy_drunk"
/// @DnDArgument : "ypos" "spr_enemy_drunk"
/// @DnDArgument : "objectid" "obj_enemy_drunk"
/// @DnDSaveInfo : "objectid" "obj_enemy_drunk"
instance_create_layer(random(room_width - spr_enemy_drunk ) + spr_enemy_drunk, spr_enemy_drunk, "Instances", obj_enemy_drunk);