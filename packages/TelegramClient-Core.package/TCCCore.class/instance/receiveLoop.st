events
receiveLoop

	[self isClientAlive] whileTrue: [
		self update.
		"Wait a small amount of time to let other processes run"
		10 milliSeconds wait.
		Processor yield].
