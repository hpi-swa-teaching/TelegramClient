as yet unclassified
addPollOption: anOption
	
	^(TCUPollOption new: self)
		updateText: anOption;
		selected: true.