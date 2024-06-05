as yet unclassified
addPollOption: anOption
	
	^(TCUPollOption new: self with: anOption)
		"updateText: anOption;"
		selected: false.