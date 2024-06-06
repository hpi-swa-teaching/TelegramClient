as yet unclassified
selectOption: anOption
	
	| selectedOptions |
	
	self isSelectionAllowed ifFalse: [ ^self ].
	self allowsMultipleAnswers ifFalse: [ options do: [ :option | option isChosen: false ]].
	anOption isChosen: true.
	selectedOptions := (options select: [ :option | option isChosen ]) collect: [ :option | option ordinal ].
	self core send: (TCCRequest newSetPollAnswer: self chatId message: self id options: selectedOptions).
	self triggerEvent: #pollUpdated.