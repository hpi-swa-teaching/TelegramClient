accessing
receiveLoop

	[self isClientAlive] whileTrue: [
		0.1 seconds wait.
		self update.
		Processor yield].