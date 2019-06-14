as yet unclassified
initialize
	client := TDJSONClient new.
	ui := ToolBuilder open: TelUI new.
	ui model backend: self.
	[[client isDestroyed] whileFalse: [self update. Processor yield]] fork.