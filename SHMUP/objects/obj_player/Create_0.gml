/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 191006DA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 3FDC524D
/// @DnDArgument : "macro" "PSPEED"
/// @DnDArgument : "value" "8"
#macro PSPEED 8

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 261F0E09
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D607ACF
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_invulnerability"
bool_invulnerability = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71FF463D
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "bool_double_shoot"
bool_double_shoot = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65024AEA
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "bool_fire_allowed"
bool_fire_allowed = true;