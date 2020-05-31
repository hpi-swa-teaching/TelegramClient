initialization
showWelcomeMessage

	self inputField isNil ifFalse: [self inputField delete].
	self buttonVerify isNil ifFalse: [self buttonVerify delete].
	self buttonNext isNil ifFalse: [self buttonNext delete].
	self instructionLabel contents: 'Welcome' asText.
	