receiving
receiveLoop

	[self isClientAlive] whileTrue: [
		self update.
		Processor yield].