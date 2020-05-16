as yet unclassified
initialize

	| event |
	
	[true] whileTrue: [
		event := self client receive: 10.
		self handleEvent: event].