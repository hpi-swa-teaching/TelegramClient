as yet unclassified
isSelectionAllowed

	^ (self isClosed or: ((self pollType = 'pollTypeQuiz') and: self hasVoted)) not