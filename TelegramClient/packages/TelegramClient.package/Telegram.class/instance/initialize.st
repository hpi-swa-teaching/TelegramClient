as yet unclassified
initialize
	self initializeAuthStateHandler.
	self initializeMessageHandlers.
	listener := Dictionary new.
	client := TDJSONClient new.
	uiObject:= TelegramUI newWithBackend: self.
	ui := ToolBuilder open: uiObject.
	[[client isDestroyed] whileFalse: [self update. Processor yield]] fork.