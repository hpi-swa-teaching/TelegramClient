as yet unclassified
initialize

	| event |
	
	[true] whileTrue: [
		event := self client Receive: 10.
		self handleEvent: event].