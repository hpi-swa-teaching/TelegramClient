as yet unclassified
receive: aTimeoutNumber

	^ responseQueue
		ifEmpty: [nil]
		ifNotEmpty: [self responseQueue removeFirst] 