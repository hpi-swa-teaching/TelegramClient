events
receiveLoop

	[self isClientAlive] whileTrue: [
		self update.
		"FFI freezes the image. Give it time to do something else."
		10 milliSeconds wait.
		Processor yield].
