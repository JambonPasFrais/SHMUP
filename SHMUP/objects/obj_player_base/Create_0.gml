/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 191006DA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 261F0E09
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 464496E0
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "PSPEED"
PSPEED = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02BB1018
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "var" "reload_time"
reload_time = 15;

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
/// @DnDInput : 2
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "bool_fire_allowed"
/// @DnDArgument : "var_1" "bool_power_used"
bool_fire_allowed = true;
bool_power_used = false;