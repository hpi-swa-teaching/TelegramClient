as yet unclassified
initialize

	| event |
	[true] whileTrue: [
		event := self client receive: 1.	
		event isNil ifFalse: [self handleEvent: event].
		Processor yield].
