as yet unclassified
initialize
	self initializeAuthStateHandler.
	self initializeMessageHandlers.
	listener := Dictionary new.
	client := TDJSONClient new.
	ui := ToolBuilder open: (TelegramUI newWithBackend: self).
	[[client isDestroyed] whileFalse: [self update. Processor yield]] fork.