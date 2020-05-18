initialize-release
receiveLoop

	[true] whileTrue: [
		self update.
		Processor yield].