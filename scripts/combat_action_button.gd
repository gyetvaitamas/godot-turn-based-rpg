class_name CombatActionButton
extends Button

var combat_action : CombatAction

func set_combat_action(ca : CombatAction):
	combat_action = ca
	text = ca.display_name
