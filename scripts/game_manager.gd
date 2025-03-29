extends Node

var score = 0
@onready var scoreLabel: Label = $"Score"

func add_score():
	score +=1 
	scoreLabel.text = "Score: " + str(score)
