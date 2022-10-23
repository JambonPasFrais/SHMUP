/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 10176842
/// @DnDArgument : "xpos" "random(room_width - spr_enemy_kevin ) + spr_enemy_kevin"
/// @DnDArgument : "ypos" "spr_enemy_kevin + 20"
/// @DnDArgument : "objectid" "obj_enemy_kevin"
/// @DnDSaveInfo : "objectid" "obj_enemy_kevin"
instance_create_layer(random(room_width - spr_enemy_kevin ) + spr_enemy_kevin, spr_enemy_kevin + 20, "Instances", obj_enemy_kevin);