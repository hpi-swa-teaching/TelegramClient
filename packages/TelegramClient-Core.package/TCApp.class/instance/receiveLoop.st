as yet unclassified
receiveLoop

	[self isClientAlive] whileTrue: [
		self update.
		Processor yield].