events
receiveLoop

	[self isClientAlive] whileTrue: [
		self update.
		10 milliSeconds wait.
		Processor yield].