as yet unclassified
addPollOption: anOption
	
	^(TCUPollOption new: self)
		updateText: anOption text;
		selected: anOption isBeingChosen.