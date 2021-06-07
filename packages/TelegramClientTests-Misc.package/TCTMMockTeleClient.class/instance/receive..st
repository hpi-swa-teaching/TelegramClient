library calls
receive: aTimeoutNumber

	^ self responseQueue
		ifEmpty: [nil]
		ifNotEmpty: [self responseQueue removeFirst]