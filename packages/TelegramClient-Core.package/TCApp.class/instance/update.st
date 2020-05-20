as yet unclassified
update

	| event |
	
	event := self client receive: 0.05 .
	event isNil ifFalse: [self handleEvent: event].
