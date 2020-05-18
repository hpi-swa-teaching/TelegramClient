as yet unclassified
initialize

	| event |
	[true] whileTrue: [
		event := self client receive: 1.
		Transcript show: event.
		Processor yield.
		"event isNull ifFalse: [self handleEvent: event]"].