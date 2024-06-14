as yet unclassified
optionClicked: anOption
	
	| selectedOptions |
	
	self isSelectionAllowed ifFalse: [ ^self ].
	anOption isChosen
		ifTrue: [ anOption isChosen: false. ]
		ifFalse: [ self allowsMultipleAnswers ifFalse: [ options do: [ :option | option isChosen: false ]].
			anOption isChosen: true. ].
	selectedOptions := (options select: [ :option | option isChosen ]) collect: [ :option | option ordinal ].
	self core send: (TCCRequest newSetPollAnswer: self chatId message: self id options: selectedOptions).
	self triggerEvent: #pollUpdated.