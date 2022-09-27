/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 7FB05E50
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives >= 3)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 16D91CD0
	/// @DnDApplyTo : other
	/// @DnDParent : 7FB05E50
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	with(other) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var l16D91CD0_0 = __dnd_health >= 100;
	}
	if(l16D91CD0_0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4A6F7B52
		/// @DnDParent : 16D91CD0
		/// @DnDArgument : "score" "200"
		/// @DnDArgument : "score_relative" "1"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(200);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 65587E50
	/// @DnDParent : 7FB05E50
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 50D101BD
		/// @DnDParent : 65587E50
		/// @DnDArgument : "score" "50"
		/// @DnDArgument : "score_relative" "1"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(50);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 580DAF19
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 0B238FA8
	/// @DnDParent : 580DAF19
	/// @DnDArgument : "lives" "1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54660EA1
/// @DnDApplyTo : other
with(other) instance_destroy();