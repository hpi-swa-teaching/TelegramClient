as yet unclassified
updateSelection
	
	pollOption isChosen ifTrue: [selectionMorph color: Color black.]
		ifFalse: [selectionMorph color: pollMessage messageColor.].