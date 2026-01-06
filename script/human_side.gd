extends Control

signal class_selected(sub_race: String)

@onready var class_description: TextEdit = $VBoxContainer/ClassDescription

var classes_description = {
	1: ["Guerreiro:
Mesmo caindo você sempre levanta pronto pra luta, lutando bravamente em guerra,
tanto como espada quanto como escudo, liderando a linha de frente das batalha, 
como guerreiro nato, seu foco é a luta corpo a corpo, tanto suportando golpes inimigos,
quanto os espancando.

Habilidade de guerreiro:
"],
	2: ["Feiticeiro:
Usando toda a sua mente pra controlar seu NENia, você é capaz de conjurar e manipular 
poderosas magias, mudando completamente o campo de batalha a seu favor mesmo,
sem nem chegar perto dos inimigos.

Habilidade de feiticeiro:
"],
3: ["Arqueiro:
Com uma pontaria perfeita, uma destreza incrivel, e uma habilidade sensacional,
usando apenas flechas e projeteis, você é capaz de caçar inimigos a enormes distâncias, 
com altissima precisão e beleza.

Habilidade de arqueiro:
"],
4: ["Ladino:
Uma ladrão astuto, um criminoso ligeiro, ou enganador nato, ladinos são preparados pra 
fugir de qualquer situação, e levar umas recompensas de brinde, principalmente por causa
de seus reflexos e seu modo furtivo de ser

Habilidade de ladino:
"],
5: ["Samurai:
Com uma boa espada afiada, cada golpe pode ser fatal, esfaqueando os alvos, 
um a um, sua fora excepcional garante que o inimigo não consiga levantar do chão depois 
de um simples golpe, com altissima habilidade em batalha mano a mano.

Habilidade de samurai:
"],
6: ["Clerigo:
Sua fé pode mover montanhas, você encontrou sua força nos deuses, e usa sua fé para
combater o inimigos, tanto pedindo ajuda de bons espiritos, quanto do mais malefico deles,
esses espiritos podem te trazer consequências,  mas com fé tudo é possivel.

Habilidade de clerigo:
"],
7: ["Bardo:
Suas belas e doces canções, misturadas com um pouco de poder, podem fazer qualquer coisa,
como abater inimigos, ajudar aliados ou encantar belas donzelas, com seus instrumentos solta sons
capaz de trazer efeitos poderosos a todos que ouvem.

Habilidade de bardo:
"]
}

var choose_classes := ""

func choose_class(type: String):
	emit_signal("class_selected", type)



func _on_warrior_button_pressed() -> void:
	choose_classes = "Warrior"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[1][0]
	choose_class("Warrior")

func _on_warrior_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[1][0]
	
func _on_warrior_button_mouse_exited() -> void:
	if choose_classes != "Warrior":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true
	



func _on_sorcerer_button_pressed() -> void:
	choose_classes = "Sorcerer"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[2][0]
	choose_class("Sorcerer")

func _on_sorcerer_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[2][0]

func _on_sorcerer_button_mouse_exited() -> void:
	if choose_classes != "Sorcerer":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true




func _on_archer_button_pressed() -> void:
	choose_classes = "Archer"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[3][0]
	choose_class("Archer")

func _on_archer_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[3][0]

func _on_archer_button_mouse_exited() -> void:
	if choose_classes != "Archer":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true
	



func _on_rogue_button_pressed() -> void:
	choose_classes = "Rogue"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[4][0]
	choose_class("Rogue")

func _on_rogue_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[4][0]

func _on_rogue_button_mouse_exited() -> void:
	if choose_classes != "Rogue":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true
	



func _on_samurai_button_pressed() -> void:
	choose_classes = "Samurai"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[5][0]
	choose_class("Samurai")

func _on_samurai_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[5][0]

func _on_samurai_button_mouse_exited() -> void:
	if choose_classes != "Samurai":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true
	



func _on_cleric_button_pressed() -> void:
	choose_classes = "Cleric"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[6][0]
	choose_class("Cleric")

func _on_cleric_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[6][0]

func _on_cleric_button_mouse_exited() -> void:
	if choose_classes != "Cleric":
		$VBoxContainer/ClassDescription.visible = false
	else:
		$VBoxContainer/ClassDescription.visible = true
	



func _on_bard_button_pressed() -> void:
	choose_classes = "Bard"
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[7][0]
	choose_class("Bard")

func _on_bard_button_mouse_entered() -> void:
	$VBoxContainer/ClassDescription.visible = true
	$VBoxContainer/ClassDescription.text = classes_description[7][0]

func _on_bard_button_mouse_exited() -> void:
	if choose_classes != "Bard":
		$VBoxContainer/ClassDescription.visible = false
		
