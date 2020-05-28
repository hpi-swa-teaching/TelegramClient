initialization
showWelcomeMessage

	inputField isNil ifFalse: [self inputField delete].
	buttonVerify isNil ifFalse: [self buttonVerify delete].
	buttonNext isNil ifFalse: [self buttonNext delete].
	self instructionLabel contents: 'Welcome' asText.
	