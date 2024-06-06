as yet unclassified
updateSelection
	
	pollOption isChosen ifTrue: [circleMorph color: Color black.]
		ifFalse: [circleMorph color: pollMessage messageColor.].